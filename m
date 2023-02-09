Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D50B668FBFE
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 01:32:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45F710E063;
	Thu,  9 Feb 2023 00:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCED10E8CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 00:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675902775; x=1707438775;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q9CxxwfBc68PwwEOoYUlyOubYOVgY+VfZWX3m4YxvKo=;
 b=S9eHJmYn8CG4bgh1UnszDazeAJnFJEh7q7mncOS7P2/3n9M+y5aupOaQ
 1WyojqrLh/iAZwpB/bSO4McFtxV9CKS+me1DfpdG2/q3/vWyhelQCdvrh
 XXNFbbA9ByNP4Xt9A+PClK5ef3qt/onncdXJpMGAfGq7NDNssYXrL1bT4
 XVsN19Erwbo2+NAtv8UeKzVlIRcrcMqBQlbked8aqHxCgsS5RvEauGRDR
 bOZSRFxcXaf9Hkbq/Y0chackEGauzga/h281IBIl01wfi4YtFFZOFf/b7
 q1OVN41kyuvPFFMubVmU0txG371c4rep0wTFVhlhGt3QEvfTw+s7ZibGG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="328618461"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="328618461"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 16:32:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="699860224"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="699860224"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2023 16:32:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Feb 2023 02:32:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Feb 2023 02:32:50 +0200
Message-Id: <20230209003251.32021-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Populate wm.max_level for everyone
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

Switch ilk+ and skl+ platforms to also setting up
wm.max_level and remove a bunch of if ladders as a result.

There will be a tiny change in the debugfs on CHV machines
that have DVFS disabled in the BIOS. Presviously debugfs
would show the latency for the DVFS level as well, but
that will no longer be the case. Which is arguably better
as that number is absolutely meaningless when DVFS can't
be enabled anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c   | 18 ++----------------
 drivers/gpu/drm/i915/display/skl_watermark.c   |  5 +++++
 drivers/gpu/drm/i915/intel_pm.c                | 18 +++++++-----------
 3 files changed, 14 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 9e2fb8626c96..b5a2f1a27870 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1288,14 +1288,7 @@ static void wm_latency_show(struct seq_file *m, const u16 wm[8])
 	int level;
 	int num_levels;
 
-	if (IS_CHERRYVIEW(dev_priv))
-		num_levels = 3;
-	else if (IS_VALLEYVIEW(dev_priv))
-		num_levels = 1;
-	else if (IS_G4X(dev_priv))
-		num_levels = 3;
-	else
-		num_levels = ilk_wm_max_level(dev_priv) + 1;
+	num_levels = ilk_wm_max_level(dev_priv) + 1;
 
 	drm_modeset_lock_all(&dev_priv->drm);
 
@@ -1407,14 +1400,7 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 	int ret;
 	char tmp[32];
 
-	if (IS_CHERRYVIEW(dev_priv))
-		num_levels = 3;
-	else if (IS_VALLEYVIEW(dev_priv))
-		num_levels = 1;
-	else if (IS_G4X(dev_priv))
-		num_levels = 3;
-	else
-		num_levels = ilk_wm_max_level(dev_priv) + 1;
+	num_levels = ilk_wm_max_level(dev_priv) + 1;
 
 	if (len >= sizeof(tmp))
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 022aed8dd440..97dc66012bdc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3258,6 +3258,11 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 static void skl_setup_wm_latency(struct drm_i915_private *i915)
 {
+	if (HAS_HW_SAGV_WM(i915))
+		i915->display.wm.max_level = 5;
+	else
+		i915->display.wm.max_level = 7;
+
 	if (DISPLAY_VER(i915) >= 14)
 		mtl_read_wm_latency(i915, i915->display.wm.skl_latency);
 	else
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index e0364c4141b8..3e13b940444a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2836,6 +2836,8 @@ static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u64 sskpd;
 
+	i915->display.wm.max_level = 4;
+
 	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
@@ -2851,6 +2853,8 @@ static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u32 sskpd;
 
+	i915->display.wm.max_level = 3;
+
 	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
@@ -2863,6 +2867,8 @@ static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u32 mltr;
 
+	i915->display.wm.max_level = 2;
+
 	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
 
 	/* ILK primary LP0 latency is 700 ns */
@@ -2889,17 +2895,7 @@ static void intel_fixup_cur_wm_latency(struct drm_i915_private *dev_priv,
 
 int ilk_wm_max_level(const struct drm_i915_private *dev_priv)
 {
-	/* how many WM levels are we expecting */
-	if (HAS_HW_SAGV_WM(dev_priv))
-		return 5;
-	else if (DISPLAY_VER(dev_priv) >= 9)
-		return 7;
-	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		return 4;
-	else if (DISPLAY_VER(dev_priv) >= 6)
-		return 3;
-	else
-		return 2;
+	return dev_priv->display.wm.max_level;
 }
 
 void intel_print_wm_latency(struct drm_i915_private *dev_priv,
-- 
2.39.1

