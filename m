Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E29F3F9B7A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 17:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E590D6E993;
	Fri, 27 Aug 2021 15:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5295F6E992
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 15:10:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="281690776"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="281690776"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:10:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="528340134"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:10:01 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 18:09:54 +0300
Message-Id: <20210827150955.3343520-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210827150955.3343520-1-imre.deak@intel.com>
References: <20210827150955.3343520-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Follow a new->old platform check
 order in intel_fb_stride_alignment
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

Follow the usual new->old order in intel_fb_stride_alignment() platform
check ladder.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 560e386905318..83262cb347196 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1157,6 +1157,12 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 
 	tile_width = intel_tile_width_bytes(fb, color_plane);
 	if (is_ccs_modifier(fb->modifier)) {
+		/*
+		 * On TGL the surface stride must be 4 tile aligned, mapped by
+		 * one 64 byte cacheline on the CCS AUX surface.
+		 */
+		if (DISPLAY_VER(dev_priv) >= 12)
+			tile_width *= 4;
 		/*
 		 * Display WA #0531: skl,bxt,kbl,glk
 		 *
@@ -1166,14 +1172,8 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 		 * require the entire fb to accommodate that to avoid
 		 * potential runtime errors at plane configuration time.
 		 */
-		if ((DISPLAY_VER(dev_priv) == 9 || IS_GEMINILAKE(dev_priv)) &&
-		    color_plane == 0 && fb->width > 3840)
-			tile_width *= 4;
-		/*
-		 * The main surface pitch must be padded to a multiple of four
-		 * tile widths.
-		 */
-		else if (DISPLAY_VER(dev_priv) >= 12)
+		else if ((DISPLAY_VER(dev_priv) == 9 || IS_GEMINILAKE(dev_priv)) &&
+			 color_plane == 0 && fb->width > 3840)
 			tile_width *= 4;
 	}
 	return tile_width;
-- 
2.27.0

