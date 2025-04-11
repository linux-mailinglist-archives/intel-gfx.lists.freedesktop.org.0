Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8C4A85849
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 11:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4808B10EB46;
	Fri, 11 Apr 2025 09:45:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ux8L/5sv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD5410EB45;
 Fri, 11 Apr 2025 09:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744364750; x=1775900750;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9981jb0a0HRmQ4+8EkTk2uRr8UeMn1z746VQ52V0iac=;
 b=Ux8L/5svdOrcLjySJ5Q09Xnv95E0yuLMC3l23Y5w9nT0LlXui9HxqhZh
 G2wiPj7tLtksm9SPTENr6GHUCYrL8xDohKQEduAjLqaLdrhkf10Tng8p4
 4MA5vaEHFHVMtP2Po+S+vEyYDKNWey/qeKRLH36DINOxmvbj73Bd51RHy
 LkIBo1eo7uWTXq+WFnf6abOYG6pUFiHrAH28/Rn7htrc7l0fyq0+ANuC0
 11btVdW8moGEC4xuK/kZhmfguQz0vL65yiQZFe7qMfHQwOmXow9/LydMT
 E5AEIzy/MlwOam9Sy+vziH+PNncwBP0t23FNk+LkwzrtCHXFWV8gzElWm Q==;
X-CSE-ConnectionGUID: n4IDGY7/QTCRHh2MhvdSsg==
X-CSE-MsgGUID: a7M0tsMCSHq46N/82BfF0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45799108"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="45799108"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:45:49 -0700
X-CSE-ConnectionGUID: CLMhNhLpTpepUc2D6q/Zag==
X-CSE-MsgGUID: DeLBkTyvR4SzvuYDEhRmDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="130123422"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.67])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:45:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 5/5] drm/i915: use graphics version instead of PCH
 split in error capture
In-Reply-To: <786195f92466317f521404be744629b0a077c491.1744208554.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1744208554.git.jani.nikula@intel.com>
 <786195f92466317f521404be744629b0a077c491.1744208554.git.jani.nikula@intel.com>
Date: Fri, 11 Apr 2025 12:45:44 +0300
Message-ID: <875xjbuj3r.fsf@intel.com>
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

On Wed, 09 Apr 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> Avoid using PCH checks in core i915 code, in preparation for moving PCH
> handling to display.

Ville, care to provide your rb on this one too please, so I can merge
the series after I get CI results?

Thanks,
Jani.

>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 62e4a293ed9b..aa2cad910902 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1792,7 +1792,7 @@ static void gt_record_global_nonguc_regs(struct intel_gt_coredump *gt)
>  			gt->gtier[i] =
>  				intel_uncore_read(uncore, GEN8_GT_IER(i));
>  		gt->ngtier = 4;
> -	} else if (HAS_PCH_SPLIT(i915)) {
> +	} else if (GRAPHICS_VER(i915) >= 5) {
>  		gt->gtier[0] = intel_uncore_read(uncore, GTIER);
>  		gt->ngtier = 1;
>  	} else {

-- 
Jani Nikula, Intel
