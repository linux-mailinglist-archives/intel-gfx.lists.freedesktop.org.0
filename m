Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B202889BEB1
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 14:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE86310E332;
	Mon,  8 Apr 2024 12:13:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pgs89ogm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730B610E332
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 12:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712578438; x=1744114438;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zsu7uI2Sc12zx6gqPiM8S3Gj5wDL5IQshWrs2YJPWkk=;
 b=Pgs89ogmN35iDOSGbmeEze7nJyXj4/35b9+jqsizs8dEQ9m6KCuKVz8U
 p23rNUaYA+0T3MzU5aJmgSybU5IvuCPtFaxz6nEjFtmJXpsQ4nmRi3Qsg
 ln92taB7JelYDOapEK2W36pnNHhCLbIe/bNjO+R4oziWnSsjrBJXI6VzF
 2Y+06ksbNxZyffZCZJuupnfX6iEzgtrwyG0QQZKcWjRuiPuzx1xGTRSvu
 uxGxQ7Difk8pYcookn9tO90MuV0kWU6lDaIy27QRrlbxJkmZSYS6ihEfM
 BaRrK81ylyeqF+hH9Sye2YTH7Pz5CcmPeletxAgOd6Ty2tdQhZBaFWegf A==;
X-CSE-ConnectionGUID: qDTzmtG4QBakYu5jzmlq0g==
X-CSE-MsgGUID: UKrh+JbQRMeIuWVBLBAj7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="8075930"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="8075930"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 05:13:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="827792219"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="827792219"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Apr 2024 05:13:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Apr 2024 15:13:54 +0300
Date: Mon, 8 Apr 2024 15:13:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pps: move pps debugfs file to intel_pps.c
Message-ID: <ZhPfgmnCtHql8VXL@intel.com>
References: <20240408094357.3085319-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240408094357.3085319-1-jani.nikula@intel.com>
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

On Mon, Apr 08, 2024 at 12:43:57PM +0300, Jani Nikula wrote:
> Continue with placing debugfs next to the implementation.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 27 ++--------------
>  drivers/gpu/drm/i915/display/intel_pps.c      | 32 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_pps.h      |  2 ++
>  3 files changed, 36 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 5235f8758ef1..0feffe8d4e45 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -31,6 +31,7 @@
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_panel.h"
> +#include "intel_pps.h"
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
>  #include "intel_wm.h"
> @@ -1095,27 +1096,6 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  	intel_display_debugfs_params(i915);
>  }
>  
> -static int i915_panel_show(struct seq_file *m, void *data)
> -{
> -	struct intel_connector *connector = m->private;
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -
> -	if (connector->base.status != connector_status_connected)
> -		return -ENODEV;
> -
> -	seq_printf(m, "Panel power up delay: %d\n",
> -		   intel_dp->pps.panel_power_up_delay);
> -	seq_printf(m, "Panel power down delay: %d\n",
> -		   intel_dp->pps.panel_power_down_delay);
> -	seq_printf(m, "Backlight on delay: %d\n",
> -		   intel_dp->pps.backlight_on_delay);
> -	seq_printf(m, "Backlight off delay: %d\n",
> -		   intel_dp->pps.backlight_off_delay);
> -
> -	return 0;
> -}
> -DEFINE_SHOW_ATTRIBUTE(i915_panel);
> -
>  static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> @@ -1560,12 +1540,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  		return;
>  
>  	intel_drrs_connector_debugfs_add(connector);
> +	intel_pps_connector_debugfs_add(connector);
>  	intel_psr_connector_debugfs_add(connector);
>  
> -	if (connector_type == DRM_MODE_CONNECTOR_eDP)
> -		debugfs_create_file("i915_panel_timings", 0444, root,
> -				    connector, &i915_panel_fops);
> -
>  	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>  	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
>  	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index b5d9920f8341..88a44d93f82b 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1670,6 +1670,38 @@ void intel_pps_setup(struct drm_i915_private *i915)
>  		i915->display.pps.mmio_base = PPS_BASE;
>  }
>  
> +static int intel_pps_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +
> +	if (connector->base.status != connector_status_connected)
> +		return -ENODEV;

That check seems completely pointless. Could be removed as a
followup.

Hmm. The other question that comes to mind is whether anyone has
ever used this file? I for sure have not. So I'm wondering if we
could just nuke the whole thing?

Anyways
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
> +	seq_printf(m, "Panel power up delay: %d\n",
> +		   intel_dp->pps.panel_power_up_delay);
> +	seq_printf(m, "Panel power down delay: %d\n",
> +		   intel_dp->pps.panel_power_down_delay);
> +	seq_printf(m, "Backlight on delay: %d\n",
> +		   intel_dp->pps.backlight_on_delay);
> +	seq_printf(m, "Backlight off delay: %d\n",
> +		   intel_dp->pps.backlight_off_delay);
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(intel_pps);
> +
> +void intel_pps_connector_debugfs_add(struct intel_connector *connector)
> +{
> +	struct dentry *root = connector->base.debugfs_entry;
> +	int connector_type = connector->base.connector_type;
> +
> +	if (connector_type == DRM_MODE_CONNECTOR_eDP)
> +		debugfs_create_file("i915_panel_timings", 0444, root,
> +				    connector, &intel_pps_fops);
> +
> +}
> +
>  void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
>  	i915_reg_t pp_reg;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index a2c2467e3c22..07ef96ca8da2 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -51,6 +51,8 @@ void vlv_pps_init(struct intel_encoder *encoder,
>  void intel_pps_unlock_regs_wa(struct drm_i915_private *i915);
>  void intel_pps_setup(struct drm_i915_private *i915);
>  
> +void intel_pps_connector_debugfs_add(struct intel_connector *connector);
> +
>  void assert_pps_unlocked(struct drm_i915_private *i915, enum pipe pipe);
>  
>  #endif /* __INTEL_PPS_H__ */
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
