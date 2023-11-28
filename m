Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF267FB469
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 09:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88DC10E156;
	Tue, 28 Nov 2023 08:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8248E10E156
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 08:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701160680; x=1732696680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TKE+dXvqVmY79Mf5GY4NTEXCADBoMtdJSgMoqQmRvhE=;
 b=jx1KJY4ZWVLXSgOJy/JBP7AQsudDtUgjmFWMxAGRuocKsJGKnQdD/Xwh
 BW71n4oKusNXmD3MQM8XR92lg8HTNgppugLJ56fA49HHHFeniAq4GPdg0
 /qV1vmbDsi25Ltgr/LJrph432GgEUBwD484YFj8ynWNQIiw6RZtgE/tVP
 qFHhvClLkb76pEF1W3PwsEbHdmCBIV7xi8WBSNi04/I52XDg1v/F9XVlu
 VsAO462Xv3RNDLkQ3gpoUuJ8cj1F9kvIKlAfgQopjw2ZHKJqSrI35x1AD
 mjmP5DEBcmyiJHK/za8dpzZKlbU1eQUf6YxOQFe4nLzaGcouF8f+hl4Io w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459381750"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459381750"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 00:38:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="834577660"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="834577660"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 28 Nov 2023 00:37:58 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 10:37:53 +0200
Message-Id: <20231128083754.20096-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
References: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Extract code required to
 calculate max qgv/psf gv point
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

We need that in order to force disable SAGV in next patch.
Also it is beneficial to separate that code, as in majority cases,
when SAGV is enabled, we don't even need those calculations.
Also we probably need to determine max PSF GV point as well, however
currently we don't do that when we disable SAGV, which might be
actually causing some issues in that case.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 82 ++++++++++++++++++++-----
 1 file changed, 65 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 583cd2ebdf89..efd408e96e8a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -805,6 +805,64 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
+					 int num_active_planes)
+{
+	unsigned int max_bw_point = 0;
+	unsigned int max_bw = 0;
+	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	int i;
+
+	for (i = 0; i < num_qgv_points; i++) {
+		unsigned int idx;
+		unsigned int max_data_rate;
+
+		if (DISPLAY_VER(i915) > 11)
+			idx = tgl_max_bw_index(i915, num_active_planes, i);
+		else
+			idx = icl_max_bw_index(i915, num_active_planes, i);
+
+		if (idx >= ARRAY_SIZE(i915->display.bw.max))
+			continue;
+
+		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
+
+		/*
+		 * We need to know which qgv point gives us
+		 * maximum bandwidth in order to disable SAGV
+		 * if we find that we exceed SAGV block time
+		 * with watermarks. By that moment we already
+		 * have those, as it is calculated earlier in
+		 * intel_atomic_check,
+		 */
+		if (max_data_rate > max_bw) {
+			max_bw_point = i;
+			max_bw = max_data_rate;
+		}
+	}
+
+	return max_bw_point;
+}
+
+unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
+{
+	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int max_bw = 0;
+	unsigned int max_bw_point = 0;
+	int i;
+
+	for (i = 0; i < num_psf_gv_points; i++) {
+		unsigned int max_data_rate = adl_psf_bw(i915, i);
+
+		if (max_data_rate > max_bw) {
+			max_bw_point = i;
+			max_bw = max_data_rate;
+		}
+	}
+
+	return max_bw_point;
+}
+
 static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -882,8 +940,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 			       const struct intel_bw_state *old_bw_state,
 			       struct intel_bw_state *new_bw_state)
 {
-	unsigned int max_bw_point = 0;
-	unsigned int max_bw = 0;
 	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
 	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
 	u16 psf_points = 0;
@@ -909,18 +965,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 
 		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
 
-		/*
-		 * We need to know which qgv point gives us
-		 * maximum bandwidth in order to disable SAGV
-		 * if we find that we exceed SAGV block time
-		 * with watermarks. By that moment we already
-		 * have those, as it is calculated earlier in
-		 * intel_atomic_check,
-		 */
-		if (max_data_rate > max_bw) {
-			max_bw_point = i;
-			max_bw = max_data_rate;
-		}
 		if (max_data_rate >= data_rate)
 			qgv_points |= BIT(i);
 
@@ -964,9 +1008,13 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	 * cause.
 	 */
 	if (!intel_can_enable_sagv(i915, new_bw_state)) {
-		qgv_points = BIT(max_bw_point);
-		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d\n",
-			    max_bw_point);
+		unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, num_active_planes);
+		unsigned int max_bw_psf_gv_point = icl_max_bw_psf_gv_point(i915);
+
+		qgv_points = BIT(max_bw_qgv_point);
+		psf_points = BIT(max_bw_psf_gv_point);
+		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d PSF GV point %d\n",
+			    max_bw_qgv_point, max_bw_psf_gv_point);
 	}
 
 	/*
-- 
2.37.3

