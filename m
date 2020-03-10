Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2C318062E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 19:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463126E379;
	Tue, 10 Mar 2020 18:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A236E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 18:25:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 11:25:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="245780812"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 10 Mar 2020 11:25:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Mar 2020 20:25:22 +0200
Date: Tue, 10 Mar 2020 20:25:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200310182522.GN13686@intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
 <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
 <s5h4kuxssqr.wl-tiwai@suse.de> <20200310134114.GE13686@intel.com>
 <alpine.DEB.2.21.2003101848170.2957@eliteleevi.tm.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003101848170.2957@eliteleevi.tm.intel.com>
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

On Tue, Mar 10, 2020 at 07:18:58PM +0200, Kai Vehmanen wrote:
> Hi,
> =

> On Tue, 10 Mar 2020, Ville Syrj=E4l=E4 wrote:
> =

> >> On Fri, 06 Mar 2020 17:45:44 +0100, Kai Vehmanen wrote:
> >>> Similarly on i915 side, it would seem pretty unlikely that we are goi=
ng
> >>> to get smooth changes of CDCLK. It might work better on some platform=
s, =

> > =

> > There is new hw in the pipeline that should allow cdclk changes
> > without a full modeset.
> =

> ok great, this is good to know. Especially we should not completely remov=
e =

> the CDCLK constraints code from get_power/put_power, as this will be =

> later needed.
> =

> >>> intel_audio.c:i915_audio_component_get_power() to acomp init.
> >>> This has some notable implications:
> [...]
> >>> Any chance to get this through? I understand this effectively removes=
 the =

> >>> lower clocks from some systems, so this needs to be evaluated careful=
ly.
> > =

> > If we're going to effectively force cdclk to remain high all the time
> > then we should just nuke the whole glk_force_audio_cdclk() thing. But
> > at least I'll have to shed a few tears for the wasted milliwatts.
> > =

> > Well, I guess we might want to keep glk_force_audio_cdclk() in its
> > current form for the upcoming hw that doesn't need the full modeset
> > for cdclk changes.
> =

> Yeah, we probably should keep it in any case, because later it's going to =

> be needed.
> =

> > I guess we could also make i915 force the cdclk to the min required by
> > audio at init time. And we could maybe try to remove the modeset from t=
he
> > put_power() so that at least if you get a blink it's just the one. I did
> > a similarsh thing for some other cdclk stuff recently where we want cdc=
lk
> > to go up as needed, but it will not come back down unless someone else
> > already asked for a full modeset.
> =

> Hmm, this is interesting and maybe a better compromise for the in-between =

> generations. Could it be as simple as not setting =

> "cdclk.force_min_cdclk_changed" at put_power(), and just set the =

> min_cdclk...? I was trying to follow the modeset code and it seems withou=
t =

> the force set, this would avoid going to intel_modeset_checks(). If so, I =

> can try this out.

The logic around the cdclk computation is still a bit messy.

First draft of just doing the lazy force_min_cdclk reduction in put_power():
git://github.com/vsyrjala/linux.git no_cdclk_in_audio_put_power

Very lightly smoke tested, but not sure if it achieves anything useful :P

> =

> One problematic scenario that this doesn't cover:
>  - a single display is used (at low cdclk), and =

>  - audio block goes to runtime suspend while display stays up. =

> =

> Upon resume (for e.g. UI notification sound), audio will initialize the =

> HDA bus and call get_power() on i915, even if the notification goes to =

> internal speaker. A modeset at this point is potentially very annoying.

:( That seems much harder to deal with.

> =

> I just also noted if we keep the glk_force_audio function, we need to get =

> rid of the hardcoded 96Mhz BCLK value that is used now, and instead dig u=
p =

> the effective used value (we do have this). This will at least offer the =

> possibility to configure the HDA link to 48Mhz in BIOS and avoid the cdcl=
k =

> bump this way.

I think when I last complained about the assumed 96 MHz BCLK
people said "48 MHz never happens". But I guess it can be made
to happen?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
