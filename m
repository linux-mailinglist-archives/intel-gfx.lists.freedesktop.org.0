Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C286DF2B7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 13:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA66810E76C;
	Wed, 12 Apr 2023 11:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C2EF10E76C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 11:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681297955; x=1712833955;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SLfUJ2qR8cDOQL3VJcrJPpDafrBu3JkciRYcSVigaHI=;
 b=G4pT/oWScU5URYrZeM61sDXT4ljZ1wJQmp4lo/gkf6WlxxRFsEZTB9fj
 zOWZ+iProaxdhPB1oxfR3S5BeiHMl41m3nLCMKywX051lok9OUykc588Z
 9y38LACI1nRlXScxgDFu0pH2ON+yA/9hl2Nk4aASEsJbiSNtyJoQ8McP4
 D1E8MiZ8+8vuyz0/GrSJCeXDWakX+KZO9+GIDZaeE+68kX8LzvQWo4Zc0
 nlCNcu9bQSTo4KoofL1Y8NPx7x7wAE16mlEPLnOrX0ppB8AEZVPMcbeQk
 AJMeMaHIech1n2SkSsjPebmB6yZJGFJmBxodd251HpjSkcT+071adDLVp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="343868655"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="343868655"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 04:12:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="778263007"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="778263007"
Received: from smoticic-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.172])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 04:12:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230412104152.828326-2-bhanuprakash.modem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230412104152.828326-1-bhanuprakash.modem@intel.com>
 <20230412104152.828326-2-bhanuprakash.modem@intel.com>
Date: Wed, 12 Apr 2023 14:12:30 +0300
Message-ID: <87leixcq1t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [V2 1/1] drm/i915/debugfs: New debugfs for display
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

On Wed, 12 Apr 2023, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
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
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 25 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  1 +
>  .../drm/i915/display/intel_display_debugfs.c  |  1 +
>  3 files changed, 27 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 084a483f9776..c3ad7837fa09 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3235,6 +3235,31 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  	return freq;
>  }
>  
> +static int i915_cdclk_info_show(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 = m->private;
> +
> +	drm_modeset_lock_all(&i915->drm);

Mmmh, I wonder how important that really is?

BR,
Jani.


> +
> +	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
> +	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
> +	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
> +
> +	drm_modeset_unlock_all(&i915->drm);
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
