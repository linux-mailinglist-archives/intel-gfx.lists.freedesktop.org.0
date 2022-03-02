Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430564CB2B7
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 00:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDD310E7A2;
	Wed,  2 Mar 2022 23:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F5410E7A2
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646262686; x=1677798686;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QjVdwvhPGR/Gq+5t6DVYGT8iAPg36g5nO2XuPrTtyhc=;
 b=WfAofNkeobJtjuEPmGnCeqT3m1cEd3gFFaJjnJX0oq62+CuE9r0EtHId
 4wxaxdZEgsLgBOf1eRLjPKFRWzeWt7PgO4WBhjCRUDNRQYFy/Ysp2XQdS
 XAKxSoyQX+MqdaflrW5sUaLdSY9HOv5hwaiKHDbEtD5D5oc7QEVQtABlW
 hFvm7EnmuNBjvT876BGHnIELmQ2/Kckod4AzGwTVgLgDdaTuE6zxx61F5
 +603Aksfkm5KDpHl9/NtODQFQsv4OgBZNXmwv3vqt91bbU3Sy23v5+Jza
 GWYTb+sAUWTBUQrtYB9gGt3wSl3XDlJtxpPCYsbuN1PqU8MzHlKwJJBmt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="316742050"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="316742050"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 15:11:24 -0800
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="709693887"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 15:11:24 -0800
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Mar 2022 15:11:19 -0800
Message-Id: <20220302231119.16876-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/adlp: Remove code related to
 underrun recovery
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

This is not supported for ADLP and is not needed.

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 --------------------
 1 file changed, 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6cae58f921a5..541797a2ff9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3595,12 +3595,8 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	const struct intel_crtc_scaler_state *scaler_state =
-		&crtc_state->scaler_state;
-
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 val = 0;
-	int i;
 
 	switch (crtc_state->pipe_bpp) {
 	case 18:
@@ -3639,23 +3635,6 @@ static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state)
 	if (DISPLAY_VER(dev_priv) >= 12)
 		val |= PIPEMISC_PIXEL_ROUNDING_TRUNC;
 
-	if (IS_ALDERLAKE_P(dev_priv)) {
-		bool scaler_in_use = false;
-
-		for (i = 0; i < crtc->num_scalers; i++) {
-			if (!scaler_state->scalers[i].in_use)
-				continue;
-
-			scaler_in_use = true;
-			break;
-		}
-
-		intel_de_rmw(dev_priv, PIPE_MISC2(crtc->pipe),
-			     PIPE_MISC2_BUBBLE_COUNTER_MASK,
-			     scaler_in_use ? PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN :
-			     PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS);
-	}
-
 	intel_de_write(dev_priv, PIPEMISC(crtc->pipe), val);
 }
 
-- 
2.20.1

