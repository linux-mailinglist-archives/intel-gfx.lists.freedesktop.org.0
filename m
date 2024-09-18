Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C83E97C15D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 23:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51CC610E0B0;
	Wed, 18 Sep 2024 21:24:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TaPWO+oP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB41410E0B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 21:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726694652; x=1758230652;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RA8yu4daGPnIgyW1w3RZr00bs8EVOzk5+9jKwvdnpbA=;
 b=TaPWO+oPMqEbjtKyh0HRs8P9XII7IMdjkRs4WNI3um9E2xIKC3ebCXz7
 iFtKJruWeg+i0nIyrAFHXzb7q7ROjGJaJWRx2DruoNgi5awxb+4qmZZca
 sIR9/6udGkfeVN1oSCfJ20hI8iWAshGjIEYMj0bs2gtPf/kIBPckL22yD
 tVrdKB6VuadmAMP1q/WbnSVgto6Ti0i3wa818cRg/82R8hbEiCobWe325
 fayFxJOrPMIo44yP0Rr7chWMoXoK4b5TJvf+5V0kVY9bYLig+avNZSY3o
 kjCA4Ag8GutNd+5gBzub67/beU4//Qfi6LdKCF0l2rKYbv+PKSoN8z4F7 g==;
X-CSE-ConnectionGUID: EBADT+EORDaqi/HY70ERlg==
X-CSE-MsgGUID: fvKXcMwnT1+sE7WwYefymA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="13579407"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="13579407"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 14:24:12 -0700
X-CSE-ConnectionGUID: JOo4/TqOQbm5lShbruthcA==
X-CSE-MsgGUID: vR+52sz3RjS966nKoCkzHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69824046"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 14:24:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 00:24:09 +0300
Date: Thu, 19 Sep 2024 00:24:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 1/2] drm/i915/display: Add block_dc6_needed variable
 into intel_crtc
Message-ID: <ZutE-cE_gc_MVRu1@intel.com>
References: <20240917063600.3086259-1-jouni.hogander@intel.com>
 <20240917063600.3086259-2-jouni.hogander@intel.com>
 <ZunDL2o0m8E8kt1R@intel.com>
 <fd987d0add600e0d8b4475a06e580c024e7abf42.camel@intel.com>
 <ZuqyZFOoutacWrI8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZuqyZFOoutacWrI8@intel.com>
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

On Wed, Sep 18, 2024 at 01:58:44PM +0300, Ville Syrjälä wrote:
> On Wed, Sep 18, 2024 at 05:53:37AM +0000, Hogander, Jouni wrote:
> > On Tue, 2024-09-17 at 20:58 +0300, Ville Syrjälä wrote:
> > > On Tue, Sep 17, 2024 at 09:35:59AM +0300, Jouni Högander wrote:
> > > > We need to block DC6 entry in case of Panel Replay as enabling VBI
> > > > doesn't
> > > > prevent DC6 in case of Panel Replay. This causes problems if user-
> > > > space is
> > > > polling for vblank events. For this purpose add new
> > > > block_dc6_needed
> > > > variable into intel_crtc. Check if eDP Panel Replay is possible and
> > > > set the
> > > > variable accordingly.
> > > > 
> > > > v3: check that encoder is dp
> > > > v2: set/clear block_dc6_needed in intel_crtc_vblank_on/off
> > > > 
> > > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_crtc.c       | 17
> > > > +++++++++++++++++
> > > >  .../gpu/drm/i915/display/intel_display_types.h  |  7 +++++++
> > > >  drivers/gpu/drm/i915/display/intel_psr.c        |  1 +
> > > >  3 files changed, 25 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > index aed3853952be8..34a60b5b1e55b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > @@ -24,6 +24,7 @@
> > > >  #include "intel_display_irq.h"
> > > >  #include "intel_display_trace.h"
> > > >  #include "intel_display_types.h"
> > > > +#include "intel_dp.h"
> > > >  #include "intel_drrs.h"
> > > >  #include "intel_dsi.h"
> > > >  #include "intel_fifo_underrun.h"
> > > > @@ -123,6 +124,20 @@ u32 intel_crtc_max_vblank_count(const struct
> > > > intel_crtc_state *crtc_state)
> > > >  void intel_crtc_vblank_on(const struct intel_crtc_state
> > > > *crtc_state)
> > > >  {
> > > >         struct intel_crtc *crtc = to_intel_crtc(crtc_state-
> > > > >uapi.crtc);
> > > > +       struct intel_encoder *encoder;
> > > > +
> > > > +       for_each_encoder_on_crtc(crtc->base.dev, &crtc->base,
> > > > encoder) {
> > > > +               struct intel_dp *intel_dp;
> > > > +
> > > > +               if (!intel_encoder_is_dp(encoder))
> > > > +                       continue;
> > > > +
> > > > +               intel_dp = enc_to_intel_dp(encoder);
> > > > +
> > > > +               if (intel_dp_is_edp(intel_dp) &&
> > > > +                   CAN_PANEL_REPLAY(intel_dp))
> > > > +                       crtc->block_dc6_needed = true;
> > > > +       }
> > > 
> > > This could just a function provided by intel_psr.c so that
> > > we don't have to to see any of the details.
> > > 
> > > Is there some reason this isn't simply looking at
> > > crtc_state->has_panel_replay?
> > 
> > Is there intel_crtc_vblank_off/on cycle always when doing full mode
> > set? If that is the case, then I think we can rely on crtc_state-
> > >has_panel_replay: changes in Panel Replay mode always mean full mode
> > set currently. How about fast mode set? Do we have vblank off/on cycle
> > there?
> 
> No. vblank_off()/on() is only around full modesets.
> 
> > 
> > Later if we move into activating/de-activating Panel Replay without
> > full mode set I think we need to do something else.
> 
> I think we need a clear separation of the "logically enabled/possible"
> vs. "currently active" states of PSR and panel replay. With that
> we can just always enable this workaround whenever panel replay
> was selected during the full modeset. Fastsets/plane updates
> can then just activate/deactivate panel replay/PSR (*) as needed
> due to more dynamic constraints (eg. planes going on/off) without
> having to worry about this stuff.
> 
> (*) the activate/deactive should only toggle the single enable
>     bit in the appropriate registers, nothing more

Just to clarify, I'm fine with going with this logic for now
if the has_panel_replay/etc isn't suitable rigth now (as in
can change during fastsets/etc), as long as it's neatly 
buried in the psr code.

So if this code reads something along the lines of:
 crtc->block_dc_for_vblank = intel_psr_block_dc_for_vblank(...); 

then I can just turn a blind eye to the details
and keep on reading past it ;)

-- 
Ville Syrjälä
Intel
