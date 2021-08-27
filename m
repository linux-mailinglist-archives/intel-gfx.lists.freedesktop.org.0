Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 372EC3F9B76
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 17:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99676E98F;
	Fri, 27 Aug 2021 15:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697BB6E98F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 15:09:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="281690764"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="281690764"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:09:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="528340104"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:09:58 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 18:09:51 +0300
Message-Id: <20210827150955.3343520-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210827150955.3343520-1-imre.deak@intel.com>
References: <20210827150955.3343520-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Use tile block based dimensions
 for CCS origin x, y check
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

The tile size for all surface types is 4 kbyte (or 2 kbyte on old
platforms), with the exception of the TGL/ADL CCS surface where the tile
size is 64 bytes. To be able to remap CCS FBs the CCS surface tile needs
to be defined as 4 kbyte as well (the granularity of GTT pages in a
remapped view).

The only place using the dimension of the 64 byte CCS area is the initial
check for the main vs. CCS plane origin coordinate match. To prepare for
adding support for remapping CCS FBs let's call the 64 byte CCS area a
tile unit and add a helper to retrieve the dimensions for it.

No functional change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 30 ++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e4b8602ec0cd2..0cf568a9cb1c6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -143,14 +143,14 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
 {
-	if (is_gen12_ccs_plane(fb, color_plane))
-		return 1;
-
 	return intel_tile_size(to_i915(fb->dev)) /
 		intel_tile_width_bytes(fb, color_plane);
 }
 
-/* Return the tile dimensions in pixel units */
+/*
+ * Return the tile dimensions in pixel units, based on the (2 or 4 kbyte) GTT
+ * page tile size.
+ */
 static void intel_tile_dims(const struct drm_framebuffer *fb, int color_plane,
 			    unsigned int *tile_width,
 			    unsigned int *tile_height)
@@ -162,6 +162,21 @@ static void intel_tile_dims(const struct drm_framebuffer *fb, int color_plane,
 	*tile_height = intel_tile_height(fb, color_plane);
 }
 
+/*
+ * Return the tile dimensions in pixel units, based on the tile block size.
+ * The block covers the full GTT page sized tile on all tiled surfaces and
+ * it's a 64 byte portion of the tile on TGL+ CCS surfaces.
+ */
+static void intel_tile_block_dims(const struct drm_framebuffer *fb, int color_plane,
+				  unsigned int *tile_width,
+				  unsigned int *tile_height)
+{
+	intel_tile_dims(fb, color_plane, tile_width, tile_height);
+
+	if (is_gen12_ccs_plane(fb, color_plane))
+		*tile_height = 1;
+}
+
 unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane)
 {
 	unsigned int tile_width, tile_height;
@@ -567,7 +582,12 @@ static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int ccs_plane
 	if (!is_ccs_plane(fb, ccs_plane) || is_gen12_ccs_cc_plane(fb, ccs_plane))
 		return 0;
 
-	intel_tile_dims(fb, ccs_plane, &tile_width, &tile_height);
+	/*
+	 * While all the tile dimensions are based on a 2k or 4k GTT page size
+	 * here the main and CCS coordinates must match only within a (64 byte
+	 * on TGL+) block inside the tile.
+	 */
+	intel_tile_block_dims(fb, ccs_plane, &tile_width, &tile_height);
 	intel_fb_plane_get_subsampling(&hsub, &vsub, fb, ccs_plane);
 
 	tile_width *= hsub;
-- 
2.27.0

