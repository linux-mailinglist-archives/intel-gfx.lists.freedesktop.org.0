Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A870E89F1BC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 14:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946F8112821;
	Wed, 10 Apr 2024 12:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i6FOx1u5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380E5113307
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 12:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712751006; x=1744287006;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=v8l67nhmpVVQ+92sT3Nl+awKHpoXZDpP99sFU1XfEhw=;
 b=i6FOx1u5+lGM45FuqinvKhoN8oLFxyECxOk8JTrl7o/XulpHePPuH4Fk
 5QsrCd+64pGU+mHJkrW8ODHIaPPHbTCxxcJ28Q7FuoZMlykjnKHuqvhCJ
 +JvLp9x0EgFHwrQHWHoxYMs55Nl+j/0ndXd+OyFp9ZTYeJSQTRaJDbYj2
 c/58P0jAMGFmgwMUl0tSNR3fpPiRiLNZKaqaXSyVhDzN1EMBweJL7YyBq
 rU2E5uIyL+RpMScXLzoo2F5xUYKBhTYHtdVbz5tvnGsl9N6nf0krVmMoF
 Lk5rlonXgH4aOlDMmCMN2p7kT8FDhsB1smrlK5MNDRyrzskW5dfRDRypG A==;
X-CSE-ConnectionGUID: Q8ewjrFGSjOrjt+wwJQrnw==
X-CSE-MsgGUID: oEycJS8aS6uj2ld9rY+0pw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="19497821"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="19497821"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 05:10:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827793032"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="827793032"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 10 Apr 2024 05:10:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Apr 2024 15:10:02 +0300
Date: Wed, 10 Apr 2024 15:10:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v4] drm/i915/panelreplay: Panel replay workaround with VRR
Message-ID: <ZhaBml9zOkxZZG-2@intel.com>
References: <20240328044354.1871391-1-animesh.manna@intel.com>
 <b425ba4a833691fefdb70a7ac7d4bdb9bcf75f41.camel@intel.com>
 <PH7PR11MB59816B3BAF4FFE3FCE1FB6F0F9062@PH7PR11MB5981.namprd11.prod.outlook.com>
 <bb540898d86de022062431db806e7049c49f346e.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bb540898d86de022062431db806e7049c49f346e.camel@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 10, 2024 at 07:41:42AM +0000, Hogander, Jouni wrote:
> On Wed, 2024-04-10 at 07:35 +0000, Manna, Animesh wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Hogander, Jouni <jouni.hogander@intel.com>
> > > Sent: Wednesday, April 10, 2024 12:54 PM
> > > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > <arun.r.murthy@intel.com>
> > > Subject: Re: [PATCH v4] drm/i915/panelreplay: Panel replay
> > > workaround with
> > > VRR
> > > 
> > > On Thu, 2024-03-28 at 10:13 +0530, Animesh Manna wrote:
> > > > Panel Replay VSC SDP not getting sent when VRR is enabled and W1
> > > > and
> > > > W2 are 0. So Program Set Context Latency in
> > > TRANS_SET_CONTEXT_LATENCY
> > > > register to at least a value of 1.
> > > > 
> > > > HSD: 14015406119
> > > > 
> > > > v1: Initial version.
> > > > v2: Update timings stored in adjusted_mode struct. [Ville]
> > > > v3: Add WA in compute_config(). [Ville]
> > > > v4:
> > > > - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> > > > - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> > > > 
> > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 17
> > > > +++++++++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_display.h |  1 +
> > > >  drivers/gpu/drm/i915/display/intel_psr.c     |  4 ++++
> > > >  3 files changed, 22 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 00ac65a14029..7f5c42a14196 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -3840,6 +3840,23 @@ bool intel_crtc_get_pipe_config(struct
> > > > intel_crtc_state *crtc_state)
> > > >         return true;
> > > >  }
> > > > 
> > > > +void intel_crtc_vblank_delay(struct intel_crtc_state
> > > > *crtc_state) {
> > > > +       struct drm_display_mode *adjusted_mode = &crtc_state-
> > > > > hw.adjusted_mode;
> > > > +
> > > > +       /*
> > > > +        * wa_14015401596 for display versions >= 13.
> > > > +        * Program Set Context Latency in
> > > > TRANS_SET_CONTEXT_LATENCY
> > > > register
> > > > +        * to at least a value of 1 when Panel Replay is enabled
> > > > with
> > > > VRR.
> > > > +        * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> > > > substracting
> > > > +        * crtc_vdisplay from crtc_vblank_start, so incrementing
> > > > crtc_vblank_start
> > > > +        * by 1 if both are equal.
> > > > +        */
> > > > +       if (crtc_state->vrr.enable && crtc_state-
> > > > >has_panel_replay &&
> > > > +           adjusted_mode->crtc_vblank_start == adjusted_mode-
> > > > > crtc_vdisplay)
> > > > +               adjusted_mode->crtc_vblank_start += 1; }
> > > > +
> > > 
> > > Do you have some specific reason to have this in intel_display.c?
> > > How about
> > > move it to intel_psr.c? You could also use more descriptive name.
> > > Current name somehow made me think it is some generic function to
> > > calculate vblank delay. It is actually only for this workaround.
> > 
> > Thanks for review.
> > As per feedback from rev3 I have added in intel_display.c. Going
> > forward all vbalnk related adjustment will be added into this
> > function.
> > https://patchwork.freedesktop.org/series/129632/#rev3
> > I can move to intel_psr.c if the current version is not acceptable.
> 
> Ok, thank you for providing the context. If it's intended use is
> generic then I think calling it shouldn't happen from
> intel_psr_compute_config. Maybe Ville can comment where it should be
> called from.

It's a potential chicken vs. egg situation.

The best place would be somewhere after .compute_config() since
we need this this for DSB in general. I think I have it in
intel_crtc_compute_config() in my current WIP DSB plane update
branch.

The problem with PSR is that it seems to want to use it
before that. The question no one has yet answered is
whether PSR actually wants to consult the undelayed
transcoder vblank or the delayed vblank. I'm think the
former is more likely (with PSR being a transcoder level
feature), in which case the chicken vs. egg sitation
will simply disappear. But someone will need to confirm
that.

The other potential chicken vs. egg looks to be VRR on
setups where TRANS_SET_CONTEXT_LATENCY isn't a thing.
The question there is how the vblank delay is configured
when using VRR. I'm pretty sure I did figure this out
already, but can't remember right now what the conclusion
was. So that needs to be double checked as well.

I was also pondering whether we should try to leave
adjusted_mode.crtc_vblank_start alone and instead just
reflect the delayed vblank in pipe_mode.crtc_vblank_start?
That might be useful if there are other places later on
in the atomic_check/etc. that needs to know the position
of the undelayed vblank. But that would have big implications
to eg. the vblank timestamping code, so probably not entirely
feasible.

-- 
Ville Syrjälä
Intel
