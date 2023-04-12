Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 317DE6DF035
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 11:23:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4D610E745;
	Wed, 12 Apr 2023 09:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7686510E745
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 09:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681291377; x=1712827377;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Er9iTubAtT/6XgLvwCl6dwSX5qpGBCDHeG82t3/fkRw=;
 b=Z8qm/0Yz7E8VkAXbrA0QOCbRsBNYEjhBMMgRQDYyKtlI9RKxjme9EYOs
 WR/fH3Jdj1i4Q4LQmbs1jb566B2/BMtT3O0a8qIKCDh8W4q26MFiOIx8G
 X7+mpHJ1p1pdNJb3EiNIwrqCa6vhhQZ6lOC9Q1nQVj61+7sBHerYYSi/Z
 u2Mq1bTEkl74AUNRRJxnbnvpAm0ORVSISoae/3EA+R7ywGwHxOrvPO4Lw
 hA/8T66XV7H/i5YdaKtr5kTqzDlI+aHJsZcx5RQUl62rpQS6LhIsTme1x
 ndRuDUb48z6RP69iVHqYDeqTsjd9sz+G+QZWFus1gOHRmqIT9ZpEuXXhK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="346522011"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="346522011"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 02:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="800236245"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="800236245"
Received: from smoticic-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.172])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 02:22:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230412090911.811254-2-bhanuprakash.modem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230412090911.811254-1-bhanuprakash.modem@intel.com>
 <20230412090911.811254-2-bhanuprakash.modem@intel.com>
Date: Wed, 12 Apr 2023 12:22:51 +0300
Message-ID: <87ttxlcv4k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/debugfs: New debugfs for
 display clock frequencies
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

On Wed, 12 Apr 2023, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
> Instead of mixing display & non-display stuff together, move
> display specific clock info to new debugfs. This patch will
> move Current & Max cdclk and Max pixel clock frequency info
> to the new debugfs file "i915_display_clock_info".
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_debugfs.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c    |  4 ----
>  2 files changed, 16 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 45113ae107ba..8e725d0c79d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -800,6 +800,21 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
>  	return 0;
>  }
>  
> +static int i915_display_clock_info(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 = node_to_i915(m->private);
> +
> +	drm_modeset_lock_all(&i915->drm);
> +
> +	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
> +	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
> +	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
> +
> +	drm_modeset_unlock_all(&i915->drm);
> +
> +	return 0;
> +}

This is all cdclk related, so we should probably put these to
intel_cdclk.c. See intel_dmc_debugfs_register() and how it's called, for
reference.

> +
>  static ssize_t i915_displayport_test_active_write(struct file *file,
>  						  const char __user *ubuf,
>  						  size_t len, loff_t *offp)
> @@ -1065,6 +1080,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>  	{"i915_ddb_info", i915_ddb_info, 0},
>  	{"i915_lpsp_status", i915_lpsp_status, 0},
> +	{"i915_disply_clock_info", i915_display_clock_info, 0},

Maybe "i915_cdclk_info"? (Also, disply has a typo there.)

>  };
>  
>  static const struct {
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 80dbbef86b1d..8814ce238cc5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -393,10 +393,6 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>  		drm_puts(p, "no P-state info available\n");
>  	}
>  
> -	drm_printf(p, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
> -	drm_printf(p, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
> -	drm_printf(p, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
> -

Maybe leave these in for now, doesn't hurt anyone, can be removed in a
separate patch later.

BR,
Jani.

>  	intel_runtime_pm_put(uncore->rpm, wakeref);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
