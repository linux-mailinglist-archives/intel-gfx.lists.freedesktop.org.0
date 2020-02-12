Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBAB15A670
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 11:32:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EA46F4B3;
	Wed, 12 Feb 2020 10:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547E86F4B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 10:32:51 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 59so1374752otp.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 02:32:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gzv9rt4/sNqw8bJZ2qsq654js0pdgt12w5ZQU73AU3k=;
 b=OREqaBD3mLyL8xsGrbmz2XOz+kxW/OBO3pQLJEbK966Cy2E1Jld9w8S/8U3ixl/+kZ
 IFlz41UiL4eFXeEeYJW2dfqGhBJp99h3AnUGB55yddLlx2oTdKISA1s3g7BpGUcaHlDF
 qhDIXSGJFOPVbhuXD1MrAEqFygbQwv2nQvhlvcFKH8azkFQcgS13fjEaoYJ73RpiTw5y
 rGR14DGbMFzGKyL837ujv/WDdmsmtqcSnlH2JG0tk34RCq5Dbd5pEx4wLetImXXMtp5B
 gpSUk+TwptlU0bqMZX84Z+KvbNyoOFzSvio4iDFcHIvnSP8hsOA8DRmci4xbwxS0ZkyU
 z1jA==
X-Gm-Message-State: APjAAAXtZ/k2K8RQwZpVcmpvPooeu1alyqibrGWj5Z3uqtS96p3yCLg+
 Oi9x2qmVf3FzpAyZgnSVIttBIt3eQFhw7OEStOkK6eek
X-Google-Smtp-Source: APXvYqyy0kS7yyyUWf4LuMflnzcOEsRX4eqdYDT7PPvW+fTKcUJ6nyzjykovZhYc07IsNLnHlvxZIEw2/zbxRrszOjs=
X-Received: by 2002:a9d:7559:: with SMTP id b25mr8433715otl.189.1581503570435; 
 Wed, 12 Feb 2020 02:32:50 -0800 (PST)
MIME-Version: 1.0
References: <1654227.8mz0SueHsU@kreacher> <1759702.XAW9B0MHEz@kreacher>
In-Reply-To: <1759702.XAW9B0MHEz@kreacher>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 12 Feb 2020 11:32:39 +0100
Message-ID: <CAJZ5v0g7H=hQPZ18qtzXv_c_w_QL1i4vuKcogygipcH2vz689Q@mail.gmail.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
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
Cc: Linux PM <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 12, 2020 at 12:40 AM Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
>
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
>
> Call cpu_latency_qos_add/update/remove_request() instead of
> pm_qos_add/update/remove_request(), respectively, because the
> latter are going to be dropped.
>
> No intentional functional impact.
>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Please note that the whole series is available here:

https://lore.kernel.org/linux-pm/1654227.8mz0SueHsU@kreacher/

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
>          * lowest possible wakeup latency and so prevent the cpu from going into
>          * deep sleep states.
>          */
> -       pm_qos_update_request(&i915->pm_qos, 0);
> +       cpu_latency_qos_update_request(&i915->pm_qos, 0);
>
>         intel_dp_check_edp(intel_dp);
>
> @@ -1488,7 +1488,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>
>         ret = recv_bytes;
>  out:
> -       pm_qos_update_request(&i915->pm_qos, PM_QOS_DEFAULT_VALUE);
> +       cpu_latency_qos_update_request(&i915->pm_qos, PM_QOS_DEFAULT_VALUE);
>
>         if (vdd)
>                 edp_panel_vdd_off(intel_dp, false);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index f7385abdd74b..74481a189cfc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -502,8 +502,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>         mutex_init(&dev_priv->backlight_lock);
>
>         mutex_init(&dev_priv->sb_lock);
> -       pm_qos_add_request(&dev_priv->sb_qos,
> -                          PM_QOS_CPU_DMA_LATENCY, PM_QOS_DEFAULT_VALUE);
> +       cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
>
>         mutex_init(&dev_priv->av_mutex);
>         mutex_init(&dev_priv->wm.wm_mutex);
> @@ -568,7 +567,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
>         vlv_free_s0ix_state(dev_priv);
>         i915_workqueues_cleanup(dev_priv);
>
> -       pm_qos_remove_request(&dev_priv->sb_qos);
> +       cpu_latency_qos_remove_request(&dev_priv->sb_qos);
>         mutex_destroy(&dev_priv->sb_lock);
>  }
>
> @@ -1226,8 +1225,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>                 }
>         }
>
> -       pm_qos_add_request(&dev_priv->pm_qos, PM_QOS_CPU_DMA_LATENCY,
> -                          PM_QOS_DEFAULT_VALUE);
> +       cpu_latency_qos_add_request(&dev_priv->pm_qos, PM_QOS_DEFAULT_VALUE);
>
>         intel_gt_init_workarounds(dev_priv);
>
> @@ -1273,7 +1271,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  err_msi:
>         if (pdev->msi_enabled)
>                 pci_disable_msi(pdev);
> -       pm_qos_remove_request(&dev_priv->pm_qos);
> +       cpu_latency_qos_remove_request(&dev_priv->pm_qos);
>  err_mem_regions:
>         intel_memory_regions_driver_release(dev_priv);
>  err_ggtt:
> @@ -1296,7 +1294,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>         if (pdev->msi_enabled)
>                 pci_disable_msi(pdev);
>
> -       pm_qos_remove_request(&dev_priv->pm_qos);
> +       cpu_latency_qos_remove_request(&dev_priv->pm_qos);
>  }
>
>  /**
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
> index cbfb7171d62d..0648eda309e4 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -60,7 +60,7 @@ static void __vlv_punit_get(struct drm_i915_private *i915)
>          * to the Valleyview P-unit and not all sideband communications.
>          */
>         if (IS_VALLEYVIEW(i915)) {
> -               pm_qos_update_request(&i915->sb_qos, 0);
> +               cpu_latency_qos_update_request(&i915->sb_qos, 0);
>                 on_each_cpu(ping, NULL, 1);
>         }
>  }
> @@ -68,7 +68,8 @@ static void __vlv_punit_get(struct drm_i915_private *i915)
>  static void __vlv_punit_put(struct drm_i915_private *i915)
>  {
>         if (IS_VALLEYVIEW(i915))
> -               pm_qos_update_request(&i915->sb_qos, PM_QOS_DEFAULT_VALUE);
> +               cpu_latency_qos_update_request(&i915->sb_qos,
> +                                              PM_QOS_DEFAULT_VALUE);
>
>         iosf_mbi_punit_release();
>  }
> --
> 2.16.4
>
>
>
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
