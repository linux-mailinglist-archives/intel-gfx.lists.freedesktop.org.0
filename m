Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B1641EF5D
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 16:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF1B6ECF5;
	Fri,  1 Oct 2021 14:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF14D6ECF5
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 14:21:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="248009487"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="248009487"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 07:19:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="708640051"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 07:19:34 -0700
Date: Fri, 1 Oct 2021 17:19:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211001141931.GD2553962@ideak-desk.fi.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
 <20211001130107.1746-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211001130107.1746-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 02/10] drm/i915: Introduce
 has_buf_trans_select()
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

On Fri, Oct 01, 2021 at 04:00:59PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Add a small helper to determine if DDI_BUF_CTL uses the
> DDI_BUF_TRANS_SELECT field, and whether we have the
> accompanying DDI_BUF_TRANS table in the hardware.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index f6429114ce7c..dbcf4ddd0f3b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -92,6 +92,11 @@ static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
>  	return level;
>  }
>  
> +static bool has_buf_trans_select(struct drm_i915_private *i915)
> +{
> +	return DISPLAY_VER(i915) < 10 && !IS_BROXTON(i915);
> +}
> +
>  static bool has_iboost(struct drm_i915_private *i915)
>  {
>  	return DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915);
> @@ -2640,7 +2645,8 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  		icl_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else
> +
> +	if (has_buf_trans_select(dev_priv))
>  		hsw_prepare_dp_ddi_buffers(encoder, crtc_state);
>  
>  	intel_ddi_power_up_lanes(encoder, crtc_state);
> @@ -3086,7 +3092,8 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  		icl_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else
> +
> +	if (has_buf_trans_select(dev_priv))
>  		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state, level);
>  
>  	if (has_iboost(dev_priv))
> -- 
> 2.32.0
> 
