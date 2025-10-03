Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A7CBB686F
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 13:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5745710E8E7;
	Fri,  3 Oct 2025 11:20:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RrgG1mho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D7BA10E392;
 Fri,  3 Oct 2025 11:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759490421; x=1791026421;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YPv/evwk2hRmwqSrwDa7qGOoDIimxz9x6acficRaodI=;
 b=RrgG1mhonve+eQC5NPQ2ObfcLzaJpV6VSX85ysDpCh5q5LA48pL0maM0
 c4hQIEd0ysYq5jBU2O4JhSSxr77GCEcshnYwvolsATEM3u1MwCqswsvOq
 yW+bN5dUF0tm6e0Tvg7XMJLxQaT47cB57QPJJRGgVVGmRjBFFZFElhicj
 NEYvIuqqUq6Zn68C0YLgX8esRTFn4BCSiakBpRfDy3BNu2M3VOLcA+aCV
 ptnfJdpBscdZk4qx7D282JxdCQr7yETg6dvPLHB9WZnOfrkI7ftIulLkj
 AxTb/QBb+jeXqmruFwvv4dGv2UNiGiyvR8AYmLf7BJr8PropDzi5EMTfE A==;
X-CSE-ConnectionGUID: YauwIzivTrml0XpHPTmbZw==
X-CSE-MsgGUID: w/fUcToHQ7i/cgD2+fOa3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="84395573"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="84395573"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 04:20:21 -0700
X-CSE-ConnectionGUID: XQNlYUChRfW+NyxF39YHFA==
X-CSE-MsgGUID: G6S/e8uaQK+i2SdtH1vdmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="210251008"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.127])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 04:20:19 -0700
Date: Fri, 3 Oct 2025 14:20:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org
Subject: Re: [PATCH i-g-t] lib/igt_fb/intel: Use correct MOCS for displayable
 surfaces
Message-ID: <aN-xcIxbM-HSeO8P@intel.com>
References: <20251003083746.36461-1-tvrtko.ursulin@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251003083746.36461-1-tvrtko.ursulin@igalia.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Oct 03, 2025 at 09:37:46AM +0100, Tvrtko Ursulin wrote:
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
>  	/* only really needed for proper CCS handling */
> diff --git a/lib/intel_bufops.c b/lib/intel_bufops.c
> index 475b0d1f7b10..1196069a500f 100644
> --- a/lib/intel_bufops.c
> +++ b/lib/intel_bufops.c
> @@ -1008,6 +1008,8 @@ static void __intel_buf_init(struct buf_ops *bops,
>  	buf->pat_index = pat_index;
>  	if (mocs_index == DEFAULT_MOCS_INDEX)
>  		mocs_index = intel_get_uc_mocs_index(bops->fd);
> +	else if (mocs_index == DISPLAYABLE_MOCS_INDEX)
> +		mocs_index = intel_get_displayable_mocs_index(bops->fd);
>  	buf->mocs_index = mocs_index;
>  	IGT_INIT_LIST_HEAD(&buf->link);
>  
> diff --git a/lib/intel_mocs.c b/lib/intel_mocs.c
> index e0c33c31c088..eefe83cf2116 100644
> --- a/lib/intel_mocs.c
> +++ b/lib/intel_mocs.c
> @@ -9,12 +9,14 @@
>  struct drm_intel_mocs_index {
>  	uint8_t uc_index;
>  	uint8_t wb_index;
> +	uint8_t external_index;

"external" doesn't mean anything for igt, so I would
just call it "displayable" or something.

>  	uint8_t defer_to_pat_index;
>  };
>  
>  static void get_mocs_index(int fd, struct drm_intel_mocs_index *mocs)
>  {
>  	uint16_t devid = intel_get_drm_devid(fd);
> +	unsigned int ip_ver = intel_graphics_ver(devid);
>  
>  	/*
>  	 * Gen >= 12 onwards don't have a setting for PTE,
> @@ -23,25 +25,31 @@ static void get_mocs_index(int fd, struct drm_intel_mocs_index *mocs)
>  	 * This helper function is providing current UC as well
>  	 * as WB MOCS index based on platform.
>  	 */
> -	if (intel_graphics_ver(devid) >= IP_VER(20, 0)) {
> +	if (ip_ver >= IP_VER(20, 0)) {
>  		mocs->uc_index = 3;
>  		mocs->wb_index = 4;
> +		mocs->external_index = 1;
>  		mocs->defer_to_pat_index = 0;
>  	} else if (IS_METEORLAKE(devid)) {
>  		mocs->uc_index = 5;
>  		mocs->wb_index = 1;
> +		mocs->external_index = 14;
>  	} else if (IS_DG2(devid)) {
>  		mocs->uc_index = 1;
>  		mocs->wb_index = 3;
> +		mocs->external_index = 3;
>  	} else if (IS_DG1(devid)) {
>  		mocs->uc_index = 1;
>  		mocs->wb_index = 5;
> -	} else if (IS_GEN12(devid)) {
> +		mocs->external_index = 5;
> +	} else if (ip_ver >= IP_VER(12, 0)) {
>  		mocs->uc_index = 3;
>  		mocs->wb_index = 2;
> +		mocs->external_index = 61;
>  	} else {
>  		mocs->uc_index = I915_MOCS_PTE;
>  		mocs->wb_index = I915_MOCS_CACHED;
> +		mocs->external_index = I915_MOCS_PTE;
>  	}
>  }
>  
> @@ -63,6 +71,15 @@ uint8_t intel_get_uc_mocs_index(int fd)
>  	return mocs.uc_index;
>  }
>  
> +uint8_t intel_get_displayable_mocs_index(int fd)
> +{
> +	struct drm_intel_mocs_index mocs;
> +
> +	get_mocs_index(fd, &mocs);
> +
> +	return mocs.external_index;
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

Why do we even have these weird values? Ie. why can't we just
always provide the correct MOCS from the start?

And I really think this should handle *all* the platforms the
same way, but currently the MOCS for older platforms is handled
in some completely different way :(

But I suppose neither of those issues should be addressed in
this patch.

>  
>  uint8_t intel_get_wb_mocs_index(int fd);
>  uint8_t intel_get_uc_mocs_index(int fd);
> +uint8_t intel_get_displayable_mocs_index(int fd);
>  uint8_t intel_get_defer_to_pat_mocs_index(int fd);
>  
>  #endif /* _INTEL_MOCS_H */
> -- 
> 2.48.0

-- 
Ville Syrjälä
Intel
