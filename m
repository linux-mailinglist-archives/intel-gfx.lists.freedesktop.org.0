Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F9B1A3776
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 17:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1693B8800A;
	Thu,  9 Apr 2020 15:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90A286EBF8
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 15:51:16 +0000 (UTC)
IronPort-SDR: fFWrGJMdalDzBYYXneyS3oN3MC4qFTwmjklx4s+jpxdA57O10h6Ej3UATG2P7wq4WQjydQUYXV
 g/yIbuZZEOqQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 08:51:16 -0700
IronPort-SDR: 6Q+Hl9olashpdmcqhGzqy5lq/GWb+Y7gK/nuqiCXfxzubvAndVi7SHHz5zgbejVsFn5wmcJ3J5
 1blrL1y3/y9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="257857117"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga008.jf.intel.com with ESMTP; 09 Apr 2020 08:51:14 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Apr 2020 18:47:23 +0300
Message-Id: <20200409154730.18568-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
References: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v22 06/13] drm/i915: Add pre/post plane updates
 for SAGV
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lets have a unified way to handle SAGV changes,
espoecially considering the upcoming Gen12 changes.

Current "standard" way of doing this in commit_tail
is pre/post plane updates, when everything which
has to be forbidden and not supported in new config
has to be restricted before update and relaxed after
plane update.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++++---------
 drivers/gpu/drm/i915/intel_pm.c              | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h              |  2 ++
 3 files changed, 26 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70ec301fe6e3..ac7f600c84ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15349,12 +15349,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		intel_set_cdclk_pre_plane_update(state);
 
-		/*
-		 * SKL workaround: bspec recommends we disable the SAGV when we
-		 * have more then one pipe enabled
-		 */
-		if (!intel_can_enable_sagv(state))
-			intel_disable_sagv(dev_priv);
+		intel_sagv_pre_plane_update(state);
 
 		intel_modeset_verify_disabled(dev_priv, state);
 	}
@@ -15451,11 +15446,11 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_check_cpu_fifo_underruns(dev_priv);
 	intel_check_pch_fifo_underruns(dev_priv);
 
-	if (state->modeset)
+	if (state->modeset) {
 		intel_verify_planes(state);
 
-	if (state->modeset && intel_can_enable_sagv(state))
-		intel_enable_sagv(dev_priv);
+		intel_sagv_post_plane_update(state);
+	}
 
 	drm_atomic_helper_commit_hw_done(&state->base);
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 41af69ad3edc..d1df288396d8 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3757,6 +3757,26 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
+void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+
+	if (!intel_can_enable_sagv(state)) {
+		intel_disable_sagv(dev_priv);
+		return;
+	}
+}
+
+void intel_sagv_post_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+
+	if (intel_can_enable_sagv(state)) {
+		intel_enable_sagv(dev_priv);
+		return;
+	}
+}
+
 static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index d60a85421c5a..9a6036ab0f90 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -44,6 +44,8 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
 bool intel_can_enable_sagv(struct intel_atomic_state *state);
 int intel_enable_sagv(struct drm_i915_private *dev_priv);
 int intel_disable_sagv(struct drm_i915_private *dev_priv);
+void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
+void intel_sagv_post_plane_update(struct intel_atomic_state *state);
 bool skl_wm_level_equals(const struct skl_wm_level *l1,
 			 const struct skl_wm_level *l2);
 bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
