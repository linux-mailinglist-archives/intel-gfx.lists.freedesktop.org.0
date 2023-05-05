Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B1A6F84FD
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 16:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA8410E623;
	Fri,  5 May 2023 14:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5280410E622
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 14:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683297615; x=1714833615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eOji54EtgI3Se9yyxaF2wP4cgFx0ObiXypQP4Z+4DxA=;
 b=WagMwlnIvZxFuChohegC0qEFP0dqRgK12Z7ZBE4xNd8YLYI8bXy+yasH
 UAdp/kvvHi8BfyHxyZ0kyH82KkQBfyctdFL6NeQLXIYN3scXJkxYASIIa
 8V0EaQW2MFfWTar+0BzzsE26eekeYDCM7nwC5Xw9JhnfozqhTcnt14VVt
 ZbDDxkBbuSBVuZaijPHMV6iqwXCgYGHY5pmHK5Ho2elDdJsQuM8pGcz9m
 QlHZr8owfLEDRUE1lxFEbnH3y+GUzKM2YVYo8X/n18aUq9OaxlAWPDXKZ
 a8qtm24SePCqgfUxI1hysTePV9rnGnR4hZqpRllM0n4p/ZdICAoxtlZ6P Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="348042645"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="348042645"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:40:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="697613368"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="697613368"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:40:13 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 16:40:05 +0200
Message-Id: <20230505144005.23480-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230505144005.23480-1-nirmoy.das@intel.com>
References: <20230505144005.23480-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add MTL for remapping CCS FBs
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
Cc: andi.shyti@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clint Taylor <clinton.a.taylor@intel.com>

Add support for remapping CCS FBs on MTL to remove the restriction
of the power-of-two sized stride and the 2MB surface offset alignment
for these FBs.

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e5f637897b5e..c004f08fcfe1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1190,7 +1190,8 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
 	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 
-	return IS_ALDERLAKE_P(i915) && intel_fb_uses_dpt(&fb->base);
+	return (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
+		intel_fb_uses_dpt(&fb->base);
 }
 
 static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
@@ -1326,9 +1327,10 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
 			  unsigned int tile_width,
 			  unsigned int src_stride_tiles, unsigned int dst_stride_tiles)
 {
+	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 	unsigned int stride_tiles;
 
-	if (IS_ALDERLAKE_P(to_i915(fb->base.dev)))
+	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 		stride_tiles = src_stride_tiles;
 	else
 		stride_tiles = dst_stride_tiles;
@@ -1522,7 +1524,8 @@ static void intel_fb_view_init(struct drm_i915_private *i915, struct intel_fb_vi
 	memset(view, 0, sizeof(*view));
 	view->gtt.type = view_type;
 
-	if (view_type == I915_GTT_VIEW_REMAPPED && IS_ALDERLAKE_P(i915))
+	if (view_type == I915_GTT_VIEW_REMAPPED &&
+	    (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14))
 		view->gtt.remapped.plane_alignment = SZ_2M / PAGE_SIZE;
 }
 
-- 
2.39.0

