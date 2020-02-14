Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD4515D302
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 08:42:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC956E519;
	Fri, 14 Feb 2020 07:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB536E492
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 07:42:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 23:42:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,439,1574150400"; d="scan'208";a="227513170"
Received: from ablank-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 23:41:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux PM <linux-pm@vger.kernel.org>
In-Reply-To: <1759702.XAW9B0MHEz@kreacher>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1654227.8mz0SueHsU@kreacher> <1759702.XAW9B0MHEz@kreacher>
Date: Fri, 14 Feb 2020 09:42:26 +0200
Message-ID: <87k14p62e5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 16/28] drm: i915: Call cpu_latency_qos_*()
 instead of pm_qos_*()
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
Cc: intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Feb 2020, "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
>
> Call cpu_latency_qos_add/update/remove_request() instead of
> pm_qos_add/update/remove_request(), respectively, because the
> latter are going to be dropped.
>
> No intentional functional impact.

Heh, that's careful, I usually boldly claim "no functional changes" on
patches like this.

For merging via whichever tree suits you,

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c |  4 ++--
>  drivers/gpu/drm/i915/i915_drv.c         | 12 +++++-------
>  drivers/gpu/drm/i915/intel_sideband.c   |  5 +++--
>  3 files changed, 10 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c7424e2a04a3..208457005a11 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1360,7 +1360,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	 * lowest possible wakeup latency and so prevent the cpu from going into
>  	 * deep sleep states.
>  	 */
> -	pm_qos_update_request(&i915->pm_qos, 0);
> +	cpu_latency_qos_update_request(&i915->pm_qos, 0);
>  
>  	intel_dp_check_edp(intel_dp);
>  
> @@ -1488,7 +1488,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  
>  	ret = recv_bytes;
>  out:
> -	pm_qos_update_request(&i915->pm_qos, PM_QOS_DEFAULT_VALUE);
> +	cpu_latency_qos_update_request(&i915->pm_qos, PM_QOS_DEFAULT_VALUE);
>  
>  	if (vdd)
>  		edp_panel_vdd_off(intel_dp, false);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index f7385abdd74b..74481a189cfc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -502,8 +502,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	mutex_init(&dev_priv->backlight_lock);
>  
>  	mutex_init(&dev_priv->sb_lock);
> -	pm_qos_add_request(&dev_priv->sb_qos,
> -			   PM_QOS_CPU_DMA_LATENCY, PM_QOS_DEFAULT_VALUE);
> +	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
>  
>  	mutex_init(&dev_priv->av_mutex);
>  	mutex_init(&dev_priv->wm.wm_mutex);
> @@ -568,7 +567,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
>  	vlv_free_s0ix_state(dev_priv);
>  	i915_workqueues_cleanup(dev_priv);
>  
> -	pm_qos_remove_request(&dev_priv->sb_qos);
> +	cpu_latency_qos_remove_request(&dev_priv->sb_qos);
>  	mutex_destroy(&dev_priv->sb_lock);
>  }
>  
> @@ -1226,8 +1225,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  		}
>  	}
>  
> -	pm_qos_add_request(&dev_priv->pm_qos, PM_QOS_CPU_DMA_LATENCY,
> -			   PM_QOS_DEFAULT_VALUE);
> +	cpu_latency_qos_add_request(&dev_priv->pm_qos, PM_QOS_DEFAULT_VALUE);
>  
>  	intel_gt_init_workarounds(dev_priv);
>  
> @@ -1273,7 +1271,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  err_msi:
>  	if (pdev->msi_enabled)
>  		pci_disable_msi(pdev);
> -	pm_qos_remove_request(&dev_priv->pm_qos);
> +	cpu_latency_qos_remove_request(&dev_priv->pm_qos);
>  err_mem_regions:
>  	intel_memory_regions_driver_release(dev_priv);
>  err_ggtt:
> @@ -1296,7 +1294,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>  	if (pdev->msi_enabled)
>  		pci_disable_msi(pdev);
>  
> -	pm_qos_remove_request(&dev_priv->pm_qos);
> +	cpu_latency_qos_remove_request(&dev_priv->pm_qos);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
> index cbfb7171d62d..0648eda309e4 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -60,7 +60,7 @@ static void __vlv_punit_get(struct drm_i915_private *i915)
>  	 * to the Valleyview P-unit and not all sideband communications.
>  	 */
>  	if (IS_VALLEYVIEW(i915)) {
> -		pm_qos_update_request(&i915->sb_qos, 0);
> +		cpu_latency_qos_update_request(&i915->sb_qos, 0);
>  		on_each_cpu(ping, NULL, 1);
>  	}
>  }
> @@ -68,7 +68,8 @@ static void __vlv_punit_get(struct drm_i915_private *i915)
>  static void __vlv_punit_put(struct drm_i915_private *i915)
>  {
>  	if (IS_VALLEYVIEW(i915))
> -		pm_qos_update_request(&i915->sb_qos, PM_QOS_DEFAULT_VALUE);
> +		cpu_latency_qos_update_request(&i915->sb_qos,
> +					       PM_QOS_DEFAULT_VALUE);
>  
>  	iosf_mbi_punit_release();
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
