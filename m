Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB87AD6FD7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83C510E804;
	Thu, 12 Jun 2025 12:12:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E08SlHGz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 987ED10E801;
 Thu, 12 Jun 2025 12:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730375; x=1781266375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fFYwOil+uce0E5YKuprTbP3ouCj66lIfOfGBMBzqB3E=;
 b=E08SlHGzmcpo0NmOnEMkD8vFueCjKeljxYGP77+GzSCOB7cbA8F65Q/c
 +lwFljCFJ1QI0OzoWEX1nZWrXZkbL62KnQ20qf9K1bqVrZA+xKL3dS4lA
 okFnDTAmef1WXkqAkqBhCbJBFnUxmwai45Jd/TmMSml9MvADvhtStVnl9
 bJWBnq5NDaBP6uicv+1SpQBMrRpYVgSLxFkbrVE9IT3s36+vczmAahlUL
 SX3m6ULHRqLGcfmz3aT6+JXSZxeMGMICXo8k1IF3ovUWZ+tn1/4Gn5L3o
 2dmONeD3R5zDicNhPDuXuAKyRrJpj75BEg857X1sJRHoISxDdIpO+CDGf A==;
X-CSE-ConnectionGUID: CutiXwYbQ9eqTT3jrrRu/w==
X-CSE-MsgGUID: m7WOah6YSo+q0UzdS61g0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="74438537"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="74438537"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:54 -0700
X-CSE-ConnectionGUID: I8can6rTSGmE/KJOaf+63A==
X-CSE-MsgGUID: Qx9rysvSTHaxEm/pb3fXow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152493828"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/16] drm/i915/bw: make struct intel_bw_state opaque
Date: Thu, 12 Jun 2025 15:12:03 +0300
Message-Id: <948fed44803de582d5e6d1836801fc8cb33b0205.1749730224.git.jani.nikula@intel.com>
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

With all the code touching struct intel_bw_state moved inside
intel_bw.c, we move the struct definition there too, and make the type
opaque. to_intel_bw_state() needs to be turned into a proper
function. All of this nicely reduces includes from intel_bw.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 40 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h | 44 ++-----------------------
 2 files changed, 43 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 65718e6b5333..67c54c144274 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -20,6 +20,41 @@
 #include "intel_pcode.h"
 #include "skl_watermark.h"
 
+struct intel_dbuf_bw {
+	unsigned int max_bw[I915_MAX_DBUF_SLICES];
+	u8 active_planes[I915_MAX_DBUF_SLICES];
+};
+
+struct intel_bw_state {
+	struct intel_global_state base;
+	struct intel_dbuf_bw dbuf_bw[I915_MAX_PIPES];
+
+	/*
+	 * Contains a bit mask, used to determine, whether correspondent
+	 * pipe allows SAGV or not.
+	 */
+	u8 pipe_sagv_reject;
+
+	/* bitmask of active pipes */
+	u8 active_pipes;
+
+	/*
+	 * From MTL onwards, to lock a QGV point, punit expects the peak BW of
+	 * the selected QGV point as the parameter in multiples of 100MB/s
+	 */
+	u16 qgv_point_peakbw;
+
+	/*
+	 * Current QGV points mask, which restricts
+	 * some particular SAGV states, not to confuse
+	 * with pipe_sagv_mask.
+	 */
+	u16 qgv_points_mask;
+
+	unsigned int data_rate[I915_MAX_PIPES];
+	u8 num_active_planes[I915_MAX_PIPES];
+};
+
 /* Parameters for Qclk Geyserville (QGV) */
 struct intel_qgv_point {
 	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
@@ -865,6 +900,11 @@ static unsigned int intel_bw_data_rate(struct intel_display *display,
 	return data_rate;
 }
 
+struct intel_bw_state *to_intel_bw_state(struct intel_global_state *obj_state)
+{
+	return container_of(obj_state, struct intel_bw_state, base);
+}
+
 struct intel_bw_state *
 intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 7728dc86a31a..d51f50c9d302 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -8,52 +8,14 @@
 
 #include <drm/drm_atomic.h>
 
-#include "intel_display_limits.h"
-#include "intel_display_power.h"
-#include "intel_global_state.h"
-
 struct intel_atomic_state;
+struct intel_bw_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
+struct intel_global_state;
 
-struct intel_dbuf_bw {
-	unsigned int max_bw[I915_MAX_DBUF_SLICES];
-	u8 active_planes[I915_MAX_DBUF_SLICES];
-};
-
-struct intel_bw_state {
-	struct intel_global_state base;
-	struct intel_dbuf_bw dbuf_bw[I915_MAX_PIPES];
-
-	/*
-	 * Contains a bit mask, used to determine, whether correspondent
-	 * pipe allows SAGV or not.
-	 */
-	u8 pipe_sagv_reject;
-
-	/* bitmask of active pipes */
-	u8 active_pipes;
-
-	/*
-	 * From MTL onwards, to lock a QGV point, punit expects the peak BW of
-	 * the selected QGV point as the parameter in multiples of 100MB/s
-	 */
-	u16 qgv_point_peakbw;
-
-	/*
-	 * Current QGV points mask, which restricts
-	 * some particular SAGV states, not to confuse
-	 * with pipe_sagv_mask.
-	 */
-	u16 qgv_points_mask;
-
-	unsigned int data_rate[I915_MAX_PIPES];
-	u8 num_active_planes[I915_MAX_PIPES];
-};
-
-#define to_intel_bw_state(global_state) \
-	container_of_const((global_state), struct intel_bw_state, base)
+struct intel_bw_state *to_intel_bw_state(struct intel_global_state *obj_state);
 
 struct intel_bw_state *
 intel_atomic_get_old_bw_state(struct intel_atomic_state *state);
-- 
2.39.5

