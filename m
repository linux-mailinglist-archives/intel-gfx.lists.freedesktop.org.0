Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44C78C27A4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8A810EDE0;
	Fri, 10 May 2024 15:24:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hh1rqgtI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3507A10EDC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354659; x=1746890659;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MaxFjOYdafdbEKd5dLzQWvj55mkaqr4iieTYELTnZzM=;
 b=Hh1rqgtIfieWp/cCC4cq42hy2kZlmvz10Mbrerircx6F/BaMYR0cHeI8
 M6GtV/lHqcMLduD7BGBKBuspISvBJUS+CHp/Lys95+3/9DZvMq68mJtTT
 QYT1edqKRU/oSmFW9fBcHQzB41EkPC+8NScAlzuRIhowMzduY4kchigxx
 8XOsLSBMLWURi+irtdoImEHtQRG7/GAFJzaiiSNhSaXZwicU3qq1wN2qh
 QLojGS2oVllo+n2SxhX1ORLigyikP0DKImcVdbzoR6WiINjrFBm1XMBkn
 BqGeLt4ylPkY9om0VsfSGLoDLuWyMQLNL19hkoOOSodRlY0vnvYDC9UrJ w==;
X-CSE-ConnectionGUID: MKrt1w/nSOiiCsSBCMuYUw==
X-CSE-MsgGUID: NGS7j/9/S7yrNY4H8abSGQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468875"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468875"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:24:19 -0700
X-CSE-ConnectionGUID: rxVKyu+xRNGhgtTvwiyx8w==
X-CSE-MsgGUID: xKZq8+g+Q72stQnMBpJAxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29595065"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:24:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:24:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/16] drm/i915: Nuke skl_write_wm_level() and
 skl_ddb_entry_write()
Date: Fri, 10 May 2024 18:23:28 +0300
Message-ID: <20240510152329.24098-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Get rid of skl_ddb_entry_write() and skl_write_wm_level() and
just call intel_de_write_fw() directly.

This is prep work towards DSB based plane updates where these
wrappers are more of a hinderance.

Done with cocci mostly:
@@
expression D, R, L;
@@
- skl_write_wm_level(D, R, L)
+ intel_de_write_fw(D, R, skl_plane_wm_reg_val(L))

@@
expression D, R, B;
@@
- skl_ddb_entry_write(D, R, B)
+ intel_de_write_fw(D, R, skl_plane_ddb_reg_val(B))

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 57 ++++++++------------
 1 file changed, 22 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8a0a26ab8e6a..1daceb8ef9de 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2374,13 +2374,6 @@ static u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
 		PLANE_BUF_START(entry->start);
 }
 
-static void skl_ddb_entry_write(struct drm_i915_private *i915,
-				i915_reg_t reg,
-				const struct skl_ddb_entry *entry)
-{
-	intel_de_write_fw(i915, reg, skl_plane_ddb_reg_val(entry));
-}
-
 static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
 {
 	u32 val = 0;
@@ -2395,13 +2388,6 @@ static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
 	return val;
 }
 
-static void skl_write_wm_level(struct drm_i915_private *i915,
-			       i915_reg_t reg,
-			       const struct skl_wm_level *level)
-{
-	intel_de_write_fw(i915, reg, skl_plane_wm_reg_val(level));
-}
-
 void skl_write_plane_wm(struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state)
 {
@@ -2416,27 +2402,27 @@ void skl_write_plane_wm(struct intel_plane *plane,
 	int level;
 
 	for (level = 0; level < i915->display.wm.num_levels; level++)
-		skl_write_wm_level(i915, PLANE_WM(pipe, plane_id, level),
-				   skl_plane_wm_level(pipe_wm, plane_id, level));
+		intel_de_write_fw(i915, PLANE_WM(pipe, plane_id, level),
+				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
 
-	skl_write_wm_level(i915, PLANE_WM_TRANS(pipe, plane_id),
-			   skl_plane_trans_wm(pipe_wm, plane_id));
+	intel_de_write_fw(i915, PLANE_WM_TRANS(pipe, plane_id),
+			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
 
 	if (HAS_HW_SAGV_WM(i915)) {
 		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
 
-		skl_write_wm_level(i915, PLANE_WM_SAGV(pipe, plane_id),
-				   &wm->sagv.wm0);
-		skl_write_wm_level(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
-				   &wm->sagv.trans_wm);
+		intel_de_write_fw(i915, PLANE_WM_SAGV(pipe, plane_id),
+				  skl_plane_wm_reg_val(&wm->sagv.wm0));
+		intel_de_write_fw(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
+				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
 	}
 
-	skl_ddb_entry_write(i915,
-			    PLANE_BUF_CFG(pipe, plane_id), ddb);
+	intel_de_write_fw(i915, PLANE_BUF_CFG(pipe, plane_id),
+			  skl_plane_ddb_reg_val(ddb));
 
 	if (DISPLAY_VER(i915) < 11)
-		skl_ddb_entry_write(i915,
-				    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
+		intel_de_write_fw(i915, PLANE_NV12_BUF_CFG(pipe, plane_id),
+				  skl_plane_ddb_reg_val(ddb_y));
 }
 
 void skl_write_cursor_wm(struct intel_plane *plane,
@@ -2451,22 +2437,23 @@ void skl_write_cursor_wm(struct intel_plane *plane,
 	int level;
 
 	for (level = 0; level < i915->display.wm.num_levels; level++)
-		skl_write_wm_level(i915, CUR_WM(pipe, level),
-				   skl_plane_wm_level(pipe_wm, plane_id, level));
+		intel_de_write_fw(i915, CUR_WM(pipe, level),
+				  skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
 
-	skl_write_wm_level(i915, CUR_WM_TRANS(pipe),
-			   skl_plane_trans_wm(pipe_wm, plane_id));
+	intel_de_write_fw(i915, CUR_WM_TRANS(pipe),
+			  skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
 
 	if (HAS_HW_SAGV_WM(i915)) {
 		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
 
-		skl_write_wm_level(i915, CUR_WM_SAGV(pipe),
-				   &wm->sagv.wm0);
-		skl_write_wm_level(i915, CUR_WM_SAGV_TRANS(pipe),
-				   &wm->sagv.trans_wm);
+		intel_de_write_fw(i915, CUR_WM_SAGV(pipe),
+				  skl_plane_wm_reg_val(&wm->sagv.wm0));
+		intel_de_write_fw(i915, CUR_WM_SAGV_TRANS(pipe),
+				  skl_plane_wm_reg_val(&wm->sagv.trans_wm));
 	}
 
-	skl_ddb_entry_write(i915, CUR_BUF_CFG(pipe), ddb);
+	intel_de_write_fw(i915, CUR_BUF_CFG(pipe),
+			  skl_plane_ddb_reg_val(ddb));
 }
 
 static bool skl_wm_level_equals(const struct skl_wm_level *l1,
-- 
2.43.2

