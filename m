Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A13461837FE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 18:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898FB6EB0F;
	Thu, 12 Mar 2020 17:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F0D6EB0F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 17:50:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 10:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="289793568"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 Mar 2020 10:50:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Mar 2020 19:50:40 +0200
Date: Thu, 12 Mar 2020 19:50:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200312175040.GJ13686@intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
 <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
 <s5h4kuxssqr.wl-tiwai@suse.de> <20200310134114.GE13686@intel.com>
 <alpine.DEB.2.21.2003101848170.2957@eliteleevi.tm.intel.com>
 <20200310182522.GN13686@intel.com>
 <alpine.DEB.2.21.2003121833570.2957@eliteleevi.tm.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003121833570.2957@eliteleevi.tm.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Limit audio CDCLK>=2*BCLK
 constraint back to GLK only
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 12, 2020 at 07:27:58PM +0200, Kai Vehmanen wrote:
> Hey,
> =

> On Tue, 10 Mar 2020, Ville Syrj=E4l=E4 wrote:
> =

> > On Tue, Mar 10, 2020 at 07:18:58PM +0200, Kai Vehmanen wrote:
> >> On Tue, 10 Mar 2020, Ville Syrj=E4l=E4 wrote:
> >>> audio at init time. And we could maybe try to remove the modeset from=
 the
> >>> put_power() so that at least if you get a blink it's just the one. I =
did
> >>
> >> Hmm, this is interesting and maybe a better compromise for the in-betw=
een =

> >> generations. Could it be as simple as not setting =

> > =

> > The logic around the cdclk computation is still a bit messy.
> > =

> > First draft of just doing the lazy force_min_cdclk reduction in put_pow=
er():
> > git://github.com/vsyrjala/linux.git no_cdclk_in_audio_put_power
> > =

> > Very lightly smoke tested, but not sure if it achieves anything useful =
:P
> =

> I tested this today and no issues found. I can see clock bumped if there =

> is audio activity, but clock is kept after audio goes back to sleep. =

> But then e.g. at next display-off timeout, clk is brought back down.
> So works as expected.
> =

> But, but, then I also tested...
> =

> >> One problematic scenario that this doesn't cover:
> >>  - a single display is used (at low cdclk), and =

> >>  - audio block goes to runtime suspend while display stays up. =

> >> =

> >> Upon resume (for e.g. UI notification sound), audio will initialize th=
e =

> >> HDA bus and call get_power() on i915, even if the notification goes to =

> =

> Now actually hitting this requires some effort. On most systems I tried, =

> with display active, the clock will stay above the limit for other =

> reasons, but yup, when this happens, it is pretty, pretty bad.
> =

> Your no_cdclk_in_audio_put_power patch does reduce the level of annoyance =

> also in this case -- you only get one flash instead of two. But does not =

> seem acceptable still. If you happen to have a system where the condition=
s =

> are met, then this happens all the time. In case of UI notification sound=
s =

> being the trigger, we could consider the visual flash as a feature, but =

> probably not widely appreciated. ;) .. and especially as you cannot turn =

> it off.
> =

> So I think this starts to look that we should move calling glk_force_audi=
o =

> to bind/unbind pair. I can make a patch for this.

That would stop us from doing dynamic cdclk changes once we get the hw
that can do that properly. Rather I think I'd just hardcode the 2xbclk
requirement in i915 for the platforms that suck.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
