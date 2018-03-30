## Analysing Data

I am in Berlin for two weeks already and I'm starting to slowly get into
some kind of a routine. I haven't decided yet, whether that is good or bad
though. So for now, let's just assume, that this is how things are and it is a
good thing :P

---

### 15.01.18/16.01.18
Monday started off with quite a few things happening. I met Polina and Erik -
two of my co-workers - for the first time. Also Carmen, who I mentioned last
week already, came by to say goodbye as she left Germany again. Work-wise I did
my first pull-request to the Repository hosting the code of the
[PMPC-Website](https://git.fsfe.org/pmpc/website). But besides that, I basically
continued where I left off on Friday: *Promotional Orders*...

In the evening though, I made some really cool meal! It started out as
[Shakshuka](https://en.wikipedia.org/wiki/Shakshouka). My result was similar,
but not quite what it should have been. Regardless, it tasted **very** well and
spicy. I can only recommend you to try it some time.

![Shakshuka](./img/shakshuka_small.png)

On Tuesday, I started off with preparing a
[Merchandise Order](https://fsfe.org/order/order.html) to be send out. This did
not only include the somewhat dull job of actually packaging the order as I did
with the promotional material, but also some paper work - What a change!

But as with any work of that kind, representation is an essential and important
part of our work, so I do it as strictly as possible.
Because of the paper work, there is a precisely planned out process of packaging
and sending merchandise. Usually, the internal wiki should cover this, so new
staff and interns know, how to deal with this. However, for some reason the
article for this was messed up and missing some crucial parts. So part of my job
was updating and enhancing the wiki article - which I did.

Afterwards, we had a lengthy staff meeting where some internals were discussed
and lunch afterwards. The exciting part started now, however. I had a
call from Max, who works on a bunch of campaigns for the FSFE including
[Public Money? Public Code!](http://publiccode.eu) and the
[I Love Free Software Day](http://ilovefs.org). Together we did some
brainstorming for the later, to make this year's occasion interesting. Me being
somewhat of a data-freak ended up suggesting to collect participation data,
which could also be re-done every year to compare. Max also suggested a very
interesting data analysis task for the [PMPC](http://publiccode.eu) campaign,
which requires me to find a way of scraping huge amounts of data from PDF files.
This is a new field for me, as in economics you often deal with financial data
being present as predefined and well documented datasets. During my Bachelor's
thesis I wrote a Web-Scraper for collecting data from several sources, including
fairly unstructured HTML-sites. So I did have **some** experience in a way. I
was confident that I could find a way.

I started the PDF-scraper the same day and after hours of fiddling with that
inconsistent mess calling itself an *official document*, I found a
reliable way of extracting the data. In case you are interested, you can
[keep an eye on my progress](https://git.fsfe.org/janwey/pmpc-data).

![ILoveFS](https://fsfe.org/campaigns/ilovefs/artwork/graphics/ilovefs-banner-extralarge.png)

---

### 17.01.18/18.01.18
While starting with the PDF-Scraper on Tuesday, Wednesday started with me
looking into how to collect data from social media for the analysis of
participation in the [iLoveFS](http://ilovefs.org) campaign. For Twitter this
worked quite fine, as I already have a personal account, so I could easily get
my hands on a pair of API-keys. Same story for
[the fediverse](https://en.wikipedia.org/wiki/Fediverse). Easy!

The real problem started, when I tried this for Facebook. I do not have an
account there, so to access the API, I had to create a new one. And *WOW* is
this a nightmare. Not only did they want a mail-address, which is considered
normal and does have technical reasons, Facebook also demanded a telephone or
credit card number, as well as a picture of my face...
I can not accept this kind of intrusion, even if it is for the sake of data
analysis. I will find other ways and I do have an idea already. But more on
that, when it is time for that.

In the evening, I visited a fairly interesting lecture at "Freie Universität
(FU) Berlin". Actually, it was part of a series of lectures called
[Open Technology For An Open Society](https://ot4os.imp.fu-berlin.de). This one
in particular was about [FreiFunk](https://freifunk.net/en) "a non-commercial
initiative for free wireless networks". I have heard about it on several
occasions before, but never really got into it. This lecture was very
informative and definitely motivates me on learning more about it.

The next day was pretty much only Coding. I really wanted to finish the social
media scraper and I did indeed finish it (for Twitter and the fediverse). Other
than that, there was nothing of interest. Though, if you are interested in my
Script or want to see, what I will be doing with it, you can of course take a
look at it [on the FSFE git-page](https://git.fsfe.org/janwey/ilfs-data).

![Open Technology For An Open Society](https://ot4os.imp.fu-berlin.de/wp-content/uploads/2017/03/otos-web-2-300x106.png)

---

### 19.01.18/21.01.18

Friday is usually a slow day at work. And while I did have an eight hour work
day, there is not much I can tell about it. I've been writing documentation for
my previously finished social media scraper the entire time. You can also find
that in the already mentioned
[Git-Repository](https://git.fsfe.org/janwey/ilfs-data/src/branch/master/docs).
Though in the evening, I visited a
[poetry slam](https://bastardslam.wordpress.com/2017/12/13/fr-19-01-bastard-slam-special-female-slam/)
quite close to the flat I am living in. I've only been to one poetry slam before
so this was still fairly new to me. It was very much fun, though. So if you have
the chance, take a look for yourself :)

I will skip saturday, because it was the most boring day you can imagine.
Instead, sunday was interesting! I attended a
[city tour with a former homeless guide](http://querstadtein.org/en/). He talked
about his life on the streets of Berlin, how he got into homelessness and more
importantly how he got out of it. Also, he showed us the places he would sit or
sleep and how he managed to not freeze to death. While that may sound grim, he
was an extremely positive and funny person. He managed to sneak a little joke
into every detail he explained, so while it all had a very serious note, it was
still very much enjoyable. It's easy to oversee the agony going on right in
front of your nose in such a big city, so I value this experience - while only
lasting two hours - illuminating.

About last week's question: No sight-seeing yet :(
But I am sure, I'll do it eventually...

**Anyways, have a nice start into next week. Cheers!**
