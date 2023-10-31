Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 442637DC964
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 10:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A87710E43C;
	Tue, 31 Oct 2023 09:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C4D10E43C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 09:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698744209; x=1730280209;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5NlhyFznaJkqqUHzoDS34I0WJyFMgZUTfVNaoJZvg4k=;
 b=iKbCZiJ8iUMyLMpizlVpcvTpUmxiJGdlsdnGeyuc/9fGFCH1e/GqjMhb
 DZty3fG5FDYp5oKA3U9zyDdpLI3eFUcz2s3tZXuLwNMTCGywR4hXAXvJP
 /cXBm7JR5Jnfp6VDsgn3oKebEgOfVs9w+752mcMMQexHCHBPu6645Ppwh
 wRSvSQ21KGHcCVXOfH9oqELZJHTQ2spcq9Q5DkN+IGEfVOrFPUFQdWyJ1
 XG+F8s/c/1CAIecrGZngrXbH3S97TUWwxy4DObyJiFCJEcKu2UcZSgrFr
 xsRkZU33ICkEmJPc12V4VeI9VfJulYf5JP2Z1PIatctbndE3YPvLPV0Ax g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="452520160"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="452520160"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 02:23:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789730201"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="789730201"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 02:23:27 -0700
Date: Tue, 31 Oct 2023 11:23:24 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZUDHjHfMjSy/xWpf@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231030155843.2251023-2-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 01/30] drm/i915/dp_mst: Fix race between
 connector registration and setup
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

On Mon, Oct 30, 2023 at 05:58:14PM +0200, Imre Deak wrote:
> After drm_connector_init() is called the connector is visible to the
> rest of the kernel via the drm_mode_config::connector_list. Make
> sure that the DSC AUX device and capabilities are setup by that time.
> 
> Another race condition is adding the connector to the connector list
> before drm_connector_helper_add() sets the connector helper functions.
> That's an unrelated issue, for which the fix is for a follow-up. One
> solution would be adding the connector to the connector list only
> during its registration in drm_connector_register().

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Fixes: 808b43fa7e56 ("drm/i915/dp_mst: Set connector DSC capabilities and decompression AUX")
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7b4628f4f1240..851b312bd8449 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1161,6 +1161,14 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  	intel_connector->port = port;
>  	drm_dp_mst_get_port_malloc(port);
>  
> +	/*
> +	 * TODO: set the AUX for the actual MST port decompressing the stream.
> +	 * At the moment the driver only supports enabling this globally in the
> +	 * first downstream MST branch, via intel_dp's (root port) AUX.
> +	 */
> +	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
> +	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
> +
>  	connector = &intel_connector->base;
>  	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
>  				 DRM_MODE_CONNECTOR_DisplayPort);
> @@ -1172,14 +1180,6 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  
>  	drm_connector_helper_add(connector, &intel_dp_mst_connector_helper_funcs);
>  
> -	/*
> -	 * TODO: set the AUX for the actual MST port decompressing the stream.
> -	 * At the moment the driver only supports enabling this globally in the
> -	 * first downstream MST branch, via intel_dp's (root port) AUX.
> -	 */
> -	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
> -	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
> -
>  	for_each_pipe(dev_priv, pipe) {
>  		struct drm_encoder *enc =
>  			&intel_dp->mst_encoders[pipe]->base.base;
> -- 
> 2.39.2
> 
