Friends = new Meteor.Collection('Friends');

if (Meteor.isClient) {

    Template.dwf_content.namelist = function () {
        return Friends.find();
    };

    Template.dwf_content.events({
        'keydown #name': function (e) {
            if ( e.which == 13 ) {
                Friends.insert({ name : e.target.value });
                e.target.value = "";
            }
        },
    });
}
