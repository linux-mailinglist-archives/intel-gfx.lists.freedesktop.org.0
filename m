Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6365A6BE951
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 13:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B7410E366;
	Fri, 17 Mar 2023 12:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA7B10E366
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 12:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679056429; x=1710592429;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fjDdrZCBMhezq6wiWFiIZs5Wg+ipfRWNoATFMHDrz/s=;
 b=FZt+5kWCkOEy9qD9VGG1C5Xk6MU+D+aA7vgWpezFskXa8uOmU89I1jQA
 SO2CPSPngr8F2sV3kVdInDwjaNPrIDDCNFKIYbVWomUwb5abXBkHE9ns3
 PqeTKjShyqDSoAHejSqDUk9nhyJawLDyCeK53p2YyCu9h6/0yE/zJ2Wao
 NAJZWAnPr2C6ySvi06VSMTxfMCsBmIpbN/d0rvV6zwdUDAB35jHu+iOp4
 k12OR89ffQL283nDLtyo+361gpiX4wkB3YWw1RD6viqO9dLIVPEf28B49
 iQUAJ1nhIf9JuijFaU0ePimsQGS8QIFKQmAVjm51HYG9IR2mR6TZuP/Y1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="424521291"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="424521291"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 05:33:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="790699102"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="790699102"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 17 Mar 2023 05:33:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 14:33:46 +0200
Date: Fri, 17 Mar 2023 14:33:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZBReKiJaPWdM+zFc@intel.com>
References: <20230314090142.947764-1-jouni.hogander@intel.com>
 <20230314090142.947764-2-jouni.hogander@intel.com>
 <ZBNeKlSPGaCkqn2q@intel.com>
 <f3c5b7509a64d4d677bda6c896c782aff31d9435.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f3c5b7509a64d4d677bda6c896c782aff31d9435.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 17, 2023 at 06:54:02AM +0000, Hogander, Jouni wrote:
> On Thu, 2023-03-16 at 20:21 +0200, Ville Syrjälä wrote:
> > On Tue, Mar 14, 2023 at 11:01:41AM +0200, Jouni Högander wrote:
> > > PSR WM optimization should be disabled based on any wm level being
> > > disabled. Currently it's disabled always when using delayed vblank.
> > > 
> > > Bspec: 71580
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
> > >  drivers/gpu/drm/i915/display/intel_psr.c           | 12 +++++-----
> > > --
> > >  drivers/gpu/drm/i915/display/skl_watermark.c       |  7 +++++--
> > >  3 files changed, 11 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index c32bfba06ca1..60504c390408 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1152,6 +1152,7 @@ struct intel_crtc_state {
> > >         bool has_psr2;
> > >         bool enable_psr2_sel_fetch;
> > >         bool req_psr2_sdp_prior_scanline;
> > > +       bool wm_level_disabled;
> > >         u32 dc3co_exitline;
> > >         u16 su_y_granularity;
> > >         struct drm_dp_vsc_sdp psr_vsc;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 44610b20cd29..a6edd65b8edb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1177,13 +1177,11 @@ static void intel_psr_enable_source(struct
> > > intel_dp *intel_dp,
> > >          * Wa_16013835468
> > >          * Wa_14015648006
> > >          */
> > > -       if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > -           IS_DISPLAY_VER(dev_priv, 12, 13)) {
> > > -               if (crtc_state->hw.adjusted_mode.crtc_vblank_start
> > > !=
> > > -                   crtc_state->hw.adjusted_mode.crtc_vdisplay)
> > 
> > That looks like something we want to keep. The delayed vblank w/a is
> > still supposedly necessary.
> 
> 16013835468 and 14015648006 are specifically mentioning "low power
> watermark (level 1 and up) is disabled" I haven't seen or couldn't find
> any older Wa speaking generally about delayed vblank.

14015648006:
"High refresh rate panels with small vblank size (either because of the
 panel vblank size or the internal delayed vblank) must have some
 watermark levels disabled..."
-> that's the w/a you're now implementing, so the comment is
   lying to us by claiming it was already implemented

16013835468:
"Display underrun when using delayed vblank with PSR2..."
-> that's the one we actually already had implemented

> 
> > 
> > > -                       intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> > > 0,
> > > -                                   
> > > wa_16013835468_bit_get(intel_dp));
> > > -       }
> > > +       if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > +            IS_DISPLAY_VER(dev_priv, 12, 13)) &&
> > 
> > I think we need this for all KBL+.
> 
> Do you have Wa lineage for a reference?

I think it was part of the w/a 1136. You see it only lists
skl/bxt/kbl a-b to need the full psr disable, leaving kbl c+
to do something different. And the latency reporting chicken
bits were added exactly for kbl c+.

But yeah, the way this is now documented in bpsec is very poor.
And sadly the older hsds have now disappread into bit heaven
so we can't double check the full details there. But I'm 99%
sure I read through those hsds in the past and came to this
same conclusion back then.

> 
> > 
> > > +           crtc_state->wm_level_disabled)
> > > +               intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> > > +                            wa_16013835468_bit_get(intel_dp));
> > >  
> > >         if (intel_dp->psr.psr2_enabled) {
> > >                 if (DISPLAY_VER(dev_priv) == 9)
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index 50a9a6adbe32..afb751c024ba 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -2273,9 +2273,12 @@ static int skl_wm_check_vblank(struct
> > > intel_crtc_state *crtc_state)
> > >                 return level;
> > >  
> > >         /*
> > > -        * FIXME PSR needs to toggle
> > > LATENCY_REPORTING_REMOVED_PIPE_*
> > > +        * PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
> > >          * based on whether we're limited by the vblank duration.
> > > -        *
> > > +        */
> > > +       crtc_state->wm_level_disabled = level < i915-
> > > >display.wm.num_levels - 1;
> > > +
> > > +       /*
> > >          * FIXME also related to skl+ w/a 1136 (also unimplemented
> > > as of
> > >          * now) perhaps?
> > >          */
> > 
> > And that is more or less corresponding w/a for SKL/BXT that did not
> > yet have
> > these chicken bits.
> 
> Ok, I will check this as well.
> 
> > 
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrjälä
Intel
