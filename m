Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD32949226
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 15:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6F510E37E;
	Tue,  6 Aug 2024 13:53:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O/y65yxq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A806410E375;
 Tue,  6 Aug 2024 13:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722952394; x=1754488394;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=SbmXRq79eckaa4FMBLkgA+KlXFLnMDiZiV9D/k8yQls=;
 b=O/y65yxqnkXpHk8TsznlFIrPMZnlE1SvjwRGONfBS/Mu4DOVV+EISk/g
 9AlvMNHZhGtIpkJLYMfh4oXUxq06+ZMvxA46sjK01YzH9z8N5QnHsvsw0
 82QUdStaJr02+mORzd8L48sotirYNUkjgrr0dcy1DfhxSotCh6/lZZIs1
 duLld2KFesRL/YlFHb78ULWrUhO5YjUW5zecNd7LFNSfpKqck/5gzYOb9
 rn3xvdne5oQKsrUTNvPiLJJ03H4xa8XgnTC1cv+AbVDt/5nCrpqG2EV8c
 UD20rbDd8Htu/qAr87hIlDQt4Zgj3E19OPxtMuZTHeEUspKngvYXEzte9 A==;
X-CSE-ConnectionGUID: eVVG2iu9SGWbjHwzSEdPig==
X-CSE-MsgGUID: 0aJFLeqSRlKtLEWeyOzmEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="43494468"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="43494468"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:53:13 -0700
X-CSE-ConnectionGUID: hlFegPElSXS8kcCRS4d8qg==
X-CSE-MsgGUID: //ntiztaSiCh3RoHleyDpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="87461712"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:53:11 -0700
Date: Tue, 6 Aug 2024 16:53:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/opregion: unify
 intel_encoder/intel_connector naming
Message-ID: <ZrIq2VfXDcuDWLCS@ideak-desk.fi.intel.com>
References: <cover.1722444150.git.jani.nikula@intel.com>
 <d573ffe96416121297d9febb92156ea845de2b80.1722444150.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d573ffe96416121297d9febb92156ea845de2b80.1722444150.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 31, 2024 at 07:44:34PM +0300, Jani Nikula wrote:
> Prefer the short encoder/connector names for struct
> intel_encoder/intel_connector variables and parameters.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 23 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_opregion.h |  4 ++--
>  2 files changed, 13 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 4ff646a7f05d..4c9b9e7ebc91 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -381,10 +381,10 @@ static int swsci(struct drm_i915_private *dev_priv,
>  #define DISPLAY_TYPE_EXTERNAL_FLAT_PANEL	2
>  #define DISPLAY_TYPE_INTERNAL_FLAT_PANEL	3
>  
> -int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
> +int intel_opregion_notify_encoder(struct intel_encoder *encoder,
>  				  bool enable)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	u32 parm = 0;
>  	u32 type = 0;
>  	u32 port;
> @@ -399,10 +399,10 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
>  	if (ret)
>  		return ret;
>  
> -	if (intel_encoder->type == INTEL_OUTPUT_DSI)
> +	if (encoder->type == INTEL_OUTPUT_DSI)
>  		port = 0;
>  	else
> -		port = intel_encoder->port;
> +		port = encoder->port;
>  
>  	if (port == PORT_E)  {
>  		port = 0;
> @@ -421,15 +421,15 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
>  	if (port > 4) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[ENCODER:%d:%s] port %c (index %u) out of bounds for display power state notification\n",
> -			    intel_encoder->base.base.id, intel_encoder->base.name,
> -			    port_name(intel_encoder->port), port);
> +			    encoder->base.base.id, encoder->base.name,
> +			    port_name(encoder->port), port);
>  		return -EINVAL;
>  	}
>  
>  	if (!enable)
>  		parm |= 4 << 8;
>  
> -	switch (intel_encoder->type) {
> +	switch (encoder->type) {
>  	case INTEL_OUTPUT_ANALOG:
>  		type = DISPLAY_TYPE_CRT;
>  		break;
> @@ -446,7 +446,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
>  	default:
>  		drm_WARN_ONCE(&dev_priv->drm, 1,
>  			      "unsupported intel_encoder type %d\n",
> -			      intel_encoder->type);
> +			      encoder->type);
>  		return -EINVAL;
>  	}
>  
> @@ -1093,7 +1093,7 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
>  
>  /**
>   * intel_opregion_get_edid - Fetch EDID from ACPI OpRegion mailbox #5
> - * @intel_connector: eDP connector
> + * @connector: eDP connector
>   *
>   * This reads the ACPI Opregion mailbox #5 to extract the EDID that is passed
>   * to it.
> @@ -1102,10 +1102,9 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
>   * The EDID in the OpRegion, or NULL if there is none or it's invalid.
>   *
>   */
> -const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_connector)
> +const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector)
>  {
> -	struct drm_connector *connector = &intel_connector->base;
> -	struct drm_i915_private *i915 = to_i915(connector->dev);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_opregion *opregion = i915->display.opregion;
>  	const struct drm_edid *drm_edid;
>  	const void *edid;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 4b2b8e752632..4dcd13c672e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -46,7 +46,7 @@ void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>  
>  bool intel_opregion_asle_present(struct drm_i915_private *i915);
>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
> -int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
> +int intel_opregion_notify_encoder(struct intel_encoder *encoder,
>  				  bool enable);
>  int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
>  				  pci_power_t state);
> @@ -98,7 +98,7 @@ static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>  }
>  
>  static inline int
> -intel_opregion_notify_encoder(struct intel_encoder *intel_encoder, bool enable)
> +intel_opregion_notify_encoder(struct intel_encoder *encoder, bool enable)
>  {
>  	return 0;
>  }
> -- 
> 2.39.2
> 
