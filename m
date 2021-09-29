Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A5D41C3DB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 13:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657526EA2F;
	Wed, 29 Sep 2021 11:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737596EA29;
 Wed, 29 Sep 2021 11:54:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="224992634"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="224992634"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 04:54:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="708346093"
Received: from jmaugusx-mobl1.gar.corp.intel.com (HELO [10.249.254.159])
 ([10.249.254.159])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 04:54:35 -0700
Message-ID: <6372b5a3ab5b8d5b640af59c9290cbe6da21a0f9.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Date: Wed, 29 Sep 2021 13:54:33 +0200
In-Reply-To: <20210927114114.152310-12-matthew.auld@intel.com>
References: <20210927114114.152310-1-matthew.auld@intel.com>
 <20210927114114.152310-12-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 12/13] drm/i915/ttm: use cached system
 pages when evicting lmem
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

On Mon, 2021-09-27 at 12:41 +0100, Matthew Auld wrote:
> This should let us do an accelerated copy directly to the shmem pages
> when temporarily moving lmem-only objects, where the i915-gem
> shrinker
> can later kick in to swap out the pages, if needed.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 194e5f1deda8..46d57541c0b2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -134,11 +134,11 @@ static enum ttm_caching
>  i915_ttm_select_tt_caching(const struct drm_i915_gem_object *obj)
>  {
>         /*
> -        * Objects only allowed in system get cached cpu-mappings.
> -        * Other objects get WC mapping for now. Even if in system.
> +        * Objects only allowed in system get cached cpu-mappings, or
> when
> +        * evicting lmem-only buffers to system for swapping. Other
> objects get
> +        * WC mapping for now. Even if in system.
>          */
> -       if (obj->mm.region->type == INTEL_MEMORY_SYSTEM &&
> -           obj->mm.n_placements <= 1)
> +       if (obj->mm.n_placements <= 1)
>                 return ttm_cached;
>  
>         return ttm_write_combined;

We should be aware that with TTM, even evicted bos can be mapped by
user-space while evicted, and this will appear to user-space like the
WC-mapped object suddenly became WB-mapped. But it appears like mesa
doesn't care about this as long as the mappings are fully coherent.

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>




