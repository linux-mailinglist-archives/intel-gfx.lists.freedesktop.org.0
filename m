Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C1DA6D63F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 09:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB86310E228;
	Mon, 24 Mar 2025 08:35:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mf88HgCH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A0A10E228;
 Mon, 24 Mar 2025 08:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742805341; x=1774341341;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VxM7OlDarYQ1+11Ww2hWEMSFdggBD4e48hSzD0HHnsQ=;
 b=Mf88HgCH2/pBU5yk1Obkui4CdTxzQxB6kccPhSIcc7PU2U05XsxdAbyE
 goa5Nx8WUPY/FmyZYlGjyC1VH3R3D3fa4C5WQJbyDyW+bC/1wO2gR19C2
 9dKGLkktiV8Rw7MT9iRaOAHX62YX2o9hankXUAATOgO6vwDZMRdNMhTum
 5IJM7Fctb0Nf8f9q9qS/J5nMcZFstkbfWEcqjafCXr5y+2+B9xNakASy1
 vPlLdydvxap7cblFRDPphZ5X5JuqGlin8ZIWS9phG3JM5FGg85lxJbTgz
 cS1dfAzxkSVArvxRcGk9GyK5sf/LSBn8E4fWkZ8EYvJQnlcdxev90IzV5 g==;
X-CSE-ConnectionGUID: hcKhgOz0RGyfirqyoPT1JA==
X-CSE-MsgGUID: /U9SucgzQoCDnG+oBrtcKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="44120963"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="44120963"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:35:41 -0700
X-CSE-ConnectionGUID: 3wVX81NUR2u2KwOf8q0WDg==
X-CSE-MsgGUID: b7yrd1TmS+qgB+IcXuVfKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124433162"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 01:35:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v6 5/8] drm/i915/lobf: Add debug interface for lobf
In-Reply-To: <20250319191508.2751216-6-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-6-animesh.manna@intel.com>
Date: Mon, 24 Mar 2025 10:35:36 +0200
Message-ID: <87v7rybzc7.fsf@intel.com>
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

On Thu, 20 Mar 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> Add an interface in debugfs which will help in debugging LOBF
> feature.
>
> v1: Initial version.
> v2:
> - Remove FORCE_EN flag. [Jouni]
> - Change prefix from I915 to INTEL. [Jani]
> - Use u8 instead of bool for lobf-debug flag. [Jani]
> v3:
> - Use intel_connector instead of display. [Jani]
> - Remove edp connector check as it was already present
> in caller function. [Jani]
> - Remove loop of searching edp encoder which is directly
> accessible from intel_connector. [Jani]
> v4:
> - Simplify alpm debug to bool instead of bit-mask. [Jani]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     | 32 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  2 files changed, 33 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 5df1253a6b6c..dc24772743b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  	int waketime_in_lines, first_sdp_position;
>  	int context_latency, guardband;
>  
> +	if (intel_dp->alpm_parameters.lobf_enable_debug)
> +		return;
> +
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
>  
> @@ -436,6 +439,32 @@ static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
>  
>  DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
>  
> +static int
> +i915_edp_lobf_debug_get(void *data, u64 *val)
> +{
> +	struct intel_connector *connector = data;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +
> +	*val = READ_ONCE(intel_dp->alpm_parameters.lobf_enable_debug);

Why READ_ONCE()?

> +
> +	return 0;
> +}
> +
> +static int
> +i915_edp_lobf_debug_set(void *data, u64 val)
> +{
> +	struct intel_connector *connector = data;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> +
> +	intel_dp->alpm_parameters.lobf_enable_debug = val;
> +
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE(i915_edp_lobf_debug_fops,
> +			i915_edp_lobf_debug_get, i915_edp_lobf_debug_set,
> +			"%llu\n");
> +
>  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(connector);
> @@ -445,6 +474,9 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
>  	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
>  		return;
>  
> +	debugfs_create_file("i915_edp_lobf_debug", 0644, root,
> +			    connector, &i915_edp_lobf_debug_fops);
> +
>  	debugfs_create_file("i915_edp_lobf_info", 0444, root,
>  			    connector, &i915_edp_lobf_info_fops);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index bef54b23273f..0b109aac5306 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1812,6 +1812,7 @@ struct intel_dp {
>  		u8 aux_less_wake_lines;
>  		u8 silence_period_sym_clocks;
>  		u8 lfps_half_cycle_num_of_syms;
> +		bool lobf_enable_debug;
>  	} alpm_parameters;
>  
>  	u8 alpm_dpcd;

-- 
Jani Nikula, Intel
