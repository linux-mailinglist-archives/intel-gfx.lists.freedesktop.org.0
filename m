Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 122B6A8B4FB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 11:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B1AB10E8A1;
	Wed, 16 Apr 2025 09:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hF6yAXCP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44AF310E24E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744794958; x=1776330958;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xk/WogVH8OViHpRT/+5eJhd137uBvbcut6mhfR9AhC8=;
 b=hF6yAXCPgSXwKQjdrWWPA575EEVlQ9TBqNaz7ypZ8+4mZ1l0NuDYCqk/
 xlynwQMWDQNYdJPsZo2ojktS9C2RQaUFqjl2PmIRerkivcU/pg5rvb7Xv
 7+RsYBI4IUxQrN0xYnUTNWFi4ap4tHhdNj1bqYF5AriNiZZ2w+011W84b
 v8nmFV1Hu/ss49LDo7gCj8bfMmCrcmMEL5/kJJ+/oHxdAZMu2LaGmRfor
 nZ8QGbws6t2DKP/PZxdFv8HKfZMOBBS3JSe+wMFzHy89ACem5gJcz2x1d
 AS8vxRmT33E5rvXGxhAVjTL5zqdp5Ni9zls629mw2W6oBou8jh9HuqSjc A==;
X-CSE-ConnectionGUID: R6j1Z21eSmyJWM6A1T9iOQ==
X-CSE-MsgGUID: whCZEkDgTfq6tXdjUb37Nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46494379"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="46494379"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 02:15:57 -0700
X-CSE-ConnectionGUID: 0OUe6N/kQUiSmKc2XtwcTg==
X-CSE-MsgGUID: ByUHMy4EQIivnex3CffNig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="130242631"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.96])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 02:15:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Chen Linxuan <chenlinxuan@uniontech.com>
Subject: Re: [PATCH] drm/i915/pxp: fix undefined reference to
 `intel_pxp_gsccs_is_ready_for_sessions'
In-Reply-To: <20250415090616.2649889-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250415090616.2649889-1-jani.nikula@intel.com>
Date: Wed, 16 Apr 2025 12:15:53 +0300
Message-ID: <87o6wwpiuu.fsf@intel.com>
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

On Tue, 15 Apr 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> From: Chen Linxuan <chenlinxuan@uniontech.com>
>
> On x86_64 with gcc version 13.3.0, I compile kernel with:
>
>   make defconfig
>   ./scripts/kconfig/merge_config.sh .config <(
>     echo CONFIG_COMPILE_TEST=y
>   )
>   make KCFLAGS="-fno-inline-functions -fno-inline-small-functions -fno-inline-functions-called-once"
>
> Then I get a linker error:
>
>   ld: vmlinux.o: in function `pxp_fw_dependencies_completed':
>   kintel_pxp.c:(.text+0x95728f): undefined reference to `intel_pxp_gsccs_is_ready_for_sessions'
>
> This is caused by not having a intel_pxp_gsccs_is_ready_for_sessions()
> header stub for CONFIG_DRM_I915_PXP=n. Add it.
>
> Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
> Fixes: 99afb7cc8c44 ("drm/i915/pxp: Add ARB session creation and cleanup")
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Pushed to drm-intel-next, thanks for the patch.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
> index 9aae779c4da3..4969d3de2bac 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
> @@ -23,6 +23,7 @@ int intel_pxp_gsccs_init(struct intel_pxp *pxp);
>  
>  int intel_pxp_gsccs_create_session(struct intel_pxp *pxp, int arb_session_id);
>  void intel_pxp_gsccs_end_arb_fw_session(struct intel_pxp *pxp, u32 arb_session_id);
> +bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp);
>  
>  #else
>  static inline void intel_pxp_gsccs_fini(struct intel_pxp *pxp)
> @@ -34,8 +35,11 @@ static inline int intel_pxp_gsccs_init(struct intel_pxp *pxp)
>  	return 0;
>  }
>  
> -#endif
> +static inline bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp)
> +{
> +	return false;
> +}
>  
> -bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp);
> +#endif
>  
>  #endif /*__INTEL_PXP_GSCCS_H__ */

-- 
Jani Nikula, Intel
