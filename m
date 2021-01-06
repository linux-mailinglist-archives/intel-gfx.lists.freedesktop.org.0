Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D6C2EC0C2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 17:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DC76E221;
	Wed,  6 Jan 2021 16:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D12A6E221
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 16:02:47 +0000 (UTC)
IronPort-SDR: GwOqo0zrVDpso4KYI8quxESBkDopfAvwRhylgPWntJxEX145FJj2J/dQRNFqNE5o1mDUVIJYJd
 /RzZ4IPpaF4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="156484947"
X-IronPort-AV: E=Sophos;i="5.78,480,1599548400"; d="scan'208";a="156484947"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 08:02:47 -0800
IronPort-SDR: tdvG+ejTUdd/Ql51ns1LanK+VA2tz7g8zwsgIsjZlUtUIsWpzTc/u/D1RWdWhnbFaCsnU+UaB6
 hPSKjfW+A05A==
X-IronPort-AV: E=Sophos;i="5.78,480,1599548400"; d="scan'208";a="350902468"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 08:02:40 -0800
Date: Wed, 6 Jan 2021 18:02:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20210106160236.GA140339@ideak-desk.fi.intel.com>
References: <20210105051353.5714-1-anshuman.gupta@intel.com>
 <20210106043438.27754-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106043438.27754-1-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [RFC v2] drm/i915/pps: Add PPS power domain
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
Reply-To: imre.deak@intel.com
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 06, 2021 at 10:04:38AM +0530, Anshuman Gupta wrote:
> It abstracts getting the AUX power domain in pps_lock under
> PPS power domain. This makes sure that the platforms which really
> requires AUX power in order to access PPS registers will get the
> reference to necessary power wells.
> 
> PPS power domain requires only to track the AUX_A associated
> power wells as the platforms need AUX power in order to access PPS
> registers supports eDP only on PORT_A.
> 
> v2:
> - Fixed missed POWER_DOMAIN_PPS in pps_unlock().
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c            | 7 ++-----
>  3 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index d52374f01316..1dc4ca9e5d1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -107,6 +107,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
>  		return "VGA";
>  	case POWER_DOMAIN_AUDIO:
>  		return "AUDIO";
> +	case POWER_DOMAIN_PPS:
> +		return "PPS";
>  	case POWER_DOMAIN_AUX_A:
>  		return "AUX_A";
>  	case POWER_DOMAIN_AUX_B:
> @@ -2651,11 +2653,13 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
>  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
>  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> +	BIT_ULL(POWER_DOMAIN_PPS) |			\
>  	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
>  	BIT_ULL(POWER_DOMAIN_INIT))
>  #define BXT_DPIO_CMN_A_POWER_DOMAINS (			\
>  	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
>  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> +	BIT_ULL(POWER_DOMAIN_PPS) |			\
>  	BIT_ULL(POWER_DOMAIN_INIT))
>  #define BXT_DPIO_CMN_BC_POWER_DOMAINS (			\
>  	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
> @@ -2688,6 +2692,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  #define GLK_DPIO_CMN_A_POWER_DOMAINS (			\
>  	BIT_ULL(POWER_DOMAIN_PORT_DDI_A_LANES) |		\
>  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> +	BIT_ULL(POWER_DOMAIN_PPS) |			\
>  	BIT_ULL(POWER_DOMAIN_INIT))
>  #define GLK_DPIO_CMN_B_POWER_DOMAINS (			\
>  	BIT_ULL(POWER_DOMAIN_PORT_DDI_B_LANES) |		\
> @@ -2700,6 +2705,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  #define GLK_DISPLAY_AUX_A_POWER_DOMAINS (		\
>  	BIT_ULL(POWER_DOMAIN_AUX_A) |		\
>  	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |		\
> +	BIT_ULL(POWER_DOMAIN_PPS) |			\
>  	BIT_ULL(POWER_DOMAIN_INIT))
>  #define GLK_DISPLAY_AUX_B_POWER_DOMAINS (		\
>  	BIT_ULL(POWER_DOMAIN_AUX_B) |		\
> @@ -2712,6 +2718,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  	BIT_ULL(POWER_DOMAIN_GT_IRQ) |			\
>  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
>  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> +	BIT_ULL(POWER_DOMAIN_PPS) |			\
>  	BIT_ULL(POWER_DOMAIN_GMBUS) |			\
>  	BIT_ULL(POWER_DOMAIN_INIT))
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index bc30c479be53..7642be3c8e2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -55,6 +55,7 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_PORT_OTHER,
>  	POWER_DOMAIN_VGA,
>  	POWER_DOMAIN_AUDIO,
> +	POWER_DOMAIN_PPS,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_AUX_C,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8a00e609085f..99b4bec3c926 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -895,8 +895,7 @@ pps_lock(struct intel_dp *intel_dp)
>  	 * See intel_power_sequencer_reset() why we need
>  	 * a power domain reference here.
>  	 */
> -	wakeref = intel_display_power_get(dev_priv,
> -					  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
> +	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_PPS);

The purpose of this reference is to prevent a race when resetting the
PPS state (see the comment), so I think we could reuse
POWER_DOMAIN_DISPLAY_CORE instead of adding a new domain.

>  
>  	mutex_lock(&dev_priv->pps_mutex);
>  
> @@ -909,9 +908,7 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  
>  	mutex_unlock(&dev_priv->pps_mutex);
> -	intel_display_power_put(dev_priv,
> -				intel_aux_power_domain(dp_to_dig_port(intel_dp)),
> -				wakeref);
> +	intel_display_power_put(dev_priv, POWER_DOMAIN_PPS, wakeref);
>  	return 0;
>  }
>  
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
