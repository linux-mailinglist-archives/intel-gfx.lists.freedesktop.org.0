Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A45B83EBBAC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 19:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426036E8B9;
	Fri, 13 Aug 2021 17:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADA9F6E8B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 17:48:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="279341930"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="279341930"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 10:48:05 -0700
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="470148974"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 10:48:01 -0700
Date: Fri, 13 Aug 2021 10:48:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20210813174800.GZ1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210813115151.19290-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210813115151.19290-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dp: pass crtc_state to
 intel_ddi_dp_level()
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

On Fri, Aug 13, 2021 at 02:51:49PM +0300, Jani Nikula wrote:
> Needed in the future.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index e932fd0fe7e2..8cf5d1572ee0 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1371,7 +1371,8 @@ static int translate_signal_level(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> -static int intel_ddi_dp_level(struct intel_dp *intel_dp)
> +static int intel_ddi_dp_level(struct intel_dp *intel_dp,
> +			      const struct intel_crtc_state *crtc_state)
>  {
>  	u8 train_set = intel_dp->train_set[0];
>  	u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> @@ -1385,7 +1386,7 @@ dg2_set_signal_levels(struct intel_dp *intel_dp,
>  		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int level = intel_ddi_dp_level(intel_dp);
> +	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	intel_snps_phy_ddi_vswing_sequence(encoder, level);
>  }
> @@ -1395,7 +1396,7 @@ tgl_set_signal_levels(struct intel_dp *intel_dp,
>  		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int level = intel_ddi_dp_level(intel_dp);
> +	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
> @@ -1405,7 +1406,7 @@ icl_set_signal_levels(struct intel_dp *intel_dp,
>  		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int level = intel_ddi_dp_level(intel_dp);
> +	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	icl_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
> @@ -1415,7 +1416,7 @@ bxt_set_signal_levels(struct intel_dp *intel_dp,
>  		      const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int level = intel_ddi_dp_level(intel_dp);
> +	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	bxt_ddi_vswing_sequence(encoder, crtc_state, level);
>  }
> @@ -1426,7 +1427,7 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	int level = intel_ddi_dp_level(intel_dp);
> +	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  	enum port port = encoder->port;
>  	u32 signal_levels;
>  
> @@ -2328,7 +2329,7 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -	int level = intel_ddi_dp_level(intel_dp);
> +	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
>  				 crtc_state->lane_count);
> @@ -2441,7 +2442,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -	int level = intel_ddi_dp_level(intel_dp);
> +	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	intel_dp_set_link_params(intel_dp,
>  				 crtc_state->port_clock,
> @@ -2584,7 +2585,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	enum phy phy = intel_port_to_phy(dev_priv, port);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -	int level = intel_ddi_dp_level(intel_dp);
> +	int level = intel_ddi_dp_level(intel_dp, crtc_state);
>  
>  	if (DISPLAY_VER(dev_priv) < 11)
>  		drm_WARN_ON(&dev_priv->drm,
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
