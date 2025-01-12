Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6991A0AC1D
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2025 23:10:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F2710E21C;
	Sun, 12 Jan 2025 22:10:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YqZXrZWT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6B910E21C;
 Sun, 12 Jan 2025 22:10:00 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-2162c0f6a39so82404115ad.0; 
 Sun, 12 Jan 2025 14:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736719739; x=1737324539; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=h31xeqTALHg0Xq8NLCEByv7F48Dq2GVMgIdAr2zonFc=;
 b=YqZXrZWTP445teKL0gK3LtJA0ybkjPKGGTBmpgWCDPhRUqF5myhNHiN5sGFQ8SHHyd
 066WyLxKUPtskBGEykkzaQLnVyAResB7o7+WNmjEO6X03dt/U3suP45u0INC0kyQjdHd
 KW0OKHSJsHjCka9D9+HXQnPSIJMyFWqYh6YpH0aXTOQwn0SvYFooxRet7QKFIKX20kiq
 UiORgeJMI2f0pLfMU4xb2bnqD4jp1Va5pvtLN4lP6Imnu5Tbu66NyBx0ArrUMjZAHluT
 jcXnRNY3IUXcpQE8yaVH4by2aE7PpE4P6eOQbeeQP/YjREA//XqpT4zOe/Of8/2MqA23
 4ExQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736719739; x=1737324539;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=h31xeqTALHg0Xq8NLCEByv7F48Dq2GVMgIdAr2zonFc=;
 b=ey3Rp1Wcuh414ITLNyO5akC0cKD09gY5BA0zt8s7sEvTqvW90xmqOJggk86j/qolaI
 p27eQMMH7Lh+ctGE72tE307AJAHzZ2rEBfooLMNM1r6Vwe+TpPid1CJLN5/zUST7izxv
 7YmfTbtv5h7jzWaF9QeUVeDCI7NzX3LiqOsfDr/Zfrh/58Qo6lS88zJZive2yAc8ZQ3n
 nwRhmAiqYyQzYAdp4vcc4LdDy6Z3+mQpCBXEJVHRE82OBNnfYTOxR8bheagDOwM4LwUU
 /Cronm0cBQ40O9wPWFMQkCQIKwJaVd5j2EcST1ZZaeV2ySlTqbI1QAMcIsw+fLa4NiBX
 pwag==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsM5/y3N4o41lWV3YsZbhhBkKoMdFvJXFpwnzLZeDHjjSoF39bF74pQLQf+zrGhiXzL3qVtFKaYw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwnQiz4Ug4qjtvs1bB9I/jQHspsGXub+2fUBeXXZUJkLVb4SutQ
 VPT6gYGZayx9h4HfTAxXeD/kXEGUbp4u5pyRagMq5JEFq5bXvcvx2/dgjI7h
X-Gm-Gg: ASbGncvySAzWYhOpZnjVDowU0lKlyADM9LWf1KWm0KX7UkecDiIAcso5sTj7fK0vtTL
 5R5t+Hkrclq5yGyQ3yBJM0ZRRnS5YFS86X8mYB6sIY+Tv9nST0uOYNTYU6DzPpGRLYpzIwDVUim
 GlW0qVwK62HTeNZrYiAt402DpyzdYDq5CX6GjbYxBRv5n6fNhBstHLO+PhDk6C+TVYG5PDoTI1J
 fI4PT1QjiOHAVT/GcPHrwxNLIN9m6qduzFMx2r+RxyZHjKzph5NdfG0fAF2w4U=
X-Google-Smtp-Source: AGHT+IEu4316dRboac1LN4IyomTpqbbrPu9Xs+QUY0PFENnCr17c+fk0Riees9JZNP/MC4QtwtLKyg==
X-Received: by 2002:a62:b40c:0:b0:725:4a1b:38ec with SMTP id
 d2e1a72fcca58-72d303014b0mr17122704b3a.3.1736719739117; 
 Sun, 12 Jan 2025 14:08:59 -0800 (PST)
Received: from localhost ([192.55.55.46]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72d406a7536sm4640213b3a.161.2025.01.12.14.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2025 14:08:58 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 1/2] drm/xe/display: Unify DPT mapping
Date: Mon, 13 Jan 2025 00:13:43 +0200
Message-ID: <20250112221344.644836-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Unify writing of rotated, remapped and straight DPTs

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 148 ++++++++++---------------
 1 file changed, 58 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 9fa51b84737c..9cc7bd97d4a4 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -14,66 +14,51 @@
 #include "xe_ggtt.h"
 #include "xe_pm.h"
 
-static void
-write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
-		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
+static void encode_and_write_pte(struct xe_bo *bo, struct iosys_map *map,
+				 u32 *ofs, u32 src_idx, struct xe_device *xe)
 {
-	struct xe_device *xe = xe_bo_device(bo);
 	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
-	u32 column, row;
-
-	/* TODO: Maybe rewrite so we can traverse the bo addresses sequentially,
-	 * by writing dpt/ggtt in a different order?
-	 */
-
-	for (column = 0; column < width; column++) {
-		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
-
-		for (row = 0; row < height; row++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
-							      xe->pat.idx[XE_CACHE_NONE]);
-
-			iosys_map_wr(map, *dpt_ofs, u64, pte);
-			*dpt_ofs += 8;
-			src_idx -= src_stride;
-		}
-
-		/* The DE ignores the PTEs for the padding tiles */
-		*dpt_ofs += (dst_stride - height) * 8;
-	}
-
-	/* Align to next page */
-	*dpt_ofs = ALIGN(*dpt_ofs, 4096);
+	u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
+					      xe->pat.idx[XE_CACHE_NONE]);
+	iosys_map_wr(map, *ofs, u64, pte);
+	*ofs += 8;
 }
 
-static void
-write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
-		   u32 bo_ofs, u32 width, u32 height, u32 src_stride,
-		   u32 dst_stride)
+static void write_dpt(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
+		      const struct intel_remapped_plane_info *plane,
+		      enum i915_gtt_view_type type)
 {
 	struct xe_device *xe = xe_bo_device(bo);
-	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
-	u64 (*pte_encode_bo)(struct xe_bo *bo, u64 bo_offset, u16 pat_index)
-		= ggtt->pt_ops->pte_encode_bo;
-	u32 column, row;
-
-	for (row = 0; row < height; row++) {
-		u32 src_idx = src_stride * row + bo_ofs;
-
-		for (column = 0; column < width; column++) {
-			iosys_map_wr(map, *dpt_ofs, u64,
-				     pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
-				     xe->pat.idx[XE_CACHE_NONE]));
-
-			*dpt_ofs += 8;
-			src_idx++;
+	const u32 dpt_even = (plane->dst_stride - (type == I915_GTT_VIEW_ROTATED
+			      ? plane->height : plane->width)) * 8;
+	const u32 dest_width = type == I915_GTT_VIEW_ROTATED
+		? plane->height : plane->width;
+	const u32 dest_height = type == I915_GTT_VIEW_ROTATED
+		? plane->width : plane->height;
+	u32 src_idx;
+
+	for (u32 row = 0; row < dest_height; ++row) {
+		for (u32 column = 0; column < dest_width; ++column) {
+			switch (type) {
+			case I915_GTT_VIEW_NORMAL:
+				src_idx = plane->offset + column;
+				break;
+			case I915_GTT_VIEW_REMAPPED:
+				src_idx = plane->offset +
+					row * plane->src_stride + column;
+				break;
+			case I915_GTT_VIEW_ROTATED:
+				src_idx = plane->offset
+					+ plane->src_stride
+					* (plane->height - 1)
+					- column * plane->src_stride
+					+ row;
+				break;
+			}
+			encode_and_write_pte(bo, map, dpt_ofs, src_idx, xe);
 		}
-
-		/* The DE ignores the PTEs for the padding tiles */
-		*dpt_ofs += (dst_stride - width) * 8;
+		*dpt_ofs += dpt_even;
 	}
-
-	/* Align to next page */
 	*dpt_ofs = ALIGN(*dpt_ofs, 4096);
 }
 
@@ -84,20 +69,34 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 {
 	struct xe_device *xe = to_xe_device(fb->base.dev);
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
-	struct xe_ggtt *ggtt = tile0->mem.ggtt;
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct xe_bo *bo = gem_to_xe_bo(obj), *dpt;
 	u32 dpt_size, size = bo->ttm.base.size;
+	const struct intel_remapped_plane_info *plane;
+	u32 i, plane_count, dpt_ofs = 0;
+	struct intel_remapped_plane_info normal_plane;
 
-	if (view->type == I915_GTT_VIEW_NORMAL)
+	if (view->type == I915_GTT_VIEW_NORMAL) {
 		dpt_size = ALIGN(size / XE_PAGE_SIZE * 8, XE_PAGE_SIZE);
-	else if (view->type == I915_GTT_VIEW_REMAPPED)
-		dpt_size = ALIGN(intel_remapped_info_size(&fb->remapped_view.gtt.remapped) * 8,
+		normal_plane.offset = 0;
+		normal_plane.width = size / XE_PAGE_SIZE;
+		normal_plane.height = 1;
+		normal_plane.src_stride = size / XE_PAGE_SIZE;
+		normal_plane.dst_stride = size / XE_PAGE_SIZE;
+		plane = &normal_plane;
+		plane_count = 1;
+	} else if (view->type == I915_GTT_VIEW_REMAPPED) {
+		dpt_size = ALIGN(intel_remapped_info_size(&view->remapped) * 8,
 				 XE_PAGE_SIZE);
-	else
+		plane = view->remapped.plane;
+		plane_count = ARRAY_SIZE(view->remapped.plane);
+	} else {
 		/* display uses 4K tiles instead of bytes here, convert to entries.. */
 		dpt_size = ALIGN(intel_rotation_info_size(&view->rotated) * 8,
 				 XE_PAGE_SIZE);
+		plane = view->rotated.plane;
+		plane_count = ARRAY_SIZE(view->rotated.plane);
+	}
 
 	if (IS_DGFX(xe))
 		dpt = xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
@@ -126,39 +125,8 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 	if (IS_ERR(dpt))
 		return PTR_ERR(dpt);
 
-	if (view->type == I915_GTT_VIEW_NORMAL) {
-		u32 x;
-
-		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x * XE_PAGE_SIZE,
-							      xe->pat.idx[XE_CACHE_NONE]);
-
-			iosys_map_wr(&dpt->vmap, x * 8, u64, pte);
-		}
-	} else if (view->type == I915_GTT_VIEW_REMAPPED) {
-		const struct intel_remapped_info *remap_info = &view->remapped;
-		u32 i, dpt_ofs = 0;
-
-		for (i = 0; i < ARRAY_SIZE(remap_info->plane); i++)
-			write_dpt_remapped(bo, &dpt->vmap, &dpt_ofs,
-					   remap_info->plane[i].offset,
-					   remap_info->plane[i].width,
-					   remap_info->plane[i].height,
-					   remap_info->plane[i].src_stride,
-					   remap_info->plane[i].dst_stride);
-
-	} else {
-		const struct intel_rotation_info *rot_info = &view->rotated;
-		u32 i, dpt_ofs = 0;
-
-		for (i = 0; i < ARRAY_SIZE(rot_info->plane); i++)
-			write_dpt_rotated(bo, &dpt->vmap, &dpt_ofs,
-					  rot_info->plane[i].offset,
-					  rot_info->plane[i].width,
-					  rot_info->plane[i].height,
-					  rot_info->plane[i].src_stride,
-					  rot_info->plane[i].dst_stride);
-	}
+	for (i = 0; i < plane_count; i++)
+		write_dpt(bo, &dpt->vmap, &dpt_ofs, &plane[i], view->type);
 
 	vma->dpt = dpt;
 	vma->node = dpt->ggtt_node[tile0->id];
-- 
2.45.2

