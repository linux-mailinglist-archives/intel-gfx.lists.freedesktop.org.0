Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE9BCB639B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 15:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D93D10E2E8;
	Thu, 11 Dec 2025 14:41:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AG8yNOr3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA1110E2E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Dec 2025 14:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765464070; x=1797000070;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nKegRUU4yvKd/l2ZavAoqunFx3/hrVpc/SnmfIRftZg=;
 b=AG8yNOr3586b9uhp++5Kn5dRyBTj3t9Ic9PeRifhb8n3YA1tBwTI/BFA
 Tunc1XHnCrMMnvXnF8xQL1DXlRBYEURuEUsKP7hmDYXYjgr1NohvI3bEf
 9vGfZC7yhQH1WR+S9N/6BUxyb+LFg7YbFZv7R6FHvvmVfZJ5jx2z6Zx7Z
 sA6VVYA2jJtkHQjdNHF3BEIqZyRvRQ+Ii9GPsaqTsDM7RFlUqz+6rD07s
 hlVUO6uKzejCfiTZe1/O8411P5ponTFAoqoMR9J9d8X9x/S3ddCwPX/xQ
 Efy4KRxbyNWkIABiqQCFkLVnwwnVgu1vr9qYN90bxYzhnD8OExrq7yhPJ w==;
X-CSE-ConnectionGUID: vlURnVyhQxurrbcE79W5vA==
X-CSE-MsgGUID: ZWWFwr9HRr6AVlA5IE7ALw==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67179261"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="67179261"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 06:41:10 -0800
X-CSE-ConnectionGUID: gRskdi+PRmi1QvZX4odpuw==
X-CSE-MsgGUID: QvNlNoKqScScFJNAlO/OjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="201283914"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 06:41:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: andi.shyti@linux.intel.com, krzysztof.karas@intel.com,
 krzysztof.niemiec@intel.com, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
In-Reply-To: <11fc31f6068cd0bb8b02ebe01d8a17914866e853.1765377880.git.sebastian.brzezinka@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <11fc31f6068cd0bb8b02ebe01d8a17914866e853.1765377880.git.sebastian.brzezinka@intel.com>
Date: Thu, 11 Dec 2025 16:41:04 +0200
Message-ID: <5c17c7917eb730a3d363350ecae18abbbbb74783@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 10 Dec 2025, Sebastian Brzezinka <sebastian.brzezinka@intel.com> wrote:
> CONFIG_RANDSTRUCT may reorder structure fields, which makes positional
> initializers unsafe. The i915 GT debugfs tables were using positional
> initializers for `struct intel_gt_debugfs_file`, and on configs where
> the layout differs (e.g., presence/absence of the `.eval` callback),
> this can lead to fields being initialized incorrectly and trigger
> randstruct warnings such as:
> ```
>   drivers/gpu/drm/i915/gt/intel_gt_debugfs.c:75:51: note: randstruct:
>   casting between randomized structure pointer types (constructor)
> ```
>
> Switch all the GT debugfs file arrays to designated initializers. This
> binds each value to the intended member regardless of structure
> reordering or optional members and removes the warning while preserving
> the intended initialization.
>
> No functional change, only initialization style is updated.
>
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  4 +--
>  .../drm/i915/gt/intel_gt_engines_debugfs.c    |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 15 ++++++-----
>  drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  |  4 +--
>  .../gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c |  2 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    | 26 ++++++++++++++-----
>  .../drm/i915/gt/uc/intel_guc_log_debugfs.c    |  9 ++++---
>  .../gpu/drm/i915/gt/uc/intel_huc_debugfs.c    |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |  2 +-
>  9 files changed, 41 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> index bd9abbd6d3d4..b7542da1ec0c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> @@ -75,8 +75,8 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(steering);
>  static void gt_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "reset", &reset_fops, NULL },
> -		{ "steering", &steering_fops },
> +		{ .name = "reset", .fops = &reset_fops, .eval = NULL },

You don't need to explicitly initialize .eval to NULL with designated
initializers.

> +		{ .name = "steering", .fops = &steering_fops },

Like, you're not doing it here either.

Same applies below.

BR,
Jani.

>  	};
>  
>  	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> index 3aa1d014c14d..ae6c78dfe452 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> @@ -29,7 +29,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(engines);
>  void intel_gt_engines_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "engines", &engines_fops },
> +		{ .name = "engines", .fops = &engines_fops },
>  	};
>  
>  	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 96411f357f5d..29d7eb1ff9dc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -588,13 +588,14 @@ DEFINE_SIMPLE_ATTRIBUTE(perf_limit_reasons_fops, perf_limit_reasons_get,
>  void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "drpc", &drpc_fops, NULL },
> -		{ "frequency", &frequency_fops, NULL },
> -		{ "forcewake", &fw_domains_fops, NULL },
> -		{ "forcewake_user", &forcewake_user_fops, NULL},
> -		{ "llc", &llc_fops, llc_eval },
> -		{ "rps_boost", &rps_boost_fops, rps_eval },
> -		{ "perf_limit_reasons", &perf_limit_reasons_fops, perf_limit_reasons_eval },
> +		{ .name = "drpc", .fops = &drpc_fops, .eval = NULL },
> +		{ .name = "frequency", .fops = &frequency_fops, .eval = NULL },
> +		{ .name = "forcewake", .fops = &fw_domains_fops, .eval = NULL },
> +		{ .name = "forcewake_user", .fops = &forcewake_user_fops, .eval = NULL},
> +		{ .name = "llc", .fops = &llc_fops, .eval = llc_eval },
> +		{ .name = "rps_boost", .fops = &rps_boost_fops, .eval = rps_eval },
> +		{ .name = "perf_limit_reasons", .fops = &perf_limit_reasons_fops,
> +		  .eval = perf_limit_reasons_eval },
>  	};
>  
>  	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
> index 1dc8205bc64d..40dc275e7098 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
> @@ -293,8 +293,8 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(sseu_topology);
>  void intel_sseu_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "sseu_status", &sseu_status_fops, NULL },
> -		{ "sseu_topology", &sseu_topology_fops, NULL },
> +		{ .name = "sseu_status", .fops = &sseu_status_fops, .eval = NULL },
> +		{ .name = "sseu_topology", .fops = &sseu_topology_fops, .eval = NULL },
>  	};
>  
>  	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
> index 5baacd822a1c..d9d3ed3991b1 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
> @@ -29,7 +29,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(gsc_info);
>  void intel_gsc_uc_debugfs_register(struct intel_gsc_uc *gsc_uc, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "gsc_info", &gsc_info_fops, NULL },
> +		{ .name = "gsc_info", .fops = &gsc_info_fops, .eval = NULL },
>  	};
>  
>  	if (!intel_gsc_uc_is_supported(gsc_uc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> index 7269eb0bbedf..43d83e54d8d7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> @@ -132,12 +132,26 @@ DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
>  void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "guc_info", &guc_info_fops, NULL },
> -		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
> -		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
> -		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
> -		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
> -		   NULL },
> +		{ .name = "guc_info",
> +		  .fops = &guc_info_fops,
> +		  .eval = NULL
> +		},
> +		{ .name = "guc_registered_contexts",
> +		  .fops = &guc_registered_contexts_fops,
> +		  .eval = NULL
> +		},
> +		{ .name = "guc_slpc_info",
> +		  .fops = &guc_slpc_info_fops,
> +		  .eval = &intel_eval_slpc_support
> +		},
> +		{ .name = "guc_sched_disable_delay_ms",
> +		  .fops = &guc_sched_disable_delay_ms_fops,
> +		  .eval = NULL
> +		},
> +		{ .name = "guc_sched_disable_gucid_threshold",
> +		  .fops = &guc_sched_disable_gucid_threshold_fops,
> +		  .eval = NULL
> +		},
>  	};
>  
>  	if (!intel_guc_is_supported(guc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
> index ddfbe334689f..28cbf79fa34d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
> @@ -162,10 +162,11 @@ void intel_guc_log_debugfs_register(struct intel_guc_log *log,
>  				    struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "guc_log_dump", &guc_log_dump_fops, NULL },
> -		{ "guc_load_err_log_dump", &guc_load_err_log_dump_fops, NULL },
> -		{ "guc_log_level", &guc_log_level_fops, NULL },
> -		{ "guc_log_relay", &guc_log_relay_fops, NULL },
> +		{ .name = "guc_log_dump", .fops = &guc_log_dump_fops, .eval = NULL },
> +		{ .name = "guc_load_err_log_dump", .fops = &guc_load_err_log_dump_fops,
> +		  .eval = NULL },
> +		{ .name = "guc_log_level", .fops = &guc_log_level_fops, .eval = NULL },
> +		{ .name = "guc_log_relay", .fops = &guc_log_relay_fops, .eval = NULL },
>  	};
>  
>  	if (!intel_guc_is_supported(log_to_guc(log)))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
> index 15998963b863..94a7428b444b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
> @@ -26,7 +26,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(huc_info);
>  void intel_huc_debugfs_register(struct intel_huc *huc, struct dentry *root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "huc_info", &huc_info_fops, NULL },
> +		{ .name = "huc_info", .fops = &huc_info_fops, .eval = NULL },
>  	};
>  
>  	if (!intel_huc_is_supported(huc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
> index 6d541c866edb..45a4e3c99783 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
> @@ -40,7 +40,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(uc_usage);
>  void intel_uc_debugfs_register(struct intel_uc *uc, struct dentry *gt_root)
>  {
>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "usage", &uc_usage_fops, NULL },
> +		{ .name = "usage", .fops = &uc_usage_fops, .eval = NULL },
>  	};
>  	struct dentry *root;

-- 
Jani Nikula, Intel
