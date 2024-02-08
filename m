Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31E484E3D6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:18:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A3A710E8C1;
	Thu,  8 Feb 2024 15:17:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DBVk7Nn3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62F8010E886
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405477; x=1738941477;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TpCPimrDV6QUhg6j3Msxbizk1zuGvQTTZhEYEo+tatE=;
 b=DBVk7Nn3741r8BlbGVtNUCN8CBTJ8SJzU1w5nvj7ykN7dmaLGf+Qxarm
 ueN6SK0vylfZSGe/sOuOdOkKDpCUh2GV3a8DoSto1voqwXOyKz4NBzmpe
 jrvB3pOFdp1b/hk1HfdWUhpdeJ+tjhEnlUT10hO+m7N9k2dniLBCt8ng8
 nVLsNEUI3RLj0/gx7lbmQob6dfuQPss/lL9wmWMDayp8Y2gJE8vlZgsK4
 NaLsu8nbUi5xQjvmTC6dpyE2Qgk9EVmcmGZdzBNKhL8X3Gjnh2v7EivUC
 E2d4YPLOJQje/xBH7BKwIbbYG6UovnuYzYxNp1PTTMGOsaYx7M/ZPleGq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219275"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219275"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863673"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863673"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/13] drm/i915/wm: Use per-device debugs ilk wm code
Date: Thu,  8 Feb 2024 17:17:18 +0200
Message-ID: <20240208151720.7866-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Switch to drm_dbg_kms() in the ilk wm code so we see which
device generated the debugs. Need to plumb i915 a bit deeper
to make that happen.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 46877fd260d5..628e7192ebc9 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -2533,7 +2533,8 @@ static void ilk_compute_wm_reg_maximums(const struct drm_i915_private *dev_priv,
 	max->fbc = ilk_fbc_wm_reg_max(dev_priv);
 }
 
-static bool ilk_validate_wm_level(int level,
+static bool ilk_validate_wm_level(struct drm_i915_private *i915,
+				  int level,
 				  const struct ilk_wm_maximums *max,
 				  struct intel_wm_level *result)
 {
@@ -2556,14 +2557,17 @@ static bool ilk_validate_wm_level(int level,
 	 */
 	if (level == 0 && !result->enable) {
 		if (result->pri_val > max->pri)
-			DRM_DEBUG_KMS("Primary WM%d too large %u (max %u)\n",
-				      level, result->pri_val, max->pri);
+			drm_dbg_kms(&i915->drm,
+				    "Primary WM%d too large %u (max %u)\n",
+				    level, result->pri_val, max->pri);
 		if (result->spr_val > max->spr)
-			DRM_DEBUG_KMS("Sprite WM%d too large %u (max %u)\n",
-				      level, result->spr_val, max->spr);
+			drm_dbg_kms(&i915->drm,
+				    "Sprite WM%d too large %u (max %u)\n",
+				    level, result->spr_val, max->spr);
 		if (result->cur_val > max->cur)
-			DRM_DEBUG_KMS("Cursor WM%d too large %u (max %u)\n",
-				      level, result->cur_val, max->cur);
+			drm_dbg_kms(&i915->drm,
+				    "Cursor WM%d too large %u (max %u)\n",
+				    level, result->cur_val, max->cur);
 
 		result->pri_val = min_t(u32, result->pri_val, max->pri);
 		result->spr_val = min_t(u32, result->spr_val, max->spr);
@@ -2763,7 +2767,7 @@ static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
 	}
 }
 
-static bool ilk_validate_pipe_wm(const struct drm_i915_private *dev_priv,
+static bool ilk_validate_pipe_wm(struct drm_i915_private *dev_priv,
 				 struct intel_pipe_wm *pipe_wm)
 {
 	/* LP0 watermark maximums depend on this pipe alone */
@@ -2778,7 +2782,7 @@ static bool ilk_validate_pipe_wm(const struct drm_i915_private *dev_priv,
 	ilk_compute_wm_maximums(dev_priv, 0, &config, INTEL_DDB_PART_1_2, &max);
 
 	/* At least LP0 must be valid */
-	if (!ilk_validate_wm_level(0, &max, &pipe_wm->wm[0])) {
+	if (!ilk_validate_wm_level(dev_priv, 0, &max, &pipe_wm->wm[0])) {
 		drm_dbg_kms(&dev_priv->drm, "LP0 watermark invalid\n");
 		return false;
 	}
@@ -2847,7 +2851,7 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 		 * register maximums since such watermarks are
 		 * always invalid.
 		 */
-		if (!ilk_validate_wm_level(level, &max, wm)) {
+		if (!ilk_validate_wm_level(dev_priv, level, &max, wm)) {
 			memset(wm, 0, sizeof(*wm));
 			break;
 		}
@@ -2978,7 +2982,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 
 		if (level > last_enabled_level)
 			wm->enable = false;
-		else if (!ilk_validate_wm_level(level, max, wm))
+		else if (!ilk_validate_wm_level(dev_priv, level, max, wm))
 			/* make sure all following levels get disabled */
 			last_enabled_level = level - 1;
 
-- 
2.43.0

