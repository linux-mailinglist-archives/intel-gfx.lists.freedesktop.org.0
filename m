Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CA7BC240A
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 19:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8134310E6F9;
	Tue,  7 Oct 2025 17:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TMfLjs8D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2F1010E19E;
 Tue,  7 Oct 2025 17:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759858219; x=1791394219;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EIQ+MGpXP3iPs2PljbiqlcOuxg+lfXrF3OdjMjBoWZg=;
 b=TMfLjs8DsTnbdd2m9JcqQRr9truhXj2twfd6GHiC8vrtJIrtjKPREQXN
 6e6/IJBFE0w5iriFEPQmUo+I9TNo47sTjt/jViF3Ogtk0EPYedj/Qtrkh
 VwckZI0L924Ar44v081ceIAGeZAhe5nYYhNOdq9H3eB0UI93NqK5jhP/a
 3KLdCCUv6QabZ1WR+MKnp2wksaK6NiJIOfYKnJSlet1c+CZKXru300DCM
 Ckb+qAhevhRPv7ontdE4olqG7L1rOc9ZxOR7ocZpH7nn+EyHKyM0AG1Hn
 kElfiPM/EsUGJdtH1tsJdPGZBgR0XTlvJ9+ILPbsyD7vOW2VgG6dcrNeS w==;
X-CSE-ConnectionGUID: z0ktwQGdRpW8X4Sh2XsuJw==
X-CSE-MsgGUID: +VwMq3leTDaXH/pkXi+/8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="72306569"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="72306569"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 10:30:19 -0700
X-CSE-ConnectionGUID: 1XOL+4L9SDqLFVK7piVh2w==
X-CSE-MsgGUID: zdyrAcPpRruvhMiCmkZu1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180256268"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 10:30:16 -0700
Date: Tue, 7 Oct 2025 20:30:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/16] drm/i915/vblank: Add helper to get correct vblank
 length
Message-ID: <aOVOJp2zeN1eCp7O@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
 <20251006042852.263249-12-ankit.k.nautiyal@intel.com>
 <aOQe_BRj8-dQmKGO@intel.com>
 <f1a8c1bc-6977-4ba4-9ffc-b1a4922d3f43@intel.com>
 <aOUu6WoGHhYv4mRy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aOUu6WoGHhYv4mRy@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Oct 07, 2025 at 06:16:57PM +0300, Ville Syrjälä wrote:
> On Tue, Oct 07, 2025 at 11:22:44AM +0530, Nautiyal, Ankit K wrote:
> > 
> > On 10/7/2025 1:26 AM, Ville Syrjälä wrote:
> > > On Mon, Oct 06, 2025 at 09:58:47AM +0530, Ankit Nautiyal wrote:
> > >> Currently crtc_vblank_start is assumed to be the vblank_start for the fixed
> > >> refresh rate case. That value can be different from the variable refresh
> > >> rate case whenever always_use_vrr_tg()==false. On icl/tgl it's always
> > >> different due to the extra vblank delay, and also on adl+ it could be
> > >> different if we were to use an optimized guardband.
> > >>
> > >> So places where crtc_vblank_start is used to compute vblank length needs
> > >> change so as to account for cases where vrr is enabled. Specifically
> > >> with vrr.enable the effective vblank length is actually guardband.
> > >>
> > >> Add a helper to get the correct vblank length for both vrr and fixed
> > >> refresh rate cases. Use this helper where vblank_start is used to
> > >> compute the vblank length.
> > >>
> > >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > >> ---
> > >>   drivers/gpu/drm/i915/display/intel_pfit.c    | 11 +++++++----
> > >>   drivers/gpu/drm/i915/display/intel_psr.c     |  3 +--
> > >>   drivers/gpu/drm/i915/display/intel_vblank.c  | 10 ++++++++++
> > >>   drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
> > >>   drivers/gpu/drm/i915/display/skl_watermark.c |  3 ++-
> > >>   5 files changed, 22 insertions(+), 7 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> > >> index 68539e7c2a24..ebbaa1d419ba 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> > >> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> > >> @@ -14,6 +14,7 @@
> > >>   #include "intel_lvds_regs.h"
> > >>   #include "intel_pfit.h"
> > >>   #include "intel_pfit_regs.h"
> > >> +#include "intel_vblank.h"
> > >>   #include "skl_scaler.h"
> > >>   
> > >>   static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
> > >> @@ -306,14 +307,15 @@ centre_horizontally(struct drm_display_mode *adjusted_mode,
> > >>   }
> > >>   
> > >>   static void
> > >> -centre_vertically(struct drm_display_mode *adjusted_mode,
> > >> +centre_vertically(struct intel_crtc_state *crtc_state,
> > >> +		  struct drm_display_mode *adjusted_mode,
> > >>   		  int height)
> > >>   {
> > >>   	u32 border, sync_pos, blank_width, sync_width;
> > >>   
> > >>   	/* keep the vsync and vblank widths constant */
> > >>   	sync_width = adjusted_mode->crtc_vsync_end - adjusted_mode->crtc_vsync_start;
> > >> -	blank_width = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start;
> > >> +	blank_width = intel_crtc_vblank_length(crtc_state);
> > > This pfit stuff is computed way before the guardband, and also only
> > > relevant for ancient gen2-4 hardware. So no point in touching this
> > > stuff IMO.
> > 
> > Alright can skip this stuff.
> > 
> > 
> > >
> > >>   	sync_pos = (blank_width - sync_width + 1) / 2;
> > >>   
> > >>   	border = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
> > >> @@ -392,7 +394,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
> > >>   					  PFIT_HORIZ_INTERP_BILINEAR);
> > >>   		}
> > >>   	} else if (scaled_width < scaled_height) { /* letter */
> > >> -		centre_vertically(adjusted_mode,
> > >> +		centre_vertically(crtc_state,
> > >> +				  adjusted_mode,
> > >>   				  scaled_width / pipe_src_w);
> > >>   
> > >>   		*border = LVDS_BORDER_ENABLE;
> > >> @@ -489,7 +492,7 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> > >>   		 * heights and modify the values programmed into the CRTC.
> > >>   		 */
> > >>   		centre_horizontally(adjusted_mode, pipe_src_w);
> > >> -		centre_vertically(adjusted_mode, pipe_src_h);
> > >> +		centre_vertically(crtc_state, adjusted_mode, pipe_src_h);
> > >>   		border = LVDS_BORDER_ENABLE;
> > >>   		break;
> > >>   	case DRM_MODE_SCALE_ASPECT:
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > >> index f7115969b4c5..ae6b94a5d450 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > >> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > >> @@ -1365,8 +1365,7 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
> > >>   				       bool aux_less)
> > >>   {
> > >>   	struct intel_display *display = to_intel_display(intel_dp);
> > >> -	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
> > >> -		crtc_state->hw.adjusted_mode.crtc_vblank_start;
> > >> +	int vblank = intel_crtc_vblank_length(crtc_state);
> > > I *think* this also gets computed during .compute_config() which is
> > > before the guardband calculation. So if this stuff actually depends on
> > > the guardband then we have a real problem here. And if it doesn't (as
> > > in it really interested in the undelayed vblank length) them maybe it
> > > should just compute it as crtc_vtotal-crtc_vactive.
> > 
> > As far as I understand it depends on guardband for VRR case.
> > For non vrr case : crtc_vtotal - crtc_vactive - scl lines
> > For vrr case: guardband length.
> > 
> > Currently since guardband is equal to vblank length this can be 
> > crtc_vtotal - crtc_vactive - scl lines.
> > 
> > Perhaps with the optimized guardband, we need to set the guardband 
> > during intel_vrr_compute_config().
> > 
> > Later intel_psr_compute_config gets called and then we can check the 
> > guardband.
> 
> Originally we moved the vblank delay calculation to happen later
> because we needed to know about PSR for it to be done correctly.
> I think someone will need to try to actually write down all the 
> requirements from both PSR and VRR side and sides and come up
> with a way to get it all done in the right order, without any
> more chicken vs. egg problems.

I haven't actually checked any of PSR details here, but I'm thinking
if my assumptions hold that there is a dependency both ways, we migth
need soemthing like this:

1. .compute_config()
   Check if PSR is generallty possible/desired, and verify that a maximum
   guardband would suffice for PSR (this check could also take PSR specific
   SCL requirements into consideration)

2. compute_scl()
   Bump SCL if PSR (or anything else) needs it

3. vrr_compute_guardband()
   Try to accomodate PSR requirements, but don't worry if we can't satisy
   that

.compute_config_late()
   Check whether the actual guardband is sufficient for PSR, and
   calculate any other state that depends on the guardband. If not,
   disable PSR (hopefully we can still do that at this point...)

I think that might generally work (if the assumption about being
able to revert the early PSR decision in .compute_config_late()
is valid).

The only corner case I see is if something else requires
bumping SCL and that reduces the guardband below what PSR needs.
But perhaps we should not worry about such issues, unless perhaps
that other SCL bumping requirement can be trivially accomodated
in the PSR .compute_config() as well.

Or I suppose we might try to see if we could compute SCL (considering
only the non-PSR requirements) even earlier (as in before PSR
.compute_config()), and then have the PSR code itself bump SCL if
required during .compute_config(). But this sort of approach we could
look into later, doesn't have to be done now IMO.

-- 
Ville Syrjälä
Intel
