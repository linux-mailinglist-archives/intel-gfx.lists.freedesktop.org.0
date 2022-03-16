Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D22E74DAC60
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 09:23:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B53410E558;
	Wed, 16 Mar 2022 08:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 200DD10E558
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 08:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647419035; x=1678955035;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=tIPIX5sTbsIVZ1h6C/tiY2jqoRok0TOtwCiHP7BAzec=;
 b=kht9XuIPk4YgcKvBTtFeCOv3gysW486gLnxOro57KXNUUW2So1sfazJw
 RoVRXse3p5bzKajd8g9K5kmHMEVlbEfUKDGRriZVDJW1ENGe08VPADTFb
 iGkoCxRH10eF8M2GSx5LkiVNSxj98PcFFXgYIJ1tqRDEE2XeFx3RuWGh3
 sleJc2Pd60QsbrYuN0gHnpf7Pp9/0zwN0x2tFIiKEGi2U7KYqaYT7m/WU
 cXvN0JrtoV5kTJjXPiyvQ7PkGSK4cQlSH3t8GDnE9dTHOP0rfSP04U1GC
 +QMEfpvuBZ9+h2yZLLQDY8/SJNmfecEORPjqGsOuJUHmmi3ZWRBpjUm30 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="281301238"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="281301238"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 01:23:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="540811500"
Received: from jgarrosx-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.45])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 01:23:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220314225837.42816-2-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220314225837.42816-1-vinod.govindapillai@intel.com>
 <20220314225837.42816-2-vinod.govindapillai@intel.com>
Date: Wed, 16 Mar 2022 10:23:13 +0200
Message-ID: <87v8wenw5q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] drm/i915/display: Add disable wait
 time for power state connector
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

On Tue, 15 Mar 2022, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
>
> Add connector disable wait time for a power state connector
> for monitor power sleep state.
>
> Monitors like LG 27UL650-W, 27UK850 goes into power sleep state
> and generates long duration hotplug events even the monitor
> connected for display, create a debugfs entry to enable sleep
> while monitor is in power sleep state with hotplug event.

Basically this patch adds three things that don't have any connection
between them in code, and don't actually achieve any of the things
mentioned in the commit message. Apart from adding the debugfs, but it's
not used for anything.

More comments inline.

BR,
Jani.

>
> Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_connector.c    |  3 +
>  .../drm/i915/display/intel_display_debugfs.c  | 58 +++++++++++++++++++
>  .../drm/i915/display/intel_display_debugfs.h  |  7 +++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>  5 files changed, 72 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
> index c65f95a9a1ec..d7ad62df30e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -126,6 +126,9 @@ int intel_connector_register(struct drm_connector *connector)
>  
>  	intel_connector_debugfs_add(intel_connector);
>  
> +	intel_connector->disabled_time =
> +		get_jiffies_64() - msecs_to_jiffies(MSEC_PER_SEC * 10);
> +

In this patch, this is just unused code.

>  	return 0;
>  
>  err_backlight:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 41b81d5dd5f4..e3fc42b53ea9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -26,6 +26,17 @@
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
>  
> +struct {
> +	/* manufacturer and product code of connector from edid data */
> +	u8 edid_manuf_code[2];
> +	u8 edid_prod_code[2];
> +} wakeup_hpd_monitor_list[] = {
> +	/* LG 27UL650-W, 27UK850 */
> +	{{0x1e, 0x6d}, {0x06, 0x77}},
> +	{{0x1e, 0x6d}, {0x07, 0x77}},
> +	{{0x26, 0xcd}, {0x40, 0x66}},
> +};
> +
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
>  {
>  	return to_i915(node->minor->dev);
> @@ -2021,6 +2032,52 @@ static const struct file_operations i915_fifo_underrun_reset_ops = {
>  	.llseek = default_llseek,
>  };
>  
> +bool intel_connector_need_suppress_wakeup_hpd(struct intel_connector *connector)
> +{
> +	int i;
> +	struct edid *edid = connector->detect_edid;
> +
> +	if (!edid)
> +		return false;
> +
> +	for (i = 0; i < ARRAY_SIZE(wakeup_hpd_monitor_list); i++) {
> +		if (*((u16 *)&wakeup_hpd_monitor_list[i].edid_manuf_code) !=
> +		    *((u16 *)&edid->mfg_id))
> +			continue;
> +
> +		if (*((u16 *)&wakeup_hpd_monitor_list[i].edid_prod_code) !=
> +		    *((u16 *)&edid->prod_code))
> +			continue;
> +
> +		return true;
> +	}
> +
> +	return false;
> +}

Please let's not duplicate the EDID quirk mechanism from drm_edid.c.

> +
> +static int i915_suppress_wakeup_hpd_set(void *data, u64 val)
> +{
> +	struct drm_i915_private *i915 = data;
> +
> +	drm_dbg(&i915->drm, "Suppress wakeup HPDs enabled: %s\n", yesno(val));
> +
> +	i915->hotplug.suppress_wakeup_hpd_enabled = val;
> +
> +	return 0;
> +}
> +
> +static int i915_suppress_wakeup_hpd_get(void *data, u64 *val)
> +{
> +	struct drm_i915_private *i915 = data;
> +
> +	*val = i915->hotplug.suppress_wakeup_hpd_enabled;
> +
> +	return 0;
> +}

So this debugfs file is completely separated from the quirk thing above,
which seems odd. Up to the caller to handle all of them?

> +
> +DEFINE_SIMPLE_ATTRIBUTE(i915_suppress_wakeup_hpd_fops, i915_suppress_wakeup_hpd_get,
> +			i915_suppress_wakeup_hpd_set, "%llu\n");
> +
>  static const struct drm_info_list intel_display_debugfs_list[] = {
>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
>  	{"i915_ips_status", i915_ips_status, 0},
> @@ -2055,6 +2112,7 @@ static const struct {
>  	{"i915_ipc_status", &i915_ipc_status_fops},
>  	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
>  	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
> +	{"i915_suppress_wakeup_hpd", &i915_suppress_wakeup_hpd_fops}
>  };
>  
>  void intel_display_debugfs_register(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.h b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
> index d3a79c07c384..58be26fcdf46 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
> @@ -6,6 +6,8 @@
>  #ifndef __INTEL_DISPLAY_DEBUGFS_H__
>  #define __INTEL_DISPLAY_DEBUGFS_H__
>  
> +#include <linux/types.h>
> +
>  struct drm_crtc;
>  struct drm_i915_private;
>  struct intel_connector;
> @@ -14,10 +16,15 @@ struct intel_connector;
>  void intel_display_debugfs_register(struct drm_i915_private *i915);
>  void intel_connector_debugfs_add(struct intel_connector *connector);
>  void intel_crtc_debugfs_add(struct drm_crtc *crtc);
> +bool intel_connector_need_suppress_wakeup_hpd(struct intel_connector *connector);
>  #else
>  static inline void intel_display_debugfs_register(struct drm_i915_private *i915) {}
>  static inline void intel_connector_debugfs_add(struct intel_connector *connector) {}
>  static inline void intel_crtc_debugfs_add(struct drm_crtc *crtc) {}
> +static inline bool intel_connector_need_suppress_wakeup_hpd(struct intel_connector *connector)
> +{
> +	return false;
> +}

A functional feature should not depend on CONFIG_DEBUG_FS.

>  #endif
>  
>  #endif /* __INTEL_DISPLAY_DEBUGFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 5e8d7394a394..deac7cea82c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -538,6 +538,8 @@ struct intel_connector {
>  	struct work_struct modeset_retry_work;
>  
>  	struct intel_hdcp hdcp;
> +	/* Timestamp when the connector got disabled */
> +	u64 disabled_time;
>  };
>  
>  struct intel_digital_connector_state {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 943267393ecb..522c9a278172 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -145,6 +145,8 @@ struct i915_hotplug {
>  	 * blocked behind the non-DP one.
>  	 */
>  	struct workqueue_struct *dp_wq;
> +
> +	bool suppress_wakeup_hpd_enabled;
>  };
>  
>  #define I915_GEM_GPU_DOMAINS \

-- 
Jani Nikula, Intel Open Source Graphics Center
