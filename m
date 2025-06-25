Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE04FAE7F5C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3E210E6BC;
	Wed, 25 Jun 2025 10:32:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUndgX9e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB9110E6BC;
 Wed, 25 Jun 2025 10:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847566; x=1782383566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bbDHd3IqW4iM/qZQolrTOa/M4XNJCGdQmfX+I0Cnk5k=;
 b=UUndgX9e0E4tEEiTgAeoTXVsw7WnnYuJvGus7rSX62f648AAqdCoOke1
 DXVDjNC5s6tSTOfZhk7ZbR0WKEDaKvOiWMSoRooygYnCPRvTdqtvf/3BW
 qlif8dmLiS94roEGw1tugZ7HhPxNcw3WLBzXEvA7Sht1YDG/X/RwJUGCA
 1xwUkb1rgDrR1mU+mIzYn7bYzxxQv3FAhfbnW5TAgVxYg1gYk6GIzSDZ9
 CDlHJC+4wR7HnlXsytIwfvpu5KAYA3RqYVQe5aCPWEp3NkR1bZZpIEbOY
 aX2v0hbhiOuiofLjRrUPh5xEHTb2A/9HfhRAfwu5YwQe+A9mLvOlLxi58 Q==;
X-CSE-ConnectionGUID: doRN07pJQbi2GfVWKkWrRA==
X-CSE-MsgGUID: QMpD7tePSpavO34kRVO9uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53080408"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53080408"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:45 -0700
X-CSE-ConnectionGUID: B0gW+zQFR3KeL9KNYvjGrQ==
X-CSE-MsgGUID: VHkr703cRx+gBUJT9zxI+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152476417"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 01/16] drm/i915/wm: abstract intel_dbuf_pmdemand_needs_update()
Date: Wed, 25 Jun 2025 13:32:19 +0300
Message-Id: <b493f259d0d3db047151fee18d7e801ad469fa88.1750847509.git.jani.nikula@intel.com>
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

Add intel_dbuf_pmdemand_needs_update() helper to avoid looking at struct
intel_dbuf_state internals outside of skl_watermark.c.

With this, we can also move to_intel_dbuf_state(),
intel_atomic_get_old_dbuf_state(), and intel_atomic_get_new_dbuf_state()
inside skl_watermark.c.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 14 +--------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h  | 10 ++-----
 3 files changed, 33 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 93d5ee36fff1..0f1501c456df 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -294,11 +294,9 @@ intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
 
 static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 {
-	struct intel_display *display = to_intel_display(state);
 	const struct intel_bw_state *new_bw_state, *old_bw_state;
 	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
-	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
 	struct intel_crtc *crtc;
 	int i;
 
@@ -308,19 +306,9 @@ static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 	    old_bw_state->qgv_point_peakbw)
 		return true;
 
-	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
-	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
-	if (new_dbuf_state &&
-	    new_dbuf_state->active_pipes != old_dbuf_state->active_pipes)
+	if (intel_dbuf_pmdemand_needs_update(state))
 		return true;
 
-	if (DISPLAY_VER(display) < 30) {
-		if (new_dbuf_state &&
-		    new_dbuf_state->enabled_slices !=
-		    old_dbuf_state->enabled_slices)
-			return true;
-	}
-
 	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
 	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
 	if (new_cdclk_state &&
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d39fabd09938..9ae9f02b11ca 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -39,6 +39,14 @@
  */
 #define DSB_EXE_TIME 100
 
+#define to_intel_dbuf_state(global_state) \
+	container_of_const((global_state), struct intel_dbuf_state, base)
+
+#define intel_atomic_get_old_dbuf_state(state) \
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
+#define intel_atomic_get_new_dbuf_state(state) \
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
+
 static void skl_sagv_disable(struct intel_display *display);
 
 /* Stores plane specific WM parameters */
@@ -3696,6 +3704,28 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 	gen9_dbuf_slices_update(display, new_slices);
 }
 
+bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
+
+	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
+	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
+
+	if (new_dbuf_state &&
+	    new_dbuf_state->active_pipes != old_dbuf_state->active_pipes)
+		return true;
+
+	if (DISPLAY_VER(display) < 30) {
+		if (new_dbuf_state &&
+		    new_dbuf_state->enabled_slices !=
+		    old_dbuf_state->enabled_slices)
+			return true;
+	}
+
+	return false;
+}
+
 static void skl_mbus_sanitize(struct intel_display *display)
 {
 	struct intel_dbuf_state *dbuf_state =
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 95b0b599d5c3..3b9a0b254cff 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -78,14 +78,6 @@ struct intel_dbuf_state {
 struct intel_dbuf_state *
 intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 
-#define to_intel_dbuf_state(global_state) \
-	container_of_const((global_state), struct intel_dbuf_state, base)
-
-#define intel_atomic_get_old_dbuf_state(state) \
-	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
-#define intel_atomic_get_new_dbuf_state(state) \
-	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
-
 int intel_dbuf_init(struct intel_display *display);
 int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
 					   int ratio);
@@ -98,5 +90,7 @@ void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
 void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
 void intel_program_dpkgc_latency(struct intel_atomic_state *state);
 
+bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
+
 #endif /* __SKL_WATERMARK_H__ */
 
-- 
2.39.5

