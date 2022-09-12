Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 637735B598B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C67F10E3CF;
	Mon, 12 Sep 2022 11:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FD310E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662983126; x=1694519126;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQXK5AWu/ap6CKmyprkccl2f5GCFfsIlCn8SytwAkgc=;
 b=Po7AK2c8Qyzfe0KNRLyt9CiSB7a+FRJCd+v4J51xsj21kse9yFygYknP
 C77s2B+jEuIIiXhBw89VN1BZ52wgeMyoNEsEdoakDCJeA7A50Z/5u1z0H
 IommIFLX9uzKMCZrf6fnwc1mmSXG4GjCJQo1XUZssMXYoQ35b8dBgQ6Sf
 O40MUcBZdxo8XRHPxky8YZwhTpcKDM9ZodR3vYPukfoZOMivWXTRSAMWC
 xyNEg97YG06PUKBOKukhUWcDvKUah7QsTnR7PF4koOtGsmeC0YNIapX3P
 cCsgTM0jedsBiXyh0+wbW68JWojE9ka+/ik7NFSX4jrCk3TWiGA3lNpd9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="359568561"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="359568561"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="646426197"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:45:12 +0300
Message-Id: <536237d5bc919e8c97a96796f235f5bb264ceff2.1662983005.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662983005.git.jani.nikula@intel.com>
References: <cover.1662983005.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/ipc: refactor and rename IPC
 functions
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename the IPC functions to have skl_watermark_ipc_ prefix, rename
enable to update to reflect what the function actually does, and add
enabled function to abstract direct ->ipc_enabled access for state
query.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  6 ++---
 .../drm/i915/display/intel_display_debugfs.c  |  6 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 25 +++++++++++--------
 drivers/gpu/drm/i915/display/skl_watermark.h  |  5 ++--
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 5 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2d0018ae34b1..a0829dcfd6d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4779,7 +4779,7 @@ static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
 
 	/* Display WA #1135: BXT:ALL GLK:ALL */
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-	    dev_priv->ipc_enabled)
+	    skl_watermark_ipc_enabled(dev_priv))
 		linetime_wm /= 2;
 
 	return min(linetime_wm, 0x1ff);
@@ -8782,7 +8782,7 @@ int intel_modeset_init(struct drm_i915_private *i915)
 	intel_hpd_init(i915);
 	intel_hpd_poll_disable(i915);
 
-	intel_init_ipc(i915);
+	skl_watermark_ipc_init(i915);
 
 	return 0;
 }
@@ -8913,7 +8913,7 @@ void intel_display_resume(struct drm_device *dev)
 	if (!ret)
 		ret = __intel_display_resume(i915, state, &ctx);
 
-	intel_enable_ipc(i915);
+	skl_watermark_ipc_update(i915);
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fe40e2a226d6..d2139cf4f825 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -988,7 +988,7 @@ static int i915_ipc_status_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 
 	seq_printf(m, "Isochronous Priority Control: %s\n",
-			str_yes_no(dev_priv->ipc_enabled));
+		   str_yes_no(skl_watermark_ipc_enabled(dev_priv)));
 	return 0;
 }
 
@@ -1016,11 +1016,11 @@ static ssize_t i915_ipc_status_write(struct file *file, const char __user *ubuf,
 		return ret;
 
 	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		if (!dev_priv->ipc_enabled && enable)
+		if (!skl_watermark_ipc_enabled(dev_priv) && enable)
 			drm_info(&dev_priv->drm,
 				 "Enabling IPC: WM will be proper only after next commit\n");
 		dev_priv->ipc_enabled = enable;
-		intel_enable_ipc(dev_priv);
+		skl_watermark_ipc_update(dev_priv);
 	}
 
 	return len;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index cb297725d5b9..df505ca6ef91 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1837,10 +1837,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
 	 * Display WA #1141: kbl,cfl
 	 */
-	if ((IS_KABYLAKE(i915) ||
-	     IS_COFFEELAKE(i915) ||
-	     IS_COMETLAKE(i915)) &&
-	    i915->ipc_enabled)
+	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
+	    skl_watermark_ipc_enabled(i915))
 		latency += 4;
 
 	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
@@ -2008,7 +2006,7 @@ static void skl_compute_transition_wm(struct drm_i915_private *i915,
 	u16 wm0_blocks, trans_offset, blocks;
 
 	/* Transition WM don't make any sense if ipc is disabled */
-	if (!i915->ipc_enabled)
+	if (!skl_watermark_ipc_enabled(i915))
 		return;
 
 	/*
@@ -3116,7 +3114,12 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 	kfree(hw);
 }
 
-void intel_enable_ipc(struct drm_i915_private *i915)
+bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
+{
+	return i915->ipc_enabled;
+}
+
+void skl_watermark_ipc_update(struct drm_i915_private *i915)
 {
 	u32 val;
 
@@ -3125,7 +3128,7 @@ void intel_enable_ipc(struct drm_i915_private *i915)
 
 	val = intel_uncore_read(&i915->uncore, DISP_ARB_CTL2);
 
-	if (i915->ipc_enabled)
+	if (skl_watermark_ipc_enabled(i915))
 		val |= DISP_IPC_ENABLE;
 	else
 		val &= ~DISP_IPC_ENABLE;
@@ -3133,7 +3136,7 @@ void intel_enable_ipc(struct drm_i915_private *i915)
 	intel_uncore_write(&i915->uncore, DISP_ARB_CTL2, val);
 }
 
-static bool intel_can_enable_ipc(struct drm_i915_private *i915)
+static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
 {
 	/* Display WA #0477 WaDisableIPC: skl */
 	if (IS_SKYLAKE(i915))
@@ -3148,14 +3151,14 @@ static bool intel_can_enable_ipc(struct drm_i915_private *i915)
 	return true;
 }
 
-void intel_init_ipc(struct drm_i915_private *i915)
+void skl_watermark_ipc_init(struct drm_i915_private *i915)
 {
 	if (!HAS_IPC(i915))
 		return;
 
-	i915->ipc_enabled = intel_can_enable_ipc(i915);
+	i915->ipc_enabled = skl_watermark_ipc_can_enable(i915);
 
-	intel_enable_ipc(i915);
+	skl_watermark_ipc_update(i915);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 50da05932750..7e5adef0c510 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -44,8 +44,9 @@ void skl_wm_sanitize(struct drm_i915_private *i915);
 void intel_wm_state_verify(struct intel_crtc *crtc,
 			   struct intel_crtc_state *new_crtc_state);
 
-void intel_enable_ipc(struct drm_i915_private *i915);
-void intel_init_ipc(struct drm_i915_private *i915);
+void skl_watermark_ipc_init(struct drm_i915_private *i915);
+void skl_watermark_ipc_update(struct drm_i915_private *i915);
+bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
 
 void skl_wm_init(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8262bfb2a2d9..c459eb362c47 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1756,7 +1756,7 @@ static int intel_runtime_resume(struct device *kdev)
 		intel_hpd_poll_disable(dev_priv);
 	}
 
-	intel_enable_ipc(dev_priv);
+	skl_watermark_ipc_update(dev_priv);
 
 	enable_rpm_wakeref_asserts(rpm);
 
-- 
2.34.1

