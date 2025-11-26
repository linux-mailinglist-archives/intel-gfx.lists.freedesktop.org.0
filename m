Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB45C8975C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 12:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A66C10E5A2;
	Wed, 26 Nov 2025 11:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J3OivqFN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974FA10E5A2;
 Wed, 26 Nov 2025 11:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764155508; x=1795691508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T6QSdd9im9TwtM6pJnF79OwFNgjEqF5MU1rz9rGCVZk=;
 b=J3OivqFNREsUJo+wv29qjECGEESAejc3ddIxUgiS+pvCejzaT9NhSNu0
 ygMsDs1uFj3EJrz7FYA5JiwFq/rhR5PKZpD7G6EC60zjupHYv3hnRNyPU
 im4fWEsdYh4dofuByHhrSRdS9i66relKsOBnt4a3mlAyFo7aypUcWgwrb
 oGsZ5GyXov3YNfjgudEhftDmVCWbKPNy3CQNmmZ9nxR6q8rHjixTr2IUq
 msxNNregNAEr+sgFgRMphLovyEJznPML2dsDS1NiedA3Wi3jJGn7NaJnh
 A3OiREOfxyyyBMWKy7MAQepzOkJOHRUmLscGuUeM/CzGDXTs9uGpIKtDX g==;
X-CSE-ConnectionGUID: sq5g8aL9QjSnXDtHw8K9RQ==
X-CSE-MsgGUID: dsaxvi04SSGgdV1Zh92eBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66349682"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66349682"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 03:11:48 -0800
X-CSE-ConnectionGUID: g044VjtcR7ecVSsN0ysCTw==
X-CSE-MsgGUID: 7rzbBv0nQX6aCwche6/ScQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="197404490"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.1])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 03:11:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [RESEND 4/4] drm/xe/dsb: drop the unnecessary struct i915_vma
Date: Wed, 26 Nov 2025 13:11:23 +0200
Message-ID: <f0bba09d2f185fe3e7f3b803036f036d845a8cc4.1764155417.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764155417.git.jani.nikula@intel.com>
References: <cover.1764155417.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

