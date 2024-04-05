Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AA4899BEA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7529113B41;
	Fri,  5 Apr 2024 11:36:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/af/gmR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2CA113B41
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712316961; x=1743852961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PhHEIUzJXeEYy3ItJsnUT7Kvq9hDgZSluiGsrXKgD3s=;
 b=H/af/gmR9TFaCIZtJ9KxWndfRJb4Na/iSfbQsj1SevGD/tTwPjNUkJuV
 nqkDQTx8/vzrROnv2v/yFNnV8mkIrHaZjv4Ud4AkRgQA2Oz51QSB6ZvSo
 PDt/JeXMLxaZspjiokNToITH/YQaVW3KE45gYBJNVlYpEyYL7eNOytx+e
 wc/8mYue702oM7g3jiQSjFTmqFS1Pg7vyw2fGrkXmVG5SOOG8YIUBsUWq
 cmAK2C8omAXlLZjsJj+LlUSPvCGAlGwrydhSnDfyZBnl+fEAY9gN3/hOd
 bR27EnIe6nAZQSWSaX1Y2FvOnBjmxFd7YfZCaKK4xHRgIETJN+enEQUn+ A==;
X-CSE-ConnectionGUID: bOSPCZdXSwCkGR5AYG7zow==
X-CSE-MsgGUID: L94Hy7c6RsC9fq2Xuvup+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7540251"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7540251"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:01 -0700
X-CSE-ConnectionGUID: QauGZiDdQ0qtNlVPleRpQw==
X-CSE-MsgGUID: 08hkcQZxQVaWw6TDGcSkMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19066064"
Received: from pfilseth-mobl.amr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.58.154])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:35:59 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v10 4/6] drm/i915/display: Disable SAGV on bw init,
 to force QGV point recalculation
Date: Fri,  5 Apr 2024 14:35:31 +0300
Message-Id: <20240405113533.338553-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113533.338553-1-vinod.govindapillai@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Problem is that on some platforms, we do get QGV point mask in wrong
state on boot. However driver assumes it is set to 0
(i.e all points allowed), however in reality we might get them all
restricted, causing issues.
Lets disable SAGV initially to force proper QGV point state.
If more QGV points are available, driver will recalculate and update
those then after next commit.

v2: - Added trace to see which QGV/PSF GV point is used when SAGV is
      disabled.
v3: - Move force disable function to intel_bw_init in order to initialize
      bw state as well, so that hw/sw are immediately in sync after init.
v4: - Don't try sending PCode request, seems like it is not possible at
      intel_bw_init, however assigning bw->state to be restricted as if
      SAGV is off, still forces driveer to send PCode request anyway on
      next modeset, so the solution still works.
      However we still need to address the case, when no display is
      connected, which anyway requires much more changes.

v5: - Put PCode request back and apply temporary hack to make the
      request succeed(in case if there 2 PSF GV points with same BW, PCode
      accepts only if both points are restricted/unrestricted same time)
    - Fix argument sequence for adl_qgv_bw(Ville Syrjälä)

v6: - Fix wrong platform checks, not to break everything else.

v7: - Split the handling of quplicate QGV/PSF GV points (Vinod)
      Restrict force disable to display version below 14 (Vinod)

v8: - Simplify icl_force_disable_sagv (Vinod)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 50 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/skl_watermark.c |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
 3 files changed, 49 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4fed84869e09..5f4f93524bef 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -162,7 +162,9 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				1);
 
 	if (ret < 0) {
-		drm_err(&dev_priv->drm, "Failed to disable qgv points (%d) points: 0x%x\n", ret, points_mask);
+		drm_err(&dev_priv->drm,
+			"Failed to disable qgv points (0x%x) points: 0x%x\n",
+			ret, points_mask);
 		return ret;
 	}
 
@@ -859,6 +861,41 @@ static u16 icl_prepare_qgv_points_mask(struct drm_i915_private *i915,
 		 ADLS_PCODE_REQ_PSF_PT(psf_points)) & icl_qgv_points_mask(i915);
 }
 
+static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
+{
+	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int max_bw_point_mask = 0;
+	unsigned int max_bw = 0;
+	int i;
+
+	for (i = 0; i < num_psf_gv_points; i++) {
+		unsigned int max_data_rate = adl_psf_bw(i915, i);
+
+		if (max_data_rate > max_bw) {
+			max_bw_point_mask = BIT(i);
+			max_bw = max_data_rate;
+		}
+	}
+
+	return max_bw_point_mask;
+}
+
+static void icl_force_disable_sagv(struct drm_i915_private *i915,
+				   struct intel_bw_state *bw_state)
+{
+	unsigned int qgv_points = icl_max_bw_qgv_point_mask(i915, 0);
+	unsigned int psf_points = icl_max_bw_psf_gv_point_mask(i915);
+
+	bw_state->qgv_points_mask = icl_prepare_qgv_points_mask(i915,
+								qgv_points,
+								psf_points);
+
+	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: mask 0x%x\n",
+		    bw_state->qgv_points_mask);
+
+	icl_pcode_restrict_qgv_points(i915, bw_state->qgv_points_mask);
+}
+
 static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -1341,7 +1378,7 @@ static const struct intel_global_state_funcs intel_bw_funcs = {
 	.atomic_destroy_state = intel_bw_destroy_state,
 };
 
-int intel_bw_init(struct drm_i915_private *dev_priv)
+int intel_bw_init(struct drm_i915_private *i915)
 {
 	struct intel_bw_state *state;
 
@@ -1349,8 +1386,15 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
 	if (!state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.bw.obj,
+	intel_atomic_global_obj_init(i915, &i915->display.bw.obj,
 				     &state->base, &intel_bw_funcs);
 
+	/*
+	 * Limit this only if we have SAGV. And for Display version 14 onwards
+	 * sagv is handled though pmdemand requests
+	 */
+	if (intel_has_sagv(i915) && IS_DISPLAY_VER(i915, 11, 13))
+		icl_force_disable_sagv(i915, state);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 50ec51065118..ddedb1197ca6 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -70,7 +70,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
 	return DISPLAY_VER(i915) == 9;
 }
 
-static bool
+bool
 intel_has_sagv(struct drm_i915_private *i915)
 {
 	return HAS_SAGV(i915) &&
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index ef1a008466be..91f92c0e706e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -25,6 +25,7 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
 bool intel_can_enable_sagv(struct drm_i915_private *i915,
 			   const struct intel_bw_state *bw_state);
+bool intel_has_sagv(struct drm_i915_private *i915);
 
 u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
 			    const struct skl_ddb_entry *entry);
-- 
2.34.1

