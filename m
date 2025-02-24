Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F18A41B86
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 11:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63ED410E210;
	Mon, 24 Feb 2025 10:46:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="avtOtoCL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C2B810E210;
 Mon, 24 Feb 2025 10:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740393967; x=1771929967;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=++TkqCR9RJCXJOaj4N2AgR7Lk6dae9BOUvlsqqYP+pk=;
 b=avtOtoCLdhlhmWkHtD9bMppslMhX6HozpjJYFfbzKyLczsQpbrUaL3iE
 C0a5Q36ObaOqwmIt6x/LnfasLy/agOniQIfgPA3Lc/Zzp+5dBSNX0q45r
 IhAoMJnzmpAORhFJFg/x7Q2GSZW5rm/cemkqmFnG8vrOyAbKvvIt0WHmE
 uikd2sws1Ezn4BMuylRhQBUrbuIutbuSCFn5Jtv7u9q8TnE19BZYNzEjP
 B8Ju4GALsxOe6PIkwuy8ivRCBNwoax2lOsBF9fCfEd2KPyjmrF3f1CVaj
 MlStUbUF9d2E72fBv53sDh3ZA+dYbAoDyDzGAMj4PwmaXPfuA9I/50XuK Q==;
X-CSE-ConnectionGUID: AuhceMbYRCiax/MXH952Hw==
X-CSE-MsgGUID: oYl9VY93RQ6H/lDNejGUZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="58559365"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="58559365"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:46:07 -0800
X-CSE-ConnectionGUID: FQxYrEwtRZ6/0139b9HreQ==
X-CSE-MsgGUID: 6x8SFCJCQwShlD9j2scwgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="146875108"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:46:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v4 3/8] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
In-Reply-To: <20250224080847.326350-4-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-4-animesh.manna@intel.com>
Date: Mon, 24 Feb 2025 12:46:00 +0200
Message-ID: <87tt8j7h93.fsf@intel.com>
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

On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> LOBF can be enabled with vrr fixed rate mode, so add check
> if vmin = vmax = flipline in compute_config().
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index d94c96ba46b1..1438e125cde1 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -288,6 +288,10 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  	if (crtc_state->has_psr)
>  		return;
>  
> +	if (!(crtc_state->vrr.vmin == crtc_state->vrr.vmax &&
> +	      crtc_state->vrr.vmin == crtc_state->vrr.flipline))

if vmin != vmax || vmin != flipline, right?


> +		return;
> +
>  	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
>  	      intel_alpm_aux_less_wake_supported(intel_dp)))
>  		return;

-- 
Jani Nikula, Intel
