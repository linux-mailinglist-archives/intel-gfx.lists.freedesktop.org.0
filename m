Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5977334B63
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:18:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7BF6EA8B;
	Wed, 10 Mar 2021 22:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1316EA87
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:18:01 +0000 (UTC)
IronPort-SDR: Lf4z6PlO9vtLUCShSNQOyMbmgrUzoOncfF5yvzOIylLABg9+LI70GnIS9ffrWCRHF7kJO5trXO
 f6U2bJBx5C7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592110"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592110"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:18:01 -0800
IronPort-SDR: pVXVn0578bGsmB8BkAFjziNj0OLPxCFdHGWMwLsDxxM9wNHv9loPCs6yf700KeNVjjdtJK9lE9
 e9F8kgN78xuA==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852311"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:18:00 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:35 +0200
Message-Id: <20210310221736.2963264-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/23] drm/i915/selftest: Add remap/rotate vma
 subtests when dst_stride!=width/height
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add selftests to test the POT stride padding functionality added in the
previous patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_vma.c | 93 +++++++++++++++++++++--
 1 file changed, 86 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 4631db0cdfe5..b88de1257ee9 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -373,6 +373,8 @@ assert_rotated(struct drm_i915_gem_object *obj,
 	unsigned int x, y;
 
 	for (x = 0; x < r->plane[n].width; x++) {
+		unsigned int left;
+
 		for (y = 0; y < r->plane[n].height; y++) {
 			unsigned long src_idx;
 			dma_addr_t src;
@@ -401,6 +403,31 @@ assert_rotated(struct drm_i915_gem_object *obj,
 
 			sg = sg_next(sg);
 		}
+
+		left = (r->plane[n].dst_stride - y) * PAGE_SIZE;
+
+		if (!left)
+			continue;
+
+		if (!sg) {
+			pr_err("Invalid sg table: too short at plane %d, (%d, %d)!\n",
+			       n, x, y);
+			return ERR_PTR(-EINVAL);
+		}
+
+		if (sg_dma_len(sg) != left) {
+			pr_err("Invalid sg.length, found %d, expected %u for rotated page (%d, %d)\n",
+			       sg_dma_len(sg), left, x, y);
+			return ERR_PTR(-EINVAL);
+		}
+
+		if (sg_dma_address(sg) != 0) {
+			pr_err("Invalid address, found %pad, expected 0 for remapped page (%d, %d)\n",
+			       &sg_dma_address(sg), x, y);
+			return ERR_PTR(-EINVAL);
+		}
+
+		sg = sg_next(sg);
 	}
 
 	return sg;
@@ -462,15 +489,55 @@ assert_remapped(struct drm_i915_gem_object *obj,
 			if (!left)
 				sg = sg_next(sg);
 		}
+
+		if (left) {
+			pr_err("Unexpected sg tail with %d size for remapped page (%d, %d)\n",
+			       left,
+			       x, y);
+			return ERR_PTR(-EINVAL);
+		}
+
+		left = (r->plane[n].dst_stride - r->plane[n].width) * PAGE_SIZE;
+
+		if (!left)
+			continue;
+
+		if (!sg) {
+			pr_err("Invalid sg table: too short at plane %d, (%d, %d)!\n",
+			       n, x, y);
+			return ERR_PTR(-EINVAL);
+		}
+
+		if (sg_dma_len(sg) != left) {
+			pr_err("Invalid sg.length, found %u, expected %u for remapped page (%d, %d)\n",
+			       sg_dma_len(sg), left,
+			       x, y);
+			return ERR_PTR(-EINVAL);
+		}
+
+		if (sg_dma_address(sg) != 0) {
+			pr_err("Invalid address, found %pad, expected 0 for remapped page (%d, %d)\n",
+			       &sg_dma_address(sg),
+			       x, y);
+			return ERR_PTR(-EINVAL);
+		}
+
+		sg = sg_next(sg);
+		left = 0;
 	}
 
 	return sg;
 }
 
-static unsigned int rotated_size(const struct intel_remapped_plane_info *a,
-				 const struct intel_remapped_plane_info *b)
+static unsigned int remapped_size(enum i915_ggtt_view_type view_type,
+				  const struct intel_remapped_plane_info *a,
+				  const struct intel_remapped_plane_info *b)
 {
-	return a->width * a->height + b->width * b->height;
+
+	if (view_type == I915_GGTT_VIEW_ROTATED)
+		return a->dst_stride * a->width + b->dst_stride * b->width;
+	else
+		return a->dst_stride * a->height + b->dst_stride * b->height;
 }
 
 static int igt_vma_rotate_remap(void *arg)
@@ -494,6 +561,11 @@ static int igt_vma_rotate_remap(void *arg)
 
 		{ .width = 4, .height = 6, .src_stride = 6 },
 		{ .width = 6, .height = 4, .src_stride = 6 },
+
+		{ .width = 2, .height = 2, .src_stride = 2, .dst_stride = 2 },
+		{ .width = 3, .height = 3, .src_stride = 3, .dst_stride = 4 },
+		{ .width = 5, .height = 6, .src_stride = 7, .dst_stride = 8 },
+
 		{ }
 	}, *a, *b;
 	enum i915_ggtt_view_type types[] = {
@@ -555,7 +627,7 @@ static int igt_vma_rotate_remap(void *arg)
 						goto out_object;
 					}
 
-					expected_pages = rotated_size(&plane_info[0], &plane_info[1]);
+					expected_pages = remapped_size(view.type, &plane_info[0], &plane_info[1]);
 
 					if (view.type == I915_GGTT_VIEW_ROTATED &&
 					    vma->size != expected_pages * PAGE_SIZE) {
@@ -600,16 +672,18 @@ static int igt_vma_rotate_remap(void *arg)
 						else
 							sg = assert_remapped(obj, &view.remapped, n, sg);
 						if (IS_ERR(sg)) {
-							pr_err("Inconsistent %s VMA pages for plane %d: [(%d, %d, %d, %d), (%d, %d, %d, %d)]\n",
+							pr_err("Inconsistent %s VMA pages for plane %d: [(%d, %d, %d, %d, %d), (%d, %d, %d, %d, %d)]\n",
 							       view.type == I915_GGTT_VIEW_ROTATED ?
 							       "rotated" : "remapped", n,
 							       plane_info[0].width,
 							       plane_info[0].height,
 							       plane_info[0].src_stride,
+							       plane_info[0].dst_stride,
 							       plane_info[0].offset,
 							       plane_info[1].width,
 							       plane_info[1].height,
 							       plane_info[1].src_stride,
+							       plane_info[1].dst_stride,
 							       plane_info[1].offset);
 							err = -EINVAL;
 							goto out_object;
@@ -877,6 +951,11 @@ static int igt_vma_remapped_gtt(void *arg)
 
 		{ .width = 4, .height = 6, .src_stride = 6 },
 		{ .width = 6, .height = 4, .src_stride = 6 },
+
+		{ .width = 2, .height = 2, .src_stride = 2, .dst_stride = 2 },
+		{ .width = 3, .height = 3, .src_stride = 3, .dst_stride = 4 },
+		{ .width = 5, .height = 6, .src_stride = 7, .dst_stride = 8 },
+
 		{ }
 	}, *p;
 	enum i915_ggtt_view_type types[] = {
@@ -930,9 +1009,9 @@ static int igt_vma_remapped_gtt(void *arg)
 					u32 val = y << 16 | x;
 
 					if (*t == I915_GGTT_VIEW_ROTATED)
-						offset = (x * plane_info[0].height + y) * PAGE_SIZE;
+						offset = (x * plane_info[0].dst_stride + y) * PAGE_SIZE;
 					else
-						offset = (y * plane_info[0].width + x) * PAGE_SIZE;
+						offset = (y * plane_info[0].dst_stride + x) * PAGE_SIZE;
 
 					iowrite32(val, &map[offset / sizeof(*map)]);
 				}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
