Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E42560D722
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 00:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C92AC10E154;
	Tue, 25 Oct 2022 22:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4619910E13B
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 22:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666737031; x=1698273031;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p3/e3oQ0xjFUVIXCDyCYiE5XKQhPEfvURRFXv0u997c=;
 b=CEh5zZ3yKxp/SOOY6cx5sWwntjeZ5LyW68F/Ou3qIkQYso/lNg2kvy0l
 IKtYYS6qE1vDbK4Mw/XTuBkbOBmqyp1+MGdJ7mvUI0kKzNOLrUbU97CE8
 SIGYf/t2CaSHEZ1v2Wm0tsv3ZLytfH10XE3oJ+LCCBHXOgUnY5ISR71tB
 2XfpPaPF2wvyhSzx0+0XCZMFuXT7oqaifJhQ6C4cA1TS4hkity1nbJuz2
 PQQQkUmn4vzfE1es3jJnO3Kg9F3Ei4tnM9Eo01GSgfs4BzJWwpfKfRN8U
 Hw7UA99HFqfCekDVJNKfd8jgKTcaRpp7F1VoLgBuP9NgRCBCt62veST3S w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="305421438"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="305421438"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 15:30:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="665072908"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="665072908"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 15:30:29 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 15:30:39 -0700
Message-Id: <20221025223042.138810-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/4] drm/i915/display: Change terminology for cdclk
 actions
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

No functional changes. Changing terminology in some
print statements. s/has_cdclk_squasher/has_cdclk_squash,
s/crawler/crawl and s/squasher/squash.

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ad401357ab66..0f5add2fc51b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1220,7 +1220,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
 
-static bool has_cdclk_squasher(struct drm_i915_private *i915)
+static bool has_cdclk_squash(struct drm_i915_private *i915)
 {
 	return IS_DG2(i915);
 }
@@ -1520,7 +1520,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (has_cdclk_squasher(dev_priv))
+	if (has_cdclk_squash(dev_priv))
 		squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
 
 	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
@@ -1747,7 +1747,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	else
 		clock = cdclk;
 
-	if (has_cdclk_squasher(dev_priv)) {
+	if (has_cdclk_squash(dev_priv)) {
 		u32 squash_ctl = 0;
 
 		if (waveform)
@@ -1845,7 +1845,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	expected = skl_cdclk_decimal(cdclk);
 
 	/* Figure out what CD2X divider we should be using for this cdclk */
-	if (has_cdclk_squasher(dev_priv))
+	if (has_cdclk_squash(dev_priv))
 		clock = dev_priv->display.cdclk.hw.vco / 2;
 	else
 		clock = dev_priv->display.cdclk.hw.cdclk;
@@ -1976,7 +1976,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	 * the moment all platforms with squasher use a fixed cd2x
 	 * divider.
 	 */
-	if (!has_cdclk_squasher(dev_priv))
+	if (!has_cdclk_squash(dev_priv))
 		return false;
 
 	return a->cdclk != b->cdclk &&
@@ -2028,7 +2028,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
 	 * the moment all platforms with squasher use a fixed cd2x
 	 * divider.
 	 */
-	if (has_cdclk_squasher(dev_priv))
+	if (has_cdclk_squash(dev_priv))
 		return false;
 
 	return a->cdclk != b->cdclk &&
@@ -2754,12 +2754,12 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 				   &old_cdclk_state->actual,
 				   &new_cdclk_state->actual)) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "Can change cdclk via squasher\n");
+			    "Can change cdclk via squashing\n");
 	} else if (intel_cdclk_can_crawl(dev_priv,
 					 &old_cdclk_state->actual,
 					 &new_cdclk_state->actual)) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "Can change cdclk via crawl\n");
+			    "Can change cdclk via crawling\n");
 	} else if (pipe != INVALID_PIPE) {
 		new_cdclk_state->pipe = pipe;
 
-- 
2.25.1

