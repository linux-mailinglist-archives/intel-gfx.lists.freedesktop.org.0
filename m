Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EB6778444
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 01:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2813C10E063;
	Thu, 10 Aug 2023 23:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEFB10E063
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 23:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691711183; x=1723247183;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GpeYzHG6CcL+lGs0jvjkSfjQP/f8ypp/sBeHmTpnJJI=;
 b=jpbweSHeZTrbYExCEutXQuDshVZEqe9C2AetTU4UEyrjkPiBq3Po2Tga
 B7H3jBx3GJCmQNFPn6A6lRlvrxwkpgHw2SbTaV6+k4c/hvpCFv56TKPOC
 8pP73DqtHYULU3D7t0N0ixByCcgBDs2ffEleC6Y2PqltaCgWLE5qDYYzW
 teHbmMTcuO7hAe1eqHCzdAf/L/C+CeuhD4O8JI5gToYcpPT/oXsuU2Hwg
 lFLwIZyRxXevQ8iqFrF7HM49TC1q4AoiWjdhwwi+hOcgzNozzWhE8kVH+
 tYjbxJOQRhKcUsWP8+alx5m8KGy5JHPOdV19XwxUk6oFxCqPdUGFA3FaT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369023461"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="369023461"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 16:46:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="682319936"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="682319936"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 16:46:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 16:46:19 -0700
Message-ID: <20230810234618.3738870-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftest: Simplify Y-major tiling
 in blit selftest
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than picking random tiling formats from a pool that contains both
TileY and Tile4 and then trying to replace one with the other depending
on the platform, it's simpler to just use a single enum value that
represents whatever the platform-appropriate Y-major tiling format is
(i.e., Tile4 on Xe_HP and beyond, legacy TileY on earlier platforms).

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../i915/gem/selftests/i915_gem_client_blt.c  | 39 +++++++------------
 1 file changed, 15 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index ff81af4c8202..10a7847f1b04 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -83,8 +83,7 @@ static int linear_x_y_to_ftiled_pos(int x, int y, u32 stride, int bpp)
 enum client_tiling {
 	CLIENT_TILING_LINEAR,
 	CLIENT_TILING_X,
-	CLIENT_TILING_Y,
-	CLIENT_TILING_4,
+	CLIENT_TILING_Y,  /* Y-major, either Tile4 (Xe_HP and beyond) or legacy TileY */
 	CLIENT_NUM_TILING_TYPES
 };
 
@@ -165,11 +164,10 @@ static int prepare_blit(const struct tiled_blits *t,
 			 BLIT_CCTL_DST_MOCS(gt->mocs.uc_index));
 
 		src_pitch = t->width; /* in dwords */
-		if (src->tiling == CLIENT_TILING_4) {
-			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
-			src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
-		} else if (src->tiling == CLIENT_TILING_Y) {
+		if (src->tiling == CLIENT_TILING_Y) {
 			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
+			if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= IP_VER(12, 50))
+				src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
 		} else if (src->tiling == CLIENT_TILING_X) {
 			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
 		} else {
@@ -177,11 +175,10 @@ static int prepare_blit(const struct tiled_blits *t,
 		}
 
 		dst_pitch = t->width; /* in dwords */
-		if (dst->tiling == CLIENT_TILING_4) {
-			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
-			dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
-		} else if (dst->tiling == CLIENT_TILING_Y) {
+		if (dst->tiling == CLIENT_TILING_Y) {
 			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
+			if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= IP_VER(12, 50))
+				dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
 		} else if (dst->tiling == CLIENT_TILING_X) {
 			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
 		} else {
@@ -326,12 +323,6 @@ static int tiled_blits_create_buffers(struct tiled_blits *t,
 		t->buffers[i].vma = vma;
 		t->buffers[i].tiling =
 			i915_prandom_u32_max_state(CLIENT_NUM_TILING_TYPES, prng);
-
-		/* Platforms support either TileY or Tile4, not both */
-		if (HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_Y)
-			t->buffers[i].tiling = CLIENT_TILING_4;
-		else if (!HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_4)
-			t->buffers[i].tiling = CLIENT_TILING_Y;
 	}
 
 	return 0;
@@ -367,18 +358,19 @@ static u64 tiled_offset(const struct intel_gt *gt,
 
 	y = div64_u64_rem(v, stride, &x);
 
-	if (tiling == CLIENT_TILING_4) {
-		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
-
-		/* no swizzling for f-tiling */
-		swizzle = I915_BIT_6_SWIZZLE_NONE;
-	} else if (tiling == CLIENT_TILING_X) {
+	if (tiling == CLIENT_TILING_X) {
 		v = div64_u64_rem(y, 8, &y) * stride * 8;
 		v += y * 512;
 		v += div64_u64_rem(x, 512, &x) << 12;
 		v += x;
 
 		swizzle = gt->ggtt->bit_6_swizzle_x;
+	} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
+		/* Y-major tiling layout is Tile4 for Xe_HP and beyond */
+		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
+
+		/* no swizzling for f-tiling */
+		swizzle = I915_BIT_6_SWIZZLE_NONE;
 	} else {
 		const unsigned int ytile_span = 16;
 		const unsigned int ytile_height = 512;
@@ -414,8 +406,7 @@ static const char *repr_tiling(enum client_tiling tiling)
 	switch (tiling) {
 	case CLIENT_TILING_LINEAR: return "linear";
 	case CLIENT_TILING_X: return "X";
-	case CLIENT_TILING_Y: return "Y";
-	case CLIENT_TILING_4: return "F";
+	case CLIENT_TILING_Y: return "Y / 4";
 	default: return "unknown";
 	}
 }
-- 
2.41.0

