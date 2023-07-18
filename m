Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B016C75886A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 00:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0344A10E3E9;
	Tue, 18 Jul 2023 22:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB09B10E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 22:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689719282; x=1721255282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=45tg/265dPmwUpRy5lJ4KhbaJBoUclguOj9UwO9JzKs=;
 b=UfFThm8I4jmbGT7K/SmJQngs10k3VAqCPff5TJgqA4ugOJPRrVaAXFlq
 zM7GfolC1FeupwqhUztbeAA5vFsx0zt+JH14FXOXgJPEIO8P3ZGTcs7YZ
 LKmk59QeY83ujvW7U6RxY/1QEIZJ7eAT/HE9fd6OIN97GfAHoQOKKMiw3
 yIgEaqgCF5J6gtfPTii9DCdfJU39T7J+AXHgGUlIPY6JnsLAFN2iXCvX4
 2pXemptPhwl3cptFKEqM2FfjQVfx60JIbreIWDQoTPXQe0wxjFmQxwjLi
 z+rPbW8IlCZKHGkkXkDMS++vYppRM24qixr9HXMmWxQ3IHCLUWrCINt/E w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="432508076"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="432508076"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="970403905"
X-IronPort-AV: E=Sophos;i="6.01,215,1684825200"; d="scan'208";a="970403905"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 15:28:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 15:28:01 -0700
Message-ID: <20230718222753.1075713-17-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230718222753.1075713-10-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/display: Eliminate IS_METEORLAKE
 checks
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Most of the IS_METEORLAKE checks in the display code shouldn't actually
be tied to MTL as a platform, but rather to the Xe_LPD+ display IP
(which is used in MTL, but may show up again in future platforms).  In
cases where we're trying to match that specific IP, use a version check
against IP_VER(14, 0).  For cases where we're just handling new behavior
introduced by this IP (but which may also be inherited by future IP as
well), use a ver >= 14 check.

The one exception here is the stolen memory workaround Wa_13010847436
(which is mislabelled as "Wa_22018444074" in the code).  That's truly a
MTL-specific issue rather than being tied to any of the IP blocks, so
leaving the condition as IS_METEORLAKE is correct there.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c     | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index dcc1f6941b60..4cb1dc397b62 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1840,7 +1840,7 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 
 static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
 {
-	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv)) &&
+	return ((IS_DG2(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0)) &&
 		dev_priv->display.cdclk.hw.vco > 0 &&
 		HAS_CDCLK_SQUASH(dev_priv));
 }
@@ -3559,7 +3559,7 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_METEORLAKE(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) > 14) {
 		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
 		dev_priv->display.cdclk.table = mtl_cdclk_table;
 	} else if (IS_DG2(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1b00ef2c6185..025c80b9fece 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -31,7 +31,7 @@
 
 bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 {
-	if (IS_METEORLAKE(i915) && (phy < PHY_C))
+	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && (phy < PHY_C))
 		return true;
 
 	return false;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 43cba98f7753..85efd77f491b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1767,7 +1767,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 	if (IS_DG2(dev_priv))
 		/* DG2's "TC1" output uses a SNPS PHY */
 		return false;
-	else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
+	else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0))
 		return phy >= PHY_F && phy <= PHY_I;
 	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 5f479f3828bb..1623c0c5e8a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -998,7 +998,7 @@ void intel_dmc_init(struct drm_i915_private *i915)
 
 	INIT_WORK(&dmc->work, dmc_load_work_fn);
 
-	if (IS_METEORLAKE(i915)) {
+	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
 		dmc->fw_path = MTL_DMC_PATH;
 		dmc->max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
 	} else if (IS_DG2(i915)) {
-- 
2.41.0

