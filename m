Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C418F7603AD
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 02:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9D610E13B;
	Tue, 25 Jul 2023 00:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6E9710E3A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690244007; x=1721780007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3zhoeybttwQGp6XxABvILxmx5AcDRUMUC2A35jhmAZI=;
 b=bVU2h+1DSLrQOup2MvrZjjGcvHxbVLawnuDLMWtKieJ0GXaSRgfz59XD
 we6d28gJB9fdlNCb2iC+FcWnI7dVk1/eFc7m42iKI/xzbjUYq8jbgmQ5s
 9LbMcHvRbwIYHHuEI35qySITf6zrFhe5PDMaUsnWFRd27gPABPneddhDZ
 GedYSsq6IPVq7Z/qYXZ997HrMZBpefKwyFpOfZdhPKOAnz4OSwXSsMeOw
 v++z5cbe2sglp4Zm3Cn/OI+KS6ipOazVnLNNNTpQ1KenftXnMUd+Ay1Rk
 og5MNuGRBBlUo/8grWSY+SKx72XHF8krjJcQkchJ6z89R0YJYih2rl/7T A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="365042916"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="365042916"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="791157021"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="791157021"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jul 2023 17:13:21 -0700
Message-ID: <20230725001312.1907319-19-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915/display: Eliminate
 IS_METEORLAKE checks
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

v2:
 - cdclk check should be >=, not >.  (Gustavo)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c     | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index dcc1f6941b60..5ec39cc15332 100644
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
+	if (DISPLAY_VER(dev_priv) >= 14) {
 		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
 		dev_priv->display.cdclk.table = mtl_cdclk_table;
 	} else if (IS_DG2(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1b00ef2c6185..a42b3c4c0ed7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -31,7 +31,7 @@
 
 bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 {
-	if (IS_METEORLAKE(i915) && (phy < PHY_C))
+	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && phy < PHY_C)
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

