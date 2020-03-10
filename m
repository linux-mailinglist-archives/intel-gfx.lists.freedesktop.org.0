Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAABE17FED6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 14:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B3289BAC;
	Tue, 10 Mar 2020 13:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839FB89BAC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 13:41:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 06:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="276955679"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 10 Mar 2020 06:41:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Mar 2020 15:41:14 +0200
Date: Tue, 10 Mar 2020 15:41:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20200310134114.GE13686@intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
 <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
 <s5h4kuxssqr.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5h4kuxssqr.wl-tiwai@suse.de>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 09, 2020 at 11:54:52AM +0100, Takashi Iwai wrote:
> On Fri, 06 Mar 2020 17:45:44 +0100,
> Kai Vehmanen wrote:
> > =

> > Hi folks,
> > =

> > [+Takashi from ALSA]
> > =

> > On Mon, 6 Jan 2020, Matt Roper wrote:
> > >>> On Tue, Dec 31, 2019 at 04:00:07PM +0200, Kai Vehmanen wrote:
> > >>>> Revert changes done in commit f6ec9483091f ("drm/i915: extend audio
> > >>>> CDCLK>=3D2*BCLK constraint to more platforms"). Audio drivers
> > >
> > > Agreed; GLK's minimum cdclk goes down to 79.2 mhz so it makes sense t=
hat
> > > it needs to be handled differently than CNL (and beyond).  I.e., this
> > > isn't a pure revert of the original patch.
> > =

> > unfortunately it seems this fix that was done is not holding up in wide=
r =

> > testing. It now looks we need to enforce the constraint in one form or =

> > another for newer platforms as well. We can't revert the revert as that =

> > will bring the boot flicker back, so we'll need something else.
> > =

> > Now as we've gone back-and-forth multiple times, I want to get some ear=
ly =

> > feedback before opting for one path or another.
> > =

> > To recap in short:
> >  - audio driver calls i915 acomp get_power() multiple times during boot
> > 	-> this can cause annoying flicker at boot on platforms where
> > 	   each get_power() leads to a modeset change
> > 	- example: https://gitlab.freedesktop.org/drm/intel/issues/913
> >  - systems with more complex audio subsystems (DSP enabled) will be =

> >    calling get_power() many more times (as i915 iDisp link is needed in =

> >    multiple phases of audio controller, DSP and codecs initialization), =

> >    making the flicker worse
> > =

> > I've gone through (once more) possible options, and it starts to seem t=
hat =

> > trying to minimize # of get_power() cycles is not going to work well in =

> > the long run. We could certainly reduce number of distinct get_power =

> > calls e.g. during boot by refactoring the audio DSP setup, but there wo=
uld =

> > still be more than a few, and it's not just the boot. We now need to ca=
ll =

> > get_power() when the audio controller comes out from runtime suspend =

> > (otherwise the HDA link is not ok between i915 and audio). This can be =
pretty =

> > annoying if there are visible artifacts to the end-user in such a case
> > where potentially no HDMI/DP monitors are even connected).
> > =

> > Similarly on i915 side, it would seem pretty unlikely that we are going
> > to get smooth changes of CDCLK. It might work better on some platforms, =

> > but generally (depending on the available dividers provided), it's not =

> > going to be guaranteed to be flicker-free.

There is new hw in the pipeline that should allow cdclk changes
without a full modeset.

> > =

> > So how about: We move the glk_force_audio_cdclk() logic from =

> > intel_audio.c:i915_audio_component_get_power() to acomp init.
> > This has some notable implications:
> > =

> >  - audio driver can safely call get_power without worrying =

> >    about creating display artifacts,
> >  - on some platforms, with specific HDA link params in BIOS, =

> >    this will mean some lower CDCLK frequencies, will not be used
> >    at all
> > 	- e.g. on ICL system with 96Mhz BCLK for iDisp, 172800 and
> >    	  180000 are blocked out, and 192000 is the practical minimum
> > 	  unless you unload the audio driver
> > 	- if BCLK is 48Mhz, no impact to CDCLK selection on ICL
> > =

> > Any chance to get this through? I understand this effectively removes t=
he =

> > lower clocks from some systems, so this needs to be evaluated carefully.

If we're going to effectively force cdclk to remain high all the time
then we should just nuke the whole glk_force_audio_cdclk() thing. But
at least I'll have to shed a few tears for the wasted milliwatts.

Well, I guess we might want to keep glk_force_audio_cdclk() in its
current form for the upcoming hw that doesn't need the full modeset
for cdclk changes.

I guess we could also make i915 force the cdclk to the min required by
audio at init time. And we could maybe try to remove the modeset from the
put_power() so that at least if you get a blink it's just the one. I did
a similarsh thing for some other cdclk stuff recently where we want cdclk
to go up as needed, but it will not come back down unless someone else
already asked for a full modeset.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
