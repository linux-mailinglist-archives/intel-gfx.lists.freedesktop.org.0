Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D91BF03C4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 11:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8A510E380;
	Mon, 20 Oct 2025 09:39:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m2BkjAMW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A2D210E35C;
 Mon, 20 Oct 2025 09:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760953196; x=1792489196;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4uFNRmbfzj/LlwIKVRZi06KCzIflJWhoSiV4HbzGidY=;
 b=m2BkjAMW0Kn55rq1Ekc/Z8jxDZ+rw82gGdEdGKXASb0Pf9lDxq2iApPR
 WYKrPji7ti//vfKdEWITwkbswnVSTzxunlMhsC7WWobKhmrCKFNAtYpfa
 1gLVOBV8z03v9m1JciqGWgAPNOxUG5wxGEkWO10P9bzAf9LW66+G1TdeS
 uIpq22x/XleT5btcH/ikl4mSyd6belM18RzqYL/q+tpoIjL1nC0zIHHTI
 pyzLIoWWyI6VMPK5SjLlQcJ1Jm3ItL+3IZN+G0ElEwvVJnqLJcn3lywMc
 PCkcDOqBou/wzRWbr+6p+8tk+TBZg/KrEtvlbi6/SQYV1s11k0ABWoBMU g==;
X-CSE-ConnectionGUID: KUHXg59yTlm3+7k0issHPw==
X-CSE-MsgGUID: o2mg9wv7QX+Gx6IhXFxQkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62984733"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62984733"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 02:39:55 -0700
X-CSE-ConnectionGUID: DgRYBLOjTKedAhxqv4Qgnw==
X-CSE-MsgGUID: A7xRUrtVSLiAbFRqF4kwng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="183771041"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa009-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2025 02:39:53 -0700
Date: Mon, 20 Oct 2025 11:39:51 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH i-g-t v2] lib/igt_fb/intel: Use correct MOCS for
 displayable surfaces
Message-ID: <20251020093951.cvxwtsz2ouy3l6dt@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20251003130517.40414-1-tvrtko.ursulin@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251003130517.40414-1-tvrtko.ursulin@igalia.com>
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

Hi Tvrtko,
On 2025-10-03 at 14:05:17 +0100, Tvrtko Ursulin wrote:
> Using the uncached MOCS for displayable surfaces is not always correct,
> especially when CCS compression is used with which some platforms require
> a special uncached entry, otherwise writes get unexpectedly cached.
> 
> Lets copy the knowledge of what is the correct MOCS for displayable
> surfaces from Mesa and add some new helpers to get it.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
> v2:
>  * Renamed external_index to displayable_index. (Ville)
> ---
>  lib/igt_fb.c       |  2 +-
>  lib/intel_bufops.c |  2 ++
>  lib/intel_mocs.c   | 21 +++++++++++++++++++--
>  lib/intel_mocs.h   |  2 ++
>  4 files changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/igt_fb.c b/lib/igt_fb.c
> index 03ede3a6fa20..b5a16f9cbe90 100644
> --- a/lib/igt_fb.c
> +++ b/lib/igt_fb.c
> @@ -2712,7 +2712,7 @@ igt_fb_create_intel_buf(int fd, struct buf_ops *bops,
>  				    fb->strides[0],
>  				    region,
>  				    intel_get_pat_idx_uc(fd),
> -				    DEFAULT_MOCS_INDEX);
> +				    DISPLAYABLE_MOCS_INDEX);
>  	intel_buf_set_name(buf, name);
>  
[cut]

> @@ -63,6 +71,15 @@ uint8_t intel_get_uc_mocs_index(int fd)
>  	return mocs.uc_index;
>  }
>  

All new lib functions needs to be documented. As this was
already merged maybe someone could document a bunch of
these similar functions here.

Regards,
Kamil

> +uint8_t intel_get_displayable_mocs_index(int fd)
> +{
> +	struct drm_intel_mocs_index mocs;
> +
> +	get_mocs_index(fd, &mocs);
> +
> +	return mocs.displayable_index;
> +}
> +
>  uint8_t intel_get_defer_to_pat_mocs_index(int fd)
>  {
>  	struct drm_intel_mocs_index mocs;
> diff --git a/lib/intel_mocs.h b/lib/intel_mocs.h
> index 8597286d259d..394bb41be042 100644
> --- a/lib/intel_mocs.h
> +++ b/lib/intel_mocs.h
> @@ -9,9 +9,11 @@
>  #include <stdint.h>
>  
>  #define DEFAULT_MOCS_INDEX ((uint8_t)-1)
> +#define DISPLAYABLE_MOCS_INDEX ((uint8_t)-2)
>  
>  uint8_t intel_get_wb_mocs_index(int fd);
>  uint8_t intel_get_uc_mocs_index(int fd);
> +uint8_t intel_get_displayable_mocs_index(int fd);
>  uint8_t intel_get_defer_to_pat_mocs_index(int fd);
>  
>  #endif /* _INTEL_MOCS_H */
> -- 
> 2.48.0
> 
