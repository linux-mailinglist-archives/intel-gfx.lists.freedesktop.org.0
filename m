Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7C73FDF96
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78616E1ED;
	Wed,  1 Sep 2021 16:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387146E1ED
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:17:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="199028685"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="199028685"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:14:12 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="541884705"
Received: from frodasgo-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.255.39.35])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:14:10 -0700
Date: Wed, 1 Sep 2021 12:14:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YS+m0TVfFXrBkcjy@intel.com>
References: <cover.1630327990.git.jani.nikula@intel.com>
 <097390f12da8de57c9d52ad675309d0422dec8fb.1630327990.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <097390f12da8de57c9d52ad675309d0422dec8fb.1630327990.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/debugfs: clean up LPSP capable
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

On Mon, Aug 30, 2021 at 03:53:41PM +0300, Jani Nikula wrote:
> Clean up the LPSP capability printout. No functional changes.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 44 +++++++------------
>  1 file changed, 17 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d2a14a9c6857..a6dcb95cfc1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2225,14 +2225,12 @@ static int i915_psr_status_show(struct seq_file *m, void *data)
>  }
>  DEFINE_SHOW_ATTRIBUTE(i915_psr_status);
>  
> -#define LPSP_CAPABLE(COND) (COND ? seq_puts(m, "LPSP: capable\n") : \
> -				seq_puts(m, "LPSP: incapable\n"))
> -
>  static int i915_lpsp_capability_show(struct seq_file *m, void *data)
>  {
>  	struct drm_connector *connector = m->private;
>  	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	struct intel_encoder *encoder;
> +	bool lpsp_capable = false;
>  
>  	encoder = intel_attached_encoder(to_intel_connector(connector));
>  	if (!encoder)
> @@ -2241,35 +2239,27 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
>  	if (connector->status != connector_status_connected)
>  		return -ENODEV;
>  
> -	if (DISPLAY_VER(i915) >= 13) {
> -		LPSP_CAPABLE(encoder->port <= PORT_B);
> -		return 0;
> -	}
> -
> -	switch (DISPLAY_VER(i915)) {
> -	case 12:
> +	if (DISPLAY_VER(i915) >= 13)
> +		lpsp_capable = encoder->port <= PORT_B;
> +	else if (DISPLAY_VER(i915) >= 12)
>  		/*
>  		 * Actually TGL can drive LPSP on port till DDI_C
>  		 * but there is no physical connected DDI_C on TGL sku's,
>  		 * even driver is not initilizing DDI_C port for gen12.
>  		 */
> -		LPSP_CAPABLE(encoder->port <= PORT_B);
> -		break;
> -	case 11:
> -		LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> -			     connector->connector_type == DRM_MODE_CONNECTOR_eDP);
> -		break;
> -	case 10:
> -	case 9:
> -		LPSP_CAPABLE(encoder->port == PORT_A &&
> -			     (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> -			     connector->connector_type == DRM_MODE_CONNECTOR_eDP  ||
> -			     connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort));
> -		break;
> -	default:
> -		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> -			LPSP_CAPABLE(connector->connector_type == DRM_MODE_CONNECTOR_eDP);
> -	}
> +		lpsp_capable = encoder->port <= PORT_B;
> +	else if (DISPLAY_VER(i915) == 11)
> +		lpsp_capable = (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> +				connector->connector_type == DRM_MODE_CONNECTOR_eDP);
> +	else if (IS_DISPLAY_VER(i915, 9, 10))
> +		lpsp_capable = (encoder->port == PORT_A &&
> +				(connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> +				 connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
> +				 connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort));
> +	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> +		lpsp_capable = connector->connector_type == DRM_MODE_CONNECTOR_eDP;
> +
> +	seq_printf(m, "LPSP: %s\n", lpsp_capable ? "capable" : "incapable");
>  
>  	return 0;
>  }
> -- 
> 2.20.1
> 
