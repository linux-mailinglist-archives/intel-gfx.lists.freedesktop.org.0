Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C87F2606C73
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 02:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E521F10E474;
	Fri, 21 Oct 2022 00:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A96AE10E541
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 00:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666311626; x=1697847626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PzMXEifbb7Gc0xeeDDb8D8ZyvmUiwOh+WIxaina4+/U=;
 b=XihCUdHAFND06cHnJc/dh0CxpwsM2W89N0Hgqjf1FXt1ZtZ92y2ThpEK
 u+k/QiC8QH1bKPdOKco9VFeMJ2yYJeLKJVNKs4hfdR1oU3pltuFzJqGBl
 z3fsIAVtTdD5a6Yu3sCKhrAKOtT28ES2xb1Nb3x3soZhtWTP9sR9fouTV
 5jNVl2kVO2Hd5bdjg1hJE4BvH9CYWJGGVS5iGthJc3qUmLVBM4sygusj/
 un+T3y7LZdc83EmzMlUcUz92PxB4D/1DTY4Trg32E3fqtrVq8yxbcOY63
 lKS63GChoJ4XUJSIe8V5b8Bt/aq2Zkoftl/T4gED453cyLv+zoULsrElt Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="307971585"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="307971585"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="805232154"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="805232154"
Received: from aclausch-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.253.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:26 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 17:20:22 -0700
Message-Id: <20221021002024.390052-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221021002024.390052-1-anusha.srivatsa@intel.com>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: Introduce
 HAS_CDCLK_SQUASH macro
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Driver had discrepancy in how cdclk squash and crawl support
were checked. Like crawl, add squash as a 1 bit feature flag
to the display section of DG2.

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++----------
 drivers/gpu/drm/i915/i915_drv.h            |  1 +
 drivers/gpu/drm/i915/i915_pci.c            |  1 +
 drivers/gpu/drm/i915/intel_device_info.h   |  1 +
 4 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0f5add2fc51b..45babbc6290f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1220,11 +1220,6 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
 
-static bool has_cdclk_squash(struct drm_i915_private *i915)
-{
-	return IS_DG2(i915);
-}
-
 struct intel_cdclk_vals {
 	u32 cdclk;
 	u16 refclk;
@@ -1520,7 +1515,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (has_cdclk_squash(dev_priv))
+	if (HAS_CDCLK_SQUASH(dev_priv))
 		squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
 
 	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
@@ -1747,7 +1742,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	else
 		clock = cdclk;
 
-	if (has_cdclk_squash(dev_priv)) {
+	if (HAS_CDCLK_SQUASH(dev_priv)) {
 		u32 squash_ctl = 0;
 
 		if (waveform)
@@ -1845,7 +1840,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	expected = skl_cdclk_decimal(cdclk);
 
 	/* Figure out what CD2X divider we should be using for this cdclk */
-	if (has_cdclk_squash(dev_priv))
+	if (HAS_CDCLK_SQUASH(dev_priv))
 		clock = dev_priv->display.cdclk.hw.vco / 2;
 	else
 		clock = dev_priv->display.cdclk.hw.cdclk;
@@ -1976,7 +1971,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	 * the moment all platforms with squasher use a fixed cd2x
 	 * divider.
 	 */
-	if (!has_cdclk_squash(dev_priv))
+	if (!HAS_CDCLK_SQUASH(dev_priv))
 		return false;
 
 	return a->cdclk != b->cdclk &&
@@ -2028,7 +2023,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
 	 * the moment all platforms with squasher use a fixed cd2x
 	 * divider.
 	 */
-	if (has_cdclk_squash(dev_priv))
+	if (HAS_CDCLK_SQUASH(dev_priv))
 		return false;
 
 	return a->cdclk != b->cdclk &&
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d7b8eb9d4117..db51050e3ba2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -869,6 +869,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 
 #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
+#define HAS_CDCLK_SQUASH(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_squash)
 #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 19bf5ef6a20d..a88e1439a426 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1064,6 +1064,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
 	.has_media_ratio_mode = 1, \
+	.display.has_cdclk_squash = 1, \
 	.__runtime.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
 		BIT(VECS0) | BIT(VECS1) | \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index cdf78728dcad..67d8759c802c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -180,6 +180,7 @@ enum intel_ppgtt_type {
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
 	func(has_cdclk_crawl); \
+	func(has_cdclk_squash); \
 	func(has_ddi); \
 	func(has_dp_mst); \
 	func(has_dsb); \
-- 
2.25.1

