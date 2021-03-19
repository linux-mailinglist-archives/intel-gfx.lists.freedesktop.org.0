Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B5E342772
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 22:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D436EAC7;
	Fri, 19 Mar 2021 21:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E47A6EAC6;
 Fri, 19 Mar 2021 21:12:57 +0000 (UTC)
IronPort-SDR: tDVjoXJv7Hh8CFbNrX80xJyU0e4wsDr7NQZ26SesejCa4CxeAgnG1oF26I4Y9NSv8hGCBxO3Aw
 J1gfM+k1loIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="169903959"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="169903959"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 14:12:45 -0700
IronPort-SDR: GN7GI5aoAYjfNBUB68OCFtSHInLaugMzk/QrSa65oHL3TXJsrV5Dw8nqGPjqD4jie/onUq3sPM
 zVGG62KMBlIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="412413494"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 19 Mar 2021 14:12:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Mar 2021 23:12:41 +0200
Date: Fri, 19 Mar 2021 23:12:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YFUTyb6ofKRI12hO@intel.com>
References: <20210302204132.12058-1-manasi.d.navare@intel.com>
 <20210303104744.2c064f09@eldfell>
 <20210303204433.GA15819@labuser-Z97X-UD5H>
 <20210304104223.6b3490bc@eldfell>
 <20210309005252.GA27491@labuser-Z97X-UD5H>
 <20210309111350.3be0543f@eldfell>
 <CAKMK7uEak_2YNDZpyho5bBhhYCvoXh6MoPNL6FmV9sU8oELGPA@mail.gmail.com>
 <20210318230126.GA1900@labuser-Z97X-UD5H>
 <YFS7mINBWsHiYIKm@intel.com>
 <20210319205413.GA6359@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319205413.GA6359@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/atomic: Add the crtc to affected crtc
 only if uapi.enable = true
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Stone <daniels@collabora.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 19, 2021 at 01:54:13PM -0700, Navare, Manasi wrote:
> On Fri, Mar 19, 2021 at 04:56:24PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Mar 18, 2021 at 04:01:26PM -0700, Navare, Manasi wrote:
> > > So basically we see this warning only in case of bigjoiner when
> > > drm_atomic_check gets called without setting the state->allow_modeset=
 flag.
> > =

> > Considering the code is 'WARN(!state->allow_modeset, ...' that
> > fact should be rather obvious.
> > =

> > > =

> > > So do you think that in i915, in intel_atomic_check_bigjoiner() we sh=
ould only
> > > steal the crtc when allow_modeset flag is set in state?
> > =

> > No. If you fully read drm_atomic_check_only() you will observe
> > that it will reject any commit w/ allow_modeset=3D=3Dfalse which =

> > needs a modeset. And it does that before the WARN.
> > =

> > So you're barking up the wrong tree here. The problem I think
> > is that you're just computing requested_crtcs wrong.
> =

> So here in this case, requested CRTC =3D 0x1 since it requests modeset on=
 CRTC 0
> Now in teh atomic check, it steals the slave CRTC 1 and hence affected CR=
TC comes out
> as 0x3 and hence the mismatch.

Hmm. How can it be 0x3 if we filtered out the uapi.enable=3D=3Dfalse case?

> Now what is not clear to me is that if a full modeset was not required
> why did i915 still steal that slave CRTC?
> =

> Manasi
> =

> > =

> > > If we add this check there then the affected crtc wont count the slav=
e crtc
> > > and we wont get this warning.
> > > =

> > > Ville, Danvet?
> > > =

> > > Manasi
> > > =

> > > =

> > > On Tue, Mar 16, 2021 at 10:35:09PM +0100, Daniel Vetter wrote:
> > > > On Tue, Mar 9, 2021 at 10:14 AM Pekka Paalanen <ppaalanen@gmail.com=
> wrote:
> > > > >
> > > > > On Mon, 8 Mar 2021 16:52:58 -0800
> > > > > "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> > > > >
> > > > > > On Thu, Mar 04, 2021 at 10:42:23AM +0200, Pekka Paalanen wrote:
> > > > > > > On Wed, 3 Mar 2021 12:44:33 -0800
> > > > > > > "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> > > > > > >
> > > > > > > > On Wed, Mar 03, 2021 at 10:47:44AM +0200, Pekka Paalanen wr=
ote:
> > > > > > > > > On Tue,  2 Mar 2021 12:41:32 -0800
> > > > > > > > > Manasi Navare <manasi.d.navare@intel.com> wrote:
> > > > > > > > >
> > > > > > > > > > In case of a modeset where a mode gets split across mut=
iple CRTCs
> > > > > > > > > > in the driver specific implementation (bigjoiner in i91=
5) we wrongly count
> > > > > > > > > > the affected CRTCs based on the drm_crtc_mask and indic=
ate the stolen CRTC as
> > > > > > > > > > an affected CRTC in atomic_check_only().
> > > > > > > > > > This triggers a warning since affected CRTCs doent matc=
h requested CRTC.
> > > > > > > > > >
> > > > > > > > > > To fix this in such bigjoiner configurations, we should=
 only
> > > > > > > > > > increment affected crtcs if that CRTC is enabled in UAP=
I not
> > > > > > > > > > if it is just used internally in the driver to split th=
e mode.
> > > > > > > > >
> > > > > > > > > Hi,
> > > > > > > > >
> > > > > > > > > I think that makes sense to me. Stealing CRTCs that are n=
ot currently
> > > > > > > > > used by the userspace (display server) should be ok, as l=
ong as that
> > > > > > > > > is completely invisible to userspace: meaning that it doe=
s not cause
> > > > > > > > > userspace to unexpectedly e.g. receive or miss per-crtc a=
tomic
> > > > > > > > > completion events.
> > > > > > > >
> > > > > > > > Yes since we are only doing atomic_check_only() here, the s=
tolen
> > > > > > >
> > > > > > > But the real not-test-only commit will follow if this test-on=
ly commit
> > > > > > > succeeds, and keeping the guarantees for the real commit are =
important.
> > > > > >
> > > > > > Hmm well after the actual real commit, since the second crtc is=
 stolen
> > > > > > even though it is not being used for the display output, it is
> > > > > > used for joiner so the uapi.enable will be true after the real =
commit.
> > > > > >
> > > > > > so actually the assertion would fail in this case.
> > > > > >
> > > > > > @Ville @Danvet any suggestions here in that case?
> > > > =

> > > > That is very bad. We can't frob uapi state like that. I think that
> > > > calls for even more checks to make sure kms drivers who try to play
> > > > clever games don't get it wrong, so we probably need to check uapi
> > > > enable and active state in another mask before/after ->atomic_check
> > > > too. Or something like that.
> > > > =

> > > > > Hi,
> > > > >
> > > > > that is not what I was talking about, but sounds like you found a
> > > > > different problem. It seems like the problem you are talking about
> > > > > would be guaranteed to be hit if bigjoiner was used. Have you not
> > > > > tested this?
> > > > >
> > > > > However, I was talking about the real commit itself, not what hap=
pens
> > > > > on commits after it, see below.
> > > > >
> > > > > > > > crtc is completely invisible to the userspace and hence tha=
t is
> > > > > > > > indicated by uapi.enable which is not true for this stolen
> > > > > > > > crtc. However if allow modeset flag set, then it will do a =
full
> > > > > > > > modeset and indicate the uapi.enable for this stolen crtc a=
s well
> > > > > > > > since that cannot be used for other modeset requested by us=
erspace.
> > > > > > > >
> > > > > > > > >
> > > > > > > > > Can that also be asserted somehow, or does this already d=
o that?
> > > > > > > >
> > > > > > > > Not clear what you want the assertion for? Could you elabor=
ate
> > > > > > >
> > > > > > > As assertion that when the real atomic commit happens and then
> > > > > > > completion events are fired, they match exactly the affected =
crtcs mask.
> > > > >
> > > > > This is my concern and a question, although like I say below, only
> > > > > tangential to this patch.
> > > > >
> > > > > However, as this patch aims to allow bigjoiner usage, naturally t=
he
> > > > > question will arise whether the completion events then match what
> > > > > userspace expects or not. Userspace does not expect completion ev=
ents
> > > > > referring to the stolen CRTCs.
> > > > =

> > > > Yeah we also must make sure that we don't send out events for these
> > > > additional crtc in bigjoiner usage. Sounds like igt testing didn't
> > > > catch this, I think we need a lot more igts here to make sure all
> > > > these surprises don't happen.
> > > > =

> > > > Plus maybe triple-checking that drm_atomic_uapi.c makes sure we can=
't
> > > > send out events for stuff that userspace didn't ask for.
> > > > -Daniel
> > > > =

> > > > >
> > > > > > > I understand this may be off-topic for this particular patch,=
 but since
> > > > > > > we are discussing the topic, such checks would be really nice=
. I'm
> > > > > > > curious if such checks already exist.
> > > > >
> > > > >
> > > > > Thanks,
> > > > > pq
> > > > >
> > > > > > > > > > ---
> > > > > > > > > >  drivers/gpu/drm/drm_atomic.c | 6 ++++--
> > > > > > > > > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > > > > > > > >
> > > > > > > > > > diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu=
/drm/drm_atomic.c
> > > > > > > > > > index 5b4547e0f775..d7acd6bbd97e 100644
> > > > > > > > > > --- a/drivers/gpu/drm/drm_atomic.c
> > > > > > > > > > +++ b/drivers/gpu/drm/drm_atomic.c
> > > > > > > > > > @@ -1358,8 +1358,10 @@ int drm_atomic_check_only(struct=
 drm_atomic_state *state)
> > > > > > > > > >               }
> > > > > > > > > >       }
> > > > > > > > > >
> > > > > > > > > > -     for_each_new_crtc_in_state(state, crtc, new_crtc_=
state, i)
> > > > > > > > > > -             affected_crtc |=3D drm_crtc_mask(crtc);
> > > > > > > > > > +     for_each_new_crtc_in_state(state, crtc, new_crtc_=
state, i) {
> > > > > > > > > > +             if (new_crtc_state->enable)
> > > > > > > > > > +                     affected_crtc |=3D drm_crtc_mask(=
crtc);
> > > > > > > > > > +     }
> > > > > > > > > >
> > > > > > > > > >       /*
> > > > > > > > > >        * For commits that allow modesets drivers can ad=
d other CRTCs to the
> > > > > _______________________________________________
> > > > > dri-devel mailing list
> > > > > dri-devel@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > > > =

> > > > =

> > > > =

> > > > -- =

> > > > Daniel Vetter
> > > > Software Engineer, Intel Corporation
> > > > http://blog.ffwll.ch
> > > _______________________________________________
> > > dri-devel mailing list
> > > dri-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
