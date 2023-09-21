Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 537667A9404
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 14:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAC310E031;
	Thu, 21 Sep 2023 12:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35CCC10E031
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 12:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695297923; x=1726833923;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bfH7yEL1LAbMDLEchPYgrxthvl8wf1ii/uDy01aHVLQ=;
 b=O1LbZdWxDnjA6DVQEvsxw20sIxuqRTW3ZRUvefH2KbVPVoV+ZhtqwA9X
 5/6P0S5p8BhMwn6xJZ2qvU0OkicyBwmC/5TyRPKZ54Xi4H6pUbGtSIcpJ
 6GWXaJSBsW1MiStBo4QpQPDEnwTnlgrUuSkKlv7pEtpKaSadJWsebWOxi
 ODwacalxGOOpBBgKIq7TJltapXPy76xaXBsZlWQm9JsSSxy6pVYjoi470
 GOkbQbGrtJHw9vJnBJylZA8DuLcm1+nI5YMpjojWfg9JkqID4Wyb1EeWW
 wxEPGOeZrjObDi/VMsyY+4OR0xCKu5cQs4jNnEEFaXXzL17PGDYwpkOJ3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359880964"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="359880964"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:05:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="817356898"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="817356898"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:05:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230921105954.2002469-1-balasubramani.vivekanandan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230921105954.2002469-1-balasubramani.vivekanandan@intel.com>
Date: Thu, 21 Sep 2023 15:05:18 +0300
Message-ID: <87o7hvpw8x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Print display info
 inside driver display initialization
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
> v2: Replace drm_info_printer with drm_debug_printer (Jani)
>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 5 +++++
>  drivers/gpu/drm/i915/i915_driver.c                  | 2 --
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 9d9b034b9bdc..44b59ac301e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -380,6 +380,8 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
>  
>  void intel_display_driver_register(struct drm_i915_private *i915)
>  {
> +	struct drm_printer p = drm_debug_printer("i915 display info:");
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
