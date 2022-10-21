Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DA9606C70
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 02:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF98C10E474;
	Fri, 21 Oct 2022 00:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC3210E52F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 00:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666311623; x=1697847623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0HFYLUgw63O4HK4XHAgoDAzlmxaShlQtXpazbienfrY=;
 b=lLxpwx2Lwc2NCUQ7DITmbjaCs/+bbaZbSlXlu1X6CtJ7hClgxOY/EVeO
 K73emBAoHIO1qbhf0yOyBloOL4udMLWOS9BODE43sap/vG4XPSmWe6SLt
 5FrA7dhr1/VQ9wXIxDkQEE/8d3Xto31eOrq/HPQPBljLdY9nyYjTE4Ynz
 Akmo2M7aQGATUbxCS48BSTzpzsIbgE57LLX6IAnhUMtcR+J/oVpEe03jh
 RS1VsGHpCd8IueUGnVpMLdv+Rp44eTGzhXZNK+Cdc3dNISA30oSGk+YLM
 fRHXKR5XodaJwjGUugBuhHMvSBROIr4faJ713elzR0CyWCFUYePRPG1s4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="307971573"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="307971573"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="805232112"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="805232112"
Received: from aclausch-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.253.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:22 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 17:20:21 -0700
Message-Id: <20221021002024.390052-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221021002024.390052-1-anusha.srivatsa@intel.com>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: Change terminology for
 cdclk actions
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

No functional changes. Changing terminolgy in some
print statements. s/has_cdclk_squasher/has_cdclk_squash,
s/crawler/crawl and s/squasher/squash.

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
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

