Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 797A6A781A3
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 19:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2937910E646;
	Tue,  1 Apr 2025 17:47:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AxnbOsbA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DFB10E63F;
 Tue,  1 Apr 2025 17:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743529676; x=1775065676;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=edebkzSuqAL6jKa/CtidC2FbBuTeo+GKzzBhsYuApOY=;
 b=AxnbOsbAhNR5XbxRjSvxmXRJxarguS4piT+axw//8DlhopBMHVkZzSUY
 F6bEJZp37Mnts2Boj7r1OUjYOobYpBW0N+Odp6Z5Hfw9ET1ts0iA/Ecl/
 DhWkOyqLZqI/zXinqqNeX7WmNw/cOGTXz4PoMwKFDKJq4GcGF/Ftopwrv
 68DeOHpBNGTET4ms4HRHdPTqs4J9iE9X4yO13rYpIj1ICB6q4hUQD3N7R
 LHMxNrZJfJ5FywHRt+s5G2c9k305KxwQ1jjnscaDXcWqJj7lM69Tr5wm8
 A5liN6kPn82zj6O4n6d7UE58jFe7zirEO1xZb0DlUII8Iz7pJv1D+mhzt w==;
X-CSE-ConnectionGUID: oz1pgc/bRJWFKWeem4efYw==
X-CSE-MsgGUID: WEySlcBrTSa/qSUb5mZYEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="48534013"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="48534013"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 10:47:55 -0700
X-CSE-ConnectionGUID: 0dqWsMIVT8GOMr0E+QPSRw==
X-CSE-MsgGUID: jxjDqosGT/+Mv5QDxYiLLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131658409"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 10:47:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Apr 2025 20:47:50 +0300
Date: Tue, 1 Apr 2025 20:47:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jocelyn Falempe <jfalempe@redhat.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 4/8] drm/i915/gem: Add i915_gem_object_panic_map()
Message-ID: <Z-wmxijRKQiZFyup@intel.com>
References: <20250401125818.333033-1-jfalempe@redhat.com>
 <20250401125818.333033-5-jfalempe@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401125818.333033-5-jfalempe@redhat.com>
X-Patchwork-Hint: comment
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

On Tue, Apr 01, 2025 at 02:51:10PM +0200, Jocelyn Falempe wrote:
> Prepare the work for drm_panic support. This is used to map the
> current framebuffer, so the CPU can overwrite it with the panic
> message.
> 
> Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
> ---
> 
> v5:
>  * Use iosys_map for intel_bo_panic_map().
> 
>  drivers/gpu/drm/i915/display/intel_bo.c    |  5 ++++
>  drivers/gpu/drm/i915/display/intel_bo.h    |  1 +
>  drivers/gpu/drm/i915/gem/i915_gem_object.h |  2 ++
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 29 ++++++++++++++++++++++
>  drivers/gpu/drm/xe/display/intel_bo.c      | 10 ++++++++
>  5 files changed, 47 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
> index fbd16d7b58d9..ac904e9ec7d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.c
> +++ b/drivers/gpu/drm/i915/display/intel_bo.c
> @@ -57,3 +57,8 @@ void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
>  {
>  	i915_debugfs_describe_obj(m, to_intel_bo(obj));
>  }
> +
> +void intel_bo_panic_map(struct drm_gem_object *obj, struct iosys_map *map)
> +{
> +	i915_gem_object_panic_map(to_intel_bo(obj), map);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
> index ea7a2253aaa5..5b6c63d99786 100644
> --- a/drivers/gpu/drm/i915/display/intel_bo.h
> +++ b/drivers/gpu/drm/i915/display/intel_bo.h
> @@ -23,5 +23,6 @@ struct intel_frontbuffer *intel_bo_set_frontbuffer(struct drm_gem_object *obj,
>  						   struct intel_frontbuffer *front);
>  
>  void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
> +void intel_bo_panic_map(struct drm_gem_object *obj, struct iosys_map *map);
>  
>  #endif /* __INTEL_BO__ */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index a5f34542135c..b16092707ea5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -692,6 +692,8 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_object *obj)
>  int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
>  int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
>  
> +void i915_gem_object_panic_map(struct drm_i915_gem_object *obj, struct iosys_map *map);
> +
>  /**
>   * i915_gem_object_pin_map - return a contiguous mapping of the entire object
>   * @obj: the object to map into kernel address space
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 8780aa243105..718bea6474d7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -355,6 +355,35 @@ static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
>  	return vaddr ?: ERR_PTR(-ENOMEM);
>  }
>  
> +/* Map the current framebuffer for CPU access. Called from panic handler, so no
> + * need to pin or cleanup.
> + */
> +void i915_gem_object_panic_map(struct drm_i915_gem_object *obj, struct iosys_map *map)
> +{
> +	enum i915_map_type has_type;
> +	void *ptr;
> +
> +	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
> +
> +
> +	if (!ptr) {
> +		if (i915_gem_object_has_struct_page(obj))
> +			ptr = i915_gem_object_map_page(obj, I915_MAP_WB);
> +		else
> +			ptr = i915_gem_object_map_pfn(obj, I915_MAP_WB);

WB mapping would require clflushing to make it to the display.
Is that being done somewhere?

> +
> +		if (IS_ERR(ptr))
> +			return;

What happens when the mapping fails?

> +
> +		obj->mm.mapping = page_pack_bits(ptr, I915_MAP_WB);
> +	}
> +
> +	if (i915_gem_object_has_iomem(obj))
> +		iosys_map_set_vaddr_iomem(map, (void __iomem *) ptr);
> +	else
> +		iosys_map_set_vaddr(map, ptr);
> +}
> +
>  /* get, pin, and map the pages of the object into kernel space */
>  void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>  			      enum i915_map_type type)
> diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
> index 27437c22bd70..c68166a64336 100644
> --- a/drivers/gpu/drm/xe/display/intel_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_bo.c
> @@ -59,3 +59,13 @@ void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
>  {
>  	/* FIXME */
>  }
> +
> +void intel_bo_panic_map(struct drm_gem_object *obj, struct iosys_map *map)
> +{
> +	struct xe_bo *bo = gem_to_xe_bo(obj);
> +	int ret;
> +
> +	ret = ttm_bo_vmap(&bo->ttm, map);
> +	if (ret)
> +		iosys_map_clear(map);
> +}
> -- 
> 2.49.0

-- 
Ville Syrj�l�
Intel
