Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18E86E1CFD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 09:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2345410E02E;
	Fri, 14 Apr 2023 07:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DED10E02E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 07:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681456501; x=1712992501;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iRtLRWf0ZxsetKvmYRlGwjoQH5vWOp/gs8AZHQLdYzQ=;
 b=ffkgMVCfCf8u+fwlTTmSqrQVcZiiTkpkVR2JrKoyJgqGWlNCxnlhiR7g
 stWheQGcJSk0V1YbM6Q+noCl1RxVUU61M7d34Tl9aNYw92dQFBIp47cyu
 UbQpD5teb+H+E1ezhhaWT8S0LuBu+yua+KGt1YGbIWUV0KQLImbP0/UKj
 DmZYoUByOP1qPE5m22bGqw8CTd5Y6WZr8W0ZZj1UTlR1iHnNQsHYed+wP
 JnFT3X0KF9+s2lMdHTBe1drpi66wZiBFuZCMGg0aM5dKs9hXnO2BBVO4k
 G5OvP/nYNkLTsVC9YiCCC0yyfGbm2RrDVb3m0oOToh/N/wijFNEmJGku2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346232108"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="346232108"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 00:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="864104823"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="864104823"
Received: from gssacale-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 00:14:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230413114502.1105288-1-bhanuprakash.modem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230412104152.828326-2-bhanuprakash.modem@intel.com>
 <20230413114502.1105288-1-bhanuprakash.modem@intel.com>
Date: Fri, 14 Apr 2023 10:14:33 +0300
Message-ID: <87edongckm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [V3 1/1] drm/i915/debugfs: New debugfs for display
 clock frequencies
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

On Thu, 13 Apr 2023, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
> Instead of mixing display & non-display stuff together, move
> display specific clock info to new debugfs. This patch will
> create a new debugfs "i915_cdclk_info" to expose Current & Max
> cdclk and Max pixel clock frequency info.
>
> Example:
> $ cat /sys/kernel/debug/dri/0/i915_cdclk_info
> Current CD clock frequency: 163200 kHz
> Max CD clock frequency: 652800 kHz
> Max pixel clock frequency: 1305600 kHz
>
> V2: - s/i915_display_clock_info/i915_cdclk_info/ (Jani)
>     - Move the logic to intel_cdclk.c (Jani)
>     - Don't remove info from i915_frequency_info (Jani)
> V3: - Drop locking (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Pushed to drm-intel-next, thanks for the patch.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 21 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  1 +
>  .../drm/i915/display/intel_display_debugfs.c  |  1 +
>  3 files changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 084a483f9776..f6223d8f13b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3235,6 +3235,27 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  	return freq;
>  }
>  
> +static int i915_cdclk_info_show(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 = m->private;
> +
> +	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
> +	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
> +	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
> +
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(i915_cdclk_info);
> +
> +void intel_cdclk_debugfs_register(struct drm_i915_private *i915)
> +{
> +	struct drm_minor *minor = i915->drm.primary;
> +
> +	debugfs_create_file("i915_cdclk_info", 0444, minor->debugfs_root,
> +			    i915, &i915_cdclk_info_fops);
> +}
> +
>  static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 51e2f6a11ce4..48fd7d39e0cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -82,5 +82,6 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>  	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
>  
>  int intel_cdclk_init(struct drm_i915_private *dev_priv);
> +void intel_cdclk_debugfs_register(struct drm_i915_private *i915);
>  
>  #endif /* __INTEL_CDCLK_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 45113ae107ba..abd16a2b1f7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1094,6 +1094,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  				 ARRAY_SIZE(intel_display_debugfs_list),
>  				 minor->debugfs_root, minor);
>  
> +	intel_cdclk_debugfs_register(i915);
>  	intel_dmc_debugfs_register(i915);
>  	intel_fbc_debugfs_register(i915);
>  	intel_hpd_debugfs_register(i915);

-- 
Jani Nikula, Intel Open Source Graphics Center
