Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1460AB1086
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBF110E9FA;
	Fri,  9 May 2025 10:25:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GWUqF03R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EABC510E9FA;
 Fri,  9 May 2025 10:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786306; x=1778322306;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=a4GgoMLuSYDs1mF1eoS67p+OaLlBAM10tdx2djSNNTs=;
 b=GWUqF03Ro/xIAyf8t07hSZcDFIlvdK1O+/l9w/wbIE2TzgQsqAofk1Rk
 YuJib4OmC82oLt7kZNLhtx96xZc9jOFiAf1jX1v1YCBBp9rMYJGhBEvcA
 GpRY0JjciL+UqRxfl2tJCFv/860cylLSKG1/8d+LvQ7rOHXIePeMGG5EA
 Tvacv8eRw6G9XMaBrNlcH+RpW4bVls0D4LqdlU9t/d2Z7vsLuLaZStYKi
 IhIqyzM2ZbCLfzb/fE/SlHiYKxvDyhjnkb8uGeTE+NLPZWrkwRQf65ihz
 G7XK1jdvx2gqvzy74rw0gPiVZVf8JMfMwX4E9ndTL3qQhq2jDxB3bPegr A==;
X-CSE-ConnectionGUID: tHWSbAvZTZeTWc7fOO1JNA==
X-CSE-MsgGUID: Pwc0EzGKRguBfUUpsp0rpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59238186"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="59238186"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:25:05 -0700
X-CSE-ConnectionGUID: fZw+FqNtTxqJdvixfnEJxg==
X-CSE-MsgGUID: 8DB9AUEUQ42Q0ieVR/01vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136462642"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:25:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 11/18] drm/i915/dpll: Introduce new hook in
 intel_dpll_funcs
In-Reply-To: <20250509042729.1152004-12-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-12-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:25:00 +0300
Message-ID: <87h61ukrnn.fsf@intel.com>
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

On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Introduce disable hook to disable individual dpll which is to
> be used by DISPLAY_VER() >= 14.
>
> --v2
> -Rename intel_global_dpll to intel_dpll_global [Jani/Ville]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

This is hard to review with no actual user at hand.

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 51dab49d4fc1..85f726b1c5c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -73,7 +73,13 @@ struct intel_dpll_funcs {
>  		       struct intel_encoder *encoder);
>  
>  	/*
> -	 * Hook for disabling the shared pll, called from _intel_disable_shared_dpll()
> +	 * Hook for disabling the individual pll, used from DISPLAY_VER() >= 14
> +	 */
> +	void (*disable)(struct intel_display *display,
> +			struct intel_dpll *pll);
> +
> +	/*
> +	 * Hook for disabling the shared pll, called from intel_disable_global_dpll()
>  	 * only when it is safe to disable the pll, i.e., there are no more
>  	 * tracked users for it.
>  	 */

-- 
Jani Nikula, Intel
