Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 865FDAD6FD4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23DFE10E7FC;
	Thu, 12 Jun 2025 12:12:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/QmntTq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5CC710E7F6;
 Thu, 12 Jun 2025 12:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730361; x=1781266361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3t6r97r5AWDm/ctKGNqZNHusnE5N6v21sGfazaBJNDg=;
 b=W/QmntTqL7rWuBYMwi/a7Eef6pfG/aXddskgTzO0dipYnfstO+2J9vVV
 QjfEYdrc2rHnH3PZtRwSfc8joLATVqAMwYVOwqVkyY4wFLvHtoKeN/9yQ
 SnEcJ/Gsw4BwRXAlqyY+ZW4hYB7zSH4AGfJBVL/8+/DqXym7aPDzRkQ/i
 BgX/pT+C/SsrK9qdz9GgMJvpaT3x926N+n3m8uNJWvBPQbypR4Ps3VBXE
 en12Tm5kx857H1srqIsRcx8e0oKe1qBXWVLI9MoaIUXDOSawx0UZm06an
 pqJGa6LWHGHJxUuV1KaaxsYjVtTy7cxX//5ktn5M2RDhAcTp9hfBZayvh Q==;
X-CSE-ConnectionGUID: ZOSBdxbTT1+KF5/3p2xMyQ==
X-CSE-MsgGUID: QDBQNey/RSGkwO3cuzB3Tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="63314847"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="63314847"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:40 -0700
X-CSE-ConnectionGUID: DGrchDVBRTazL+8HP90ymw==
X-CSE-MsgGUID: ebpUWnG2T1iCZr9HU//32g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="178476940"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/16] drm/i915/bw: relocate intel_can_enable_sagv() and
 rename to intel_bw_can_enable_sagv()
Date: Thu, 12 Jun 2025 15:12:00 +0300
Message-Id: <9e1ce82b98c203bcd08cb3228f9f49dda10b2ba5.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

Prefer only looking at struct intel_bw_state internals inside
intel_bw.c. To that effect, move intel_can_enable_sagv() there, and
rename to intel_bw_can_enable_sagv() to have consistent naming.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 22 ++++++++++++++------
 drivers/gpu/drm/i915/display/intel_bw.h      |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 16 +++-----------
 drivers/gpu/drm/i915/display/skl_watermark.h |  3 ---
 4 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index c077ab05eb61..2e801ef313c8 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -994,7 +994,7 @@ static int mtl_find_qgv_points(struct intel_display *display,
 	 * for qgv peak bw in PM Demand request. So assign UINT_MAX if SAGV is
 	 * not enabled. PM Demand code will clamp the value for the register
 	 */
-	if (!intel_can_enable_sagv(display, new_bw_state)) {
+	if (!intel_bw_can_enable_sagv(display, new_bw_state)) {
 		new_bw_state->qgv_point_peakbw = U16_MAX;
 		drm_dbg_kms(display->drm, "No SAGV, use UINT_MAX as peak bw.");
 		return 0;
@@ -1107,7 +1107,7 @@ static int icl_find_qgv_points(struct intel_display *display,
 	 * we can't enable SAGV due to the increased memory latency it may
 	 * cause.
 	 */
-	if (!intel_can_enable_sagv(display, new_bw_state)) {
+	if (!intel_bw_can_enable_sagv(display, new_bw_state)) {
 		qgv_points = icl_max_bw_qgv_point_mask(display, num_active_planes);
 		drm_dbg_kms(display->drm, "No SAGV, using single QGV point mask 0x%x\n",
 			    qgv_points);
@@ -1474,8 +1474,8 @@ static int intel_bw_check_sagv_mask(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return 0;
 
-	if (intel_can_enable_sagv(display, new_bw_state) !=
-	    intel_can_enable_sagv(display, old_bw_state)) {
+	if (intel_bw_can_enable_sagv(display, new_bw_state) !=
+	    intel_bw_can_enable_sagv(display, old_bw_state)) {
 		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
 		if (ret)
 			return ret;
@@ -1521,8 +1521,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state, bool any_ms)
 	new_bw_state = intel_atomic_get_new_bw_state(state);
 
 	if (new_bw_state &&
-	    intel_can_enable_sagv(display, old_bw_state) !=
-	    intel_can_enable_sagv(display, new_bw_state))
+	    intel_bw_can_enable_sagv(display, old_bw_state) !=
+	    intel_bw_can_enable_sagv(display, new_bw_state))
 		changed = true;
 
 	/*
@@ -1658,3 +1658,13 @@ bool intel_bw_pmdemand_needs_update(struct intel_atomic_state *state)
 
 	return false;
 }
+
+bool intel_bw_can_enable_sagv(struct intel_display *display,
+			      const struct intel_bw_state *bw_state)
+{
+	if (DISPLAY_VER(display) < 11 &&
+	    bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
+		return false;
+
+	return bw_state->pipe_sagv_reject == 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 0acc6f19c981..ee6e4a7ac89d 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -77,5 +77,7 @@ void intel_bw_update_hw_state(struct intel_display *display);
 void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
 
 bool intel_bw_pmdemand_needs_update(struct intel_atomic_state *state);
+bool intel_bw_can_enable_sagv(struct intel_display *display,
+			      const struct intel_bw_state *bw_state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 34726895075b..ec2838d641fb 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -252,7 +252,7 @@ static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return;
 
-	if (!intel_can_enable_sagv(display, new_bw_state))
+	if (!intel_bw_can_enable_sagv(display, new_bw_state))
 		skl_sagv_disable(display);
 }
 
@@ -265,7 +265,7 @@ static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return;
 
-	if (intel_can_enable_sagv(display, new_bw_state))
+	if (intel_bw_can_enable_sagv(display, new_bw_state))
 		skl_sagv_enable(display);
 }
 
@@ -466,16 +466,6 @@ bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 		return skl_crtc_can_enable_sagv(crtc_state);
 }
 
-bool intel_can_enable_sagv(struct intel_display *display,
-			   const struct intel_bw_state *bw_state)
-{
-	if (DISPLAY_VER(display) < 11 &&
-	    bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
-		return false;
-
-	return bw_state->pipe_sagv_reject == 0;
-}
-
 static u16 skl_ddb_entry_init(struct skl_ddb_entry *entry,
 			      u16 start, u16 end)
 {
@@ -3031,7 +3021,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 		 * drm_atomic_check_only() gets upset if we pull more crtcs
 		 * into the state, so we have to calculate this based on the
 		 * individual intel_crtc_can_enable_sagv() rather than
-		 * the overall intel_can_enable_sagv(). Otherwise the
+		 * the overall intel_bw_can_enable_sagv(). Otherwise the
 		 * crtcs not included in the commit would not switch to the
 		 * SAGV watermarks when we are about to enable SAGV, and that
 		 * would lead to underruns. This does mean extra power draw
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 87d052b640b3..62790816f030 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -10,7 +10,6 @@
 
 enum plane_id;
 struct intel_atomic_state;
-struct intel_bw_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dbuf_state;
@@ -26,8 +25,6 @@ u8 intel_enabled_dbuf_slices_mask(struct intel_display *display);
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
 bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state);
-bool intel_can_enable_sagv(struct intel_display *display,
-			   const struct intel_bw_state *bw_state);
 bool intel_has_sagv(struct intel_display *display);
 
 u32 skl_ddb_dbuf_slice_mask(struct intel_display *display,
-- 
2.39.5

