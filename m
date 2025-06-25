Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A588DAE7F66
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1FB10E6BF;
	Wed, 25 Jun 2025 10:33:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0ycgfMD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F120610E6BF;
 Wed, 25 Jun 2025 10:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847600; x=1782383600;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zn/Kmibb5dREEPzV12aSI+Z8yOcJKZdacolJFSLdRic=;
 b=C0ycgfMD+8tu7hhBVi4HtcdCvxFRup+zxfVsui1Z5FwglCNaXsoM+yr1
 MjLOebrgFvfzp5kNUU9l0r8Rc7CIzd5Xtr1fiB6eLZoHlgWRpb4TxTh9+
 48Uf86Y1SI4Yn+QxiVMUe5Pr3zEcOrix4Vy23UOoe/Su+wLzFTK7xC3xs
 m8xWk7yg8neEBHDPf8v/3WXxfWpRaN4rlkUfvvlDW6BhNcQltEqXx+lsk
 eDdBVNhl/PT86nyJ9W50FS8Nv0C2WbbqQ4y4R7QELqNx36ioFEqh5BBsf
 7jvcJowc2h2SWTKFikAHkH66Zcdm1oaSSMKVZlqyQm9uYxyaJhpU7n0px g==;
X-CSE-ConnectionGUID: EArDULo1SCealHnK4OIgng==
X-CSE-MsgGUID: 2Lx0RpJxSQisxjjcCJnWcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="52830298"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="52830298"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:20 -0700
X-CSE-ConnectionGUID: J+lunCZITHCQVF7oFy8GwA==
X-CSE-MsgGUID: IQnyYGE5QaeGFQ+FLwkg3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151798944"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 08/16] drm/i915/bw: make struct intel_bw_state opaque
Date: Wed, 25 Jun 2025 13:32:26 +0300
Message-Id: <743ba67e4e3c5dac4f5e58ab4d2357edea601d09.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
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

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 40 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h | 44 ++-----------------------
 2 files changed, 43 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 1f86f3cb9cae..5942a3bae32c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -21,6 +21,41 @@
 #include "intel_uncore.h"
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
@@ -872,6 +907,11 @@ static unsigned int intel_bw_data_rate(struct intel_display *display,
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

