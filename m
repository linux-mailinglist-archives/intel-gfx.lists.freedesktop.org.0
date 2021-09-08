Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6C3403327
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 06:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BBE6E105;
	Wed,  8 Sep 2021 04:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E516E105
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 04:08:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="242672535"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="242672535"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 21:07:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="503377674"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 21:07:57 -0700
Date: Tue, 7 Sep 2021 21:08:09 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210908040809.GS11424@nvishwa1-DESK>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-18-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210830121006.2978297-18-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 17/19] drm/i915: Add functions to set/get
 moving fence
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

On Mon, Aug 30, 2021 at 02:10:04PM +0200, Maarten Lankhorst wrote:
>We want to get rid of i915_vma tracking to simplify the code and
>lifetimes. Add a way to set/put the moving fence, in preparation for
>removing the tracking.
>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_object.c | 15 +++++++++++++++
> drivers/gpu/drm/i915/gem/i915_gem_object.h |  6 ++++++
> 2 files changed, 21 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>index 6fb9afb65034..dc0d2da297a0 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>@@ -32,6 +32,7 @@
> #include "i915_gem_object.h"
> #include "i915_memcpy.h"
> #include "i915_trace.h"
>+#include "i915_gem_ttm.h"
>
> static struct kmem_cache *slab_objects;
>
>@@ -674,6 +675,20 @@ static const struct drm_gem_object_funcs i915_gem_object_funcs = {
> 	.export = i915_gem_prime_export,
> };
>
>+struct dma_fence *
>+i915_gem_object_get_moving_fence(struct drm_i915_gem_object *obj)
>+{
>+	return dma_fence_get(i915_gem_to_ttm(obj)->moving);
>+}
>+
>+void  i915_gem_object_set_moving_fence(struct drm_i915_gem_object *obj,
>+				       struct dma_fence *fence)
>+{
>+	dma_fence_put(i915_gem_to_ttm(obj)->moving);
>+
>+	i915_gem_to_ttm(obj)->moving = dma_fence_get(fence);
>+}

When is i915_gem_object_set_moving_fence() called?
I am not seeing it being called in this patch series.

Niranjana

>+
> #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> #include "selftests/huge_gem_object.c"
> #include "selftests/huge_pages.c"
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>index 48112b9d76df..a23acfa98e21 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>@@ -520,6 +520,12 @@ i915_gem_object_last_write_engine(struct drm_i915_gem_object *obj)
> 	return engine;
> }
>
>+struct dma_fence *
>+i915_gem_object_get_moving_fence(struct drm_i915_gem_object *obj);
>+
>+void  i915_gem_object_set_moving_fence(struct drm_i915_gem_object *obj,
>+				       struct dma_fence *fence);
>+
> void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj,
> 					 unsigned int cache_level);
> void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj);
>-- 
>2.32.0
>
