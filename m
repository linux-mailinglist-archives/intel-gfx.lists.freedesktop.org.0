Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDCB60D392
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 20:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 216F810E1D4;
	Tue, 25 Oct 2022 18:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C3FC10E420
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 18:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666722570; x=1698258570;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UqRifCumQ4kz51LuDNT6xlLqNa32mjJaTYmaucmqfew=;
 b=VFkIDGjkiSCar803E7EsIoIqZYKTLq9ArpKXoTw6VzJUghqNpJYh1qP1
 gi7FUbsL7Y1GBU/2Tp/YDizRvDgVBqF8Qeu/HuU0TpAzsg0lbRPBOEt0B
 P4G5DqYpoyrVkiuhR3X9TkDaKYvgqiYGi3aB7mFlU0LhnwtuEhQDjfpnT
 C9UjFoGFrGsGzxOU4Mgo1CTkolqxMjrGmawMKQKBD34RHiycpz3+olv9x
 CZSWlmOB0Cg/9cSFg+uPdP98HA+X5MwfG08I+96wNZOon3C7XdrtczyfM
 8VANX3TJzeNSrnfKSckNwajYoqgDCtWlUTxTOoDtj+a88av5MOPUZg4rM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="287477839"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="287477839"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 11:29:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="774299146"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="774299146"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 11:29:29 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 11:29:40 -0700
Message-Id: <20221025182942.123094-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025182942.123094-1-anusha.srivatsa@intel.com>
References: <20221025182942.123094-1-anusha.srivatsa@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Driver had discrepancy in how cdclk squash and crawl support
were checked. Like crawl, add squash as a 1 bit feature flag
to the display section of DG2.

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
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

