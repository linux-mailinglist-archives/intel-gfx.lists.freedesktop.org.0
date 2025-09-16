Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5207B59517
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 13:24:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B5C10E77C;
	Tue, 16 Sep 2025 11:24:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wm5lWSWe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69FC10E774;
 Tue, 16 Sep 2025 11:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758021886; x=1789557886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T6QSdd9im9TwtM6pJnF79OwFNgjEqF5MU1rz9rGCVZk=;
 b=Wm5lWSWeIzkDk0Q3w+u0YgzojR8GMn4K9GqIQ9dQvKqf9jcPE4UQKE9c
 r1HuKH6DxM2eFVauw8odLu6eZuElbH8nVhLdVJXaYXcWAqlEoWML69MmN
 k9FuOnvadKB/n4ekEqObp6oojRJzcQSWb2mij0QfEnMfyh4n1UhFYvwvi
 /l2XcVyWrfqM3qzEwc5BROgBFgz+ZjuU4GgUNnXyd1gRoMuWTxa3Kgfya
 PecmU67YxTmc83m0rqFmvYsH/8s+u4+KYroxgdYpq3/PUvCMUcv1vke0u
 W+yqeSFvhWErdeVkLTWMWpIkdi1qFSF0VLX5STCY0OlJvde0lRVlgRTpW A==;
X-CSE-ConnectionGUID: sdOnzspHRXW9MQpTbIBIAg==
X-CSE-MsgGUID: L90kVsqpQuC/kPSjQmrCpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="77905933"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="77905933"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:24:45 -0700
X-CSE-ConnectionGUID: UeghP/WeQVKNOPOwp1fOiQ==
X-CSE-MsgGUID: NlCkyIChRkylWpYQQIAqtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174521710"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.81])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:24:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 4/4] drm/xe/dsb: drop the unnecessary struct i915_vma
Date: Tue, 16 Sep 2025 14:24:20 +0300
Message-ID: <fbeac00ef1a259f8c9074c6a16f34a886d0497e4.1758021803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758021803.git.jani.nikula@intel.com>
References: <cover.1758021803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Now that struct intel_dsb_buffer is opaque, it can be made unique to
both drivers, and we can drop the unnecessary struct i915_vma part. Only
the struct xe_bo part is needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c | 28 +++++++---------------
 1 file changed, 8 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index d55858705106..fa0acb11eaad 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -3,7 +3,6 @@
  * Copyright 2023, Intel Corporation.
  */
 
-#include "i915_vma.h"
 #include "intel_dsb_buffer.h"
 #include "xe_bo.h"
 #include "xe_device.h"
@@ -11,30 +10,30 @@
 
 struct intel_dsb_buffer {
 	u32 *cmd_buf;
-	struct i915_vma *vma;
+	struct xe_bo *bo;
 	size_t buf_size;
 };
 
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 {
-	return xe_bo_ggtt_addr(dsb_buf->vma->bo);
+	return xe_bo_ggtt_addr(dsb_buf->bo);
 }
 
 void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val)
 {
-	iosys_map_wr(&dsb_buf->vma->bo->vmap, idx * 4, u32, val);
+	iosys_map_wr(&dsb_buf->bo->vmap, idx * 4, u32, val);
 }
 
 u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx)
 {
-	return iosys_map_rd(&dsb_buf->vma->bo->vmap, idx * 4, u32);
+	return iosys_map_rd(&dsb_buf->bo->vmap, idx * 4, u32);
 }
 
 void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size)
 {
 	WARN_ON(idx > (dsb_buf->buf_size - size) / sizeof(*dsb_buf->cmd_buf));
 
-	iosys_map_memset(&dsb_buf->vma->bo->vmap, idx * 4, val, size);
+	iosys_map_memset(&dsb_buf->bo->vmap, idx * 4, val, size);
 }
 
 struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t size)
@@ -42,19 +41,12 @@ struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t
 	struct xe_device *xe = to_xe_device(drm);
 	struct intel_dsb_buffer *dsb_buf;
 	struct xe_bo *obj;
-	struct i915_vma *vma;
 	int ret;
 
 	dsb_buf = kzalloc(sizeof(*dsb_buf), GFP_KERNEL);
 	if (!dsb_buf)
 		return ERR_PTR(-ENOMEM);
 
-	vma = kzalloc(sizeof(*vma), GFP_KERNEL);
-	if (!vma) {
-		ret = -ENOMEM;
-		goto err_vma;
-	}
-
 	/* Set scanout flag for WC mapping */
 	obj = xe_bo_create_pin_map_novm(xe, xe_device_get_root_tile(xe),
 					PAGE_ALIGN(size),
@@ -66,15 +58,12 @@ struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t
 		goto err_pin_map;
 	}
 
-	vma->bo = obj;
-	dsb_buf->vma = vma;
+	dsb_buf->bo = obj;
 	dsb_buf->buf_size = size;
 
 	return dsb_buf;
 
 err_pin_map:
-	kfree(vma);
-err_vma:
 	kfree(dsb_buf);
 
 	return ERR_PTR(ret);
@@ -82,14 +71,13 @@ struct intel_dsb_buffer *intel_dsb_buffer_create(struct drm_device *drm, size_t
 
 void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf)
 {
-	xe_bo_unpin_map_no_vm(dsb_buf->vma->bo);
-	kfree(dsb_buf->vma);
+	xe_bo_unpin_map_no_vm(dsb_buf->bo);
 	kfree(dsb_buf);
 }
 
 void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf)
 {
-	struct xe_device *xe = dsb_buf->vma->bo->tile->xe;
+	struct xe_device *xe = dsb_buf->bo->tile->xe;
 
 	/*
 	 * The memory barrier here is to ensure coherency of DSB vs MMIO,
-- 
2.47.3

