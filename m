Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E0C6F599E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A586E89819;
	Wed,  3 May 2023 14:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 241A389819
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:13:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 847C462DE1;
 Wed,  3 May 2023 14:13:47 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id BCA01C433EF;
 Wed,  3 May 2023 14:13:44 +0000 (UTC)
Date: Wed, 3 May 2023 10:13:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJsFsBPp/HS8I0k@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <89ab5cf179566c429383cc57db746038f75cba0d.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <89ab5cf179566c429383cc57db746038f75cba0d.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/24] drm/i915/vma: fix struct
 i915_vma_bindinfo kernel-doc
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 02, 2023 at 06:37:22PM +0300, Jani Nikula wrote:
> You can't document both a sub-struct type and a struct member at the
> same time. Separate them.

another way would be to kill the 'i915_vma_bindinfo' name entirely and
document only as '@bi:' and then move the individual documentations near
their definitions.

> 
> drivers/gpu/drm/i915/i915_vma_resource.h:91: warning: Incorrect use of kernel-doc format:          * struct i915_vma_bindinfo - Information needed for async bind
> drivers/gpu/drm/i915/i915_vma_resource.h:129: warning: Function parameter or member 'bi' not described in 'i915_vma_resource'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_vma_resource.h | 45 ++++++++++++++----------
>  1 file changed, 27 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
> index 2053c037dbfb..ca2b0f7f59bc 100644
> --- a/drivers/gpu/drm/i915/i915_vma_resource.h
> +++ b/drivers/gpu/drm/i915/i915_vma_resource.h
> @@ -33,6 +33,27 @@ struct i915_page_sizes {
>  	unsigned int sg;
>  };
>  
> +/**
> + * struct i915_vma_bindinfo - Information needed for async bind
> + * only but that can be dropped after the bind has taken place.
> + * Consider making this a separate argument to the bind_vma
> + * op, coalescing with other arguments like vm, stash, cache_level
> + * and flags
> + * @pages: The pages sg-table.
> + * @page_sizes: Page sizes of the pages.
> + * @pages_rsgt: Refcounted sg-table when delayed object destruction
> + * is supported. May be NULL.
> + * @readonly: Whether the vma should be bound read-only.
> + * @lmem: Whether the vma points to lmem.
> + */
> +struct i915_vma_bindinfo {
> +	struct sg_table *pages;
> +	struct i915_page_sizes page_sizes;
> +	struct i915_refct_sgt *pages_rsgt;
> +	bool readonly:1;
> +	bool lmem:1;

btw, I believe we should move all the individual docs near to its
declarations. easier to forget updating the documentation when updating
fields here.

> +};
> +
>  /**
>   * struct i915_vma_resource - Snapshotted unbind information.
>   * @unbind_fence: Fence to mark unbinding complete. Note that this fence
> @@ -89,25 +110,13 @@ struct i915_vma_resource {
>  	intel_wakeref_t wakeref;
>  
>  	/**
> -	 * struct i915_vma_bindinfo - Information needed for async bind
> -	 * only but that can be dropped after the bind has taken place.
> -	 * Consider making this a separate argument to the bind_vma
> -	 * op, coalescing with other arguments like vm, stash, cache_level
> -	 * and flags
> -	 * @pages: The pages sg-table.
> -	 * @page_sizes: Page sizes of the pages.
> -	 * @pages_rsgt: Refcounted sg-table when delayed object destruction
> -	 * is supported. May be NULL.
> -	 * @readonly: Whether the vma should be bound read-only.
> -	 * @lmem: Whether the vma points to lmem.
> +	 * @bi: Information needed for async bind only but that can be dropped
> +	 * after the bind has taken place.
> +	 *
> +	 * Consider making this a separate argument to the bind_vma op,
> +	 * coalescing with other arguments like vm, stash, cache_level and flags
>  	 */
> -	struct i915_vma_bindinfo {
> -		struct sg_table *pages;
> -		struct i915_page_sizes page_sizes;
> -		struct i915_refct_sgt *pages_rsgt;
> -		bool readonly:1;
> -		bool lmem:1;
> -	} bi;
> +	struct i915_vma_bindinfo bi;
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>  	struct intel_memory_region *mr;
> -- 
> 2.39.2
> 
