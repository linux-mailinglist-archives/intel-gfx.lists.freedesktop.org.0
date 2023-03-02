Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ADE6A872C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E796D10E27C;
	Thu,  2 Mar 2023 16:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBB5B10E4C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677775590; x=1709311590;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wPXBUGeAlNWe8xNRMj5BQTC/zdSHt4rSgRc3ainC3Eo=;
 b=K8Ncn6MvV3IFa+bTOySYxqAN5zjOFWQN5Q09TrM206A+QbNUGg/l4Bkk
 Lu9qIiysHF77Zd0kz/L+RcmfoMW7ZN1sy0gjv0evoHi89lO9pN0/uAJF7
 gGA+SWSlO2yhWTQICOHiWZ05Tvnt+6GeW/RqCbjJYapD/QRCpfQuEOB8r
 8pxYkPQ48CPp2lnBYDngcTPatF2RBSiaiCs/LsV6XopCHgFHsbn75Obii
 4hEhR6DMNaDhrWFAQVwq+6Kk8o6ELHh9wHG3Odc5g+uCEJr/zOgoIG5M4
 k8jg2boFZFfc993qWFtFEVjUZp0Tv0Yh4qyYTRKzh6cYuUSwUdkZvcDUT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="337088151"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="337088151"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:46:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="784901726"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="784901726"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2023 08:46:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 18:46:27 +0200
Date: Thu, 2 Mar 2023 18:46:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZADS4xInFTFbNVWa@intel.com>
References: <20230302161617.2978821-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230302161617.2978821-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: move IPS debugfs to
 hsw_ips.c
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

On Thu, Mar 02, 2023 at 06:16:17PM +0200, Jani Nikula wrote:
> Follow the style of placing debugfs next to the implementation.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Some ideas for future enhancements:
- only register when IPS is actually supported
- make it per-crtc since IPS only exists on pipe A
- report the software state of IPS enable vs. disable
- there's a false color bit just like with fbc, could
  hook that up to help verify that it actually works

> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c        | 37 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/hsw_ips.h        |  2 +
>  .../drm/i915/display/intel_display_debugfs.c  | 30 +--------------
>  3 files changed, 41 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> index 83aa3800245f..2910f5d0f3e2 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -267,3 +267,40 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
>  		crtc_state->ips_enabled = true;
>  	}
>  }
> +
> +static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 = m->private;
> +	intel_wakeref_t wakeref;
> +
> +	if (!HAS_IPS(i915))
> +		return -ENODEV;
> +
> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +
> +	seq_printf(m, "Enabled by kernel parameter: %s\n",
> +		   str_yes_no(i915->params.enable_ips));
> +
> +	if (DISPLAY_VER(i915) >= 8) {
> +		seq_puts(m, "Currently: unknown\n");
> +	} else {
> +		if (intel_de_read(i915, IPS_CTL) & IPS_ENABLE)
> +			seq_puts(m, "Currently: enabled\n");
> +		else
> +			seq_puts(m, "Currently: disabled\n");
> +	}
> +
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(hsw_ips_debugfs_status);
> +
> +void hsw_ips_debugfs_register(struct drm_i915_private *i915)
> +{
> +	struct drm_minor *minor = i915->drm.primary;
> +
> +	debugfs_create_file("i915_ips_status", 0444, minor->debugfs_root,
> +			    i915, &hsw_ips_debugfs_status_fops);
> +}
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i915/display/hsw_ips.h
> index 4564dee497d7..7ed6061874f7 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.h
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/types.h>
>  
> +struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> @@ -22,5 +23,6 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
>  int hsw_ips_compute_config(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc);
>  void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
> +void hsw_ips_debugfs_register(struct drm_i915_private *i915);
>  
>  #endif /* __HSW_IPS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 25013f303c82..8be606bfd2b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -8,6 +8,7 @@
>  #include <drm/drm_debugfs.h>
>  #include <drm/drm_fourcc.h>
>  
> +#include "hsw_ips.h"
>  #include "i915_debugfs.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> @@ -49,33 +50,6 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
>  	return 0;
>  }
>  
> -static int i915_ips_status(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> -	intel_wakeref_t wakeref;
> -
> -	if (!HAS_IPS(dev_priv))
> -		return -ENODEV;
> -
> -	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> -
> -	seq_printf(m, "Enabled by kernel parameter: %s\n",
> -		   str_yes_no(dev_priv->params.enable_ips));
> -
> -	if (DISPLAY_VER(dev_priv) >= 8) {
> -		seq_puts(m, "Currently: unknown\n");
> -	} else {
> -		if (intel_de_read(dev_priv, IPS_CTL) & IPS_ENABLE)
> -			seq_puts(m, "Currently: enabled\n");
> -		else
> -			seq_puts(m, "Currently: disabled\n");
> -	}
> -
> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> -
> -	return 0;
> -}
> -
>  static int i915_sr_status(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> @@ -1343,7 +1317,6 @@ static const struct file_operations i915_fifo_underrun_reset_ops = {
>  
>  static const struct drm_info_list intel_display_debugfs_list[] = {
>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
> -	{"i915_ips_status", i915_ips_status, 0},
>  	{"i915_sr_status", i915_sr_status, 0},
>  	{"i915_opregion", i915_opregion, 0},
>  	{"i915_vbt", i915_vbt, 0},
> @@ -1385,6 +1358,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  				 ARRAY_SIZE(intel_display_debugfs_list),
>  				 minor->debugfs_root, minor);
>  
> +	hsw_ips_debugfs_register(i915);
>  	intel_dmc_debugfs_register(i915);
>  	intel_fbc_debugfs_register(i915);
>  	intel_hpd_debugfs_register(i915);
> -- 
> 2.39.1

-- 
Ville Syrjälä
Intel
