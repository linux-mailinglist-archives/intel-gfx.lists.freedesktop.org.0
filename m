Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7707D6CDB0E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:44:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2354E10EAE4;
	Wed, 29 Mar 2023 13:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D9410EAE4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097462; x=1711633462;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mRHakYL9Sf0ABrEmaFMYePWsTDkI578r/fdnSYKCsUc=;
 b=Z4M/VbeYbFbw5lKO3ZlITxl+74YSKywFt10RrgwTyko1JxlItbuqsgJX
 P7ty8trIPmGuRtxPgCBAO3viRWyG7MNOkEE87a5Osdhk4hF2CQDSwE980
 yn1hzAXcX+TZXob+h/CIGXaTwAtm1IX0qmbseY+B9iZbFdWyvtCqURu0m
 IScyS3f+86hxvdTYIelm9N77o4h+jXjmYVcB+GaCu38WvHH8yPYpSrthb
 rwDRLEJ+9kOayvujgae6UqweKFe3rkB07bzdT+dqBCCOZ8AentTWk5G/V
 GDIDDz/fBihyb8nKX5OqvKRdaBM/2BT5yQDOLUpGLgWtpNjnYbNKj99lR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="343303648"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="343303648"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="714621875"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="714621875"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:44:20 -0700
Date: Wed, 29 Mar 2023 16:44:12 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZCRArK2LURNnjLbx@intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
 <ZCQLhkwNGRnZkD4k@intel.com>
 <f62f54f4-b42f-dc23-2ae9-2be450854bb1@intel.com>
 <ZCQYkQHDnPLX0Ee2@intel.com>
 <32039884-4045-478a-e03b-09afba2b15a3@intel.com>
 <ZCQiijNDxTqT98bw@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZCQiijNDxTqT98bw@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 29, 2023 at 02:35:38PM +0300, Ville Syrjälä wrote:
> On Wed, Mar 29, 2023 at 05:00:55PM +0530, Nautiyal, Ankit K wrote:
> > 
> > On 3/29/2023 4:23 PM, Ville Syrjälä wrote:
> > > On Wed, Mar 29, 2023 at 04:06:21PM +0530, Nautiyal, Ankit K wrote:
> > >> On 3/29/2023 3:27 PM, Ville Syrjälä wrote:
> > >>> On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
> > >>>> As per Bspec, Big Joiner BW check is:
> > >>>> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
> > >>>> Pixel clock
> > >>>>
> > >>>> Currently we always use max_cdclk in the check for both modevalid
> > >>>> and compute config steps.
> > >>>>
> > >>>> During modevalid use max_cdclk_freq for the check.
> > >>>> During compute config step use current cdclk for the check.
> > >>> Nak. cdclk is computed much later based on what is actually needed.
> > >>> The cdclk freq you are using here is essentially a random number.
> > >> Oh I didn't realise that, perhaps I was lucky when I tested this.
> > >>
> > >> So this check where CDCLK is mentioned, actually expects max_cdclk_freq?
> > >>

We use max_cdclk_freq basically as a "hack" to estimate what could be the max
amount of the CDCLK, because for the reasons, Ville mentioned, we can't use
CDCLK directly here, because it hasn't been yet calculated.

However we anyway know CDCLK will be aligned accordingly to pixel rate.

> > >> If it doesnt then, we might have a compressed_bpp value, that might be
> > >> violating the big joiner bw check.
> > >>
> > >> Should this be handled while computing cdclk?
> > > Yes. I suggest adding something like intel_vdsc_min_cdclk() that
> > > handles all of it.
> > 
> > 
> > I can try that out.

It is all again about that same chicken&egg problem. 
Our paradigm is that CDCLK is the last thing that we calculate, however that
check instructs us to choose the output bpp which obeys

Output bpp <= PPC * CDCLK frequency * Big joiner interface bits / pixel clock

rule.

If we choose to adjust CDCLK accordingly, we loose an option to actually change
the ourpur bpp to save the power, because theoretically we could avoid increasing
CDCLK to match that rule, by decreasing the output bpp..

So this kinda leads us to possibly waste more power.

Stan

> > 
> > Will also add *Pipe BW check*: Pixel clock < PPC * CDCLK frequency * 
> > Number of pipes joined, which seems to be missing.
> 
> That is already accounted for in the pixel rate.
> 
> > 
> > So with pipe bw_check cdclk should be >  Pixel clock / (PPC * Number of 
> > pipes joined)
> > 
> > In addition, as per bigjoiner check it should be >= compressed_bpp / 
> > (PPC * bigjoiner interface bits).
> > 
> > Regards,
> > 
> > Ankit
> > 
> > >> Regards,
> > >>
> > >> Ankit
> > >>
> > >>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > >>>> ---
> > >>>>    drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
> > >>>>    drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
> > >>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
> > >>>>    3 files changed, 8 insertions(+), 3 deletions(-)
> > >>>>
> > >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > >>>> index 3fe651a8f5d0..d6600de1ab49 100644
> > >>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > >>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > >>>> @@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
> > >>>>    u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> > >>>>    				u32 link_clock, u32 lane_count,
> > >>>>    				u32 mode_clock, u32 mode_hdisplay,
> > >>>> +				unsigned int cdclk,
> > >>>>    				bool bigjoiner,
> > >>>>    				u32 pipe_bpp,
> > >>>>    				u32 timeslots)
> > >>>> @@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> > >>>>    
> > >>>>    	if (bigjoiner) {
> > >>>>    		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
> > >>>> -		u32 max_bpp_bigjoiner =
> > >>>> -			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
> > >>>> -			intel_dp_mode_to_fec_clock(mode_clock);
> > >>>> +
> > >>>> +		u32 max_bpp_bigjoiner = cdclk * 2 * bigjoiner_interface_bits /
> > >>>> +					intel_dp_mode_to_fec_clock(mode_clock);
> > >>>>    
> > >>>>    		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
> > >>>>    	}
> > >>>> @@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > >>>>    							    max_lanes,
> > >>>>    							    target_clock,
> > >>>>    							    mode->hdisplay,
> > >>>> +							    dev_priv->display.cdclk.max_cdclk_freq,
> > >>>>    							    bigjoiner,
> > >>>>    							    pipe_bpp, 64) >> 4;
> > >>>>    			dsc_slice_count =
> > >>>> @@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> > >>>>    							    pipe_config->lane_count,
> > >>>>    							    adjusted_mode->crtc_clock,
> > >>>>    							    adjusted_mode->crtc_hdisplay,
> > >>>> +							    dev_priv->display.cdclk.hw.cdclk,
> > >>>>    							    pipe_config->bigjoiner_pipes,
> > >>>>    							    pipe_bpp,
> > >>>>    							    timeslots);
> > >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > >>>> index ef39e4f7a329..d150bfe8abf4 100644
> > >>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > >>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > >>>> @@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
> > >>>>    u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> > >>>>    				u32 link_clock, u32 lane_count,
> > >>>>    				u32 mode_clock, u32 mode_hdisplay,
> > >>>> +				unsigned int cdclk,
> > >>>>    				bool bigjoiner,
> > >>>>    				u32 pipe_bpp,
> > >>>>    				u32 timeslots);
> > >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > >>>> index a860cbc5dbea..266e31b78729 100644
> > >>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > >>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > >>>> @@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > >>>>    							    max_lanes,
> > >>>>    							    target_clock,
> > >>>>    							    mode->hdisplay,
> > >>>> +							    dev_priv->display.cdclk.max_cdclk_freq,
> > >>>>    							    bigjoiner,
> > >>>>    							    pipe_bpp, 64) >> 4;
> > >>>>    			dsc_slice_count =
> > >>>> -- 
> > >>>> 2.25.1
> 
> -- 
> Ville Syrjälä
> Intel
