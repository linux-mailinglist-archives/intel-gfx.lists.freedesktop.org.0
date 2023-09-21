Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5EB7A922A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 09:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A31610E573;
	Thu, 21 Sep 2023 07:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3DC210E573
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 07:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695281889; x=1726817889;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=R1o/bGSY6RoZDJl1DjB2BNTIf53Y2/ywp6tN29sBlXI=;
 b=LxEV90VFOKGyEBntBwRkw1Sb4nsaQ2qJjPgxV7ikSTZmqJUw3NbZOciM
 0OrgY8fnaB1oeMMNLl5BiVenGG3RZtE+vy0HJasOXgbfE/yR1TWmJW+ZW
 sv4KDHck/0a2QaV0aHkYj/pmBPc95F+bf7oDuIH+gOfYropH3nF+OcHlK
 ixaIQih7rQk0DPVGgcRSHsoUQaRq8hlF33zXFOUD0inVwvT8a4KNcqGFv
 LyX06ZWoslYwwL0nEu4dyecKhkPE8OvyG+HxJgmrVfu23oblRPfEM43FU
 Hrr7/xTUtMIAzOspcdk/q1ks+ZjDIUZgis3FM4KFlW/AfvmEQU8Y+MUOg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359830413"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="359830413"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:38:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="1077802385"
X-IronPort-AV: E=Sophos;i="6.03,164,1694761200"; d="scan'208";a="1077802385"
Received: from idubinov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.52.72])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 00:38:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230921071820.1969102-1-balasubramani.vivekanandan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230921071820.1969102-1-balasubramani.vivekanandan@intel.com>
Date: Thu, 21 Sep 2023 10:38:05 +0300
Message-ID: <878r90q8ma.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Print display info inside
 driver display initialization
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 21 Sep 2023, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> Separate the printing of display version and feature flags from the main
> driver probe to inside the display initialization. This is in alignment
> with isolating the display code from the main driver and helps Xe driver
> to resuse it.
>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 5 +++++
>  drivers/gpu/drm/i915/i915_driver.c                  | 2 --
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 9d9b034b9bdc..2fbb3c956336 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -380,6 +380,8 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
>  
>  void intel_display_driver_register(struct drm_i915_private *i915)
>  {
> +	struct drm_printer p = drm_info_printer(i915->drm.dev);

It needs to be a debug printer, not info printer, maybe:

	struct drm_printer p = drm_debug_printer("display info:");

Unfortunately, it's not device specific, but that's for another set of
patches another day.

BR,
Jani.

> +
>  	if (!HAS_DISPLAY(i915))
>  		return;
>  
> @@ -407,6 +409,9 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>  	 * fbdev->async_cookie.
>  	 */
>  	drm_kms_helper_poll_init(&i915->drm);
> +
> +	intel_display_device_info_print(DISPLAY_INFO(i915),
> +					DISPLAY_RUNTIME_INFO(i915), &p);
>  }
>  
>  /* part #1: call before irq uninstall */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index e5d693904123..d50347e5773a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -699,8 +699,6 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
>  
>  		intel_device_info_print(INTEL_INFO(dev_priv),
>  					RUNTIME_INFO(dev_priv), &p);
> -		intel_display_device_info_print(DISPLAY_INFO(dev_priv),
> -						DISPLAY_RUNTIME_INFO(dev_priv), &p);
>  		i915_print_iommu_status(dev_priv, &p);
>  		for_each_gt(gt, dev_priv, i)
>  			intel_gt_info_print(&gt->info, &p);

-- 
Jani Nikula, Intel
