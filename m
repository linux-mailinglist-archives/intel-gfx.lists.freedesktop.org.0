Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AE56FF7D3
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 18:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A4D10E57E;
	Thu, 11 May 2023 16:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA4210E584
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 16:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683824155; x=1715360155;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yjcxFi4cn1y4Mpn71LuA1qxRBuwP+jkxTFL1LscWZw8=;
 b=RZ5CdD2GMgqNKKkasbyditQM+DUQnjaFeo3zEBKBU2JB23og5igGaocw
 E0mXFDmclYFe/mseRIlHgNKqAoDhaFNxbJ/Lhx/GMR4MyZlG8K7f6i1Q7
 ++7h+iskka1TQGJ2Uh7IY0GzrwqgkKgMHqZqk+GwoQfHfL+xUbIl6A6WJ
 UtAIgjrHc1zMxQQAQ6v7PqUHjeOfwBLcPElo74W4NxKqhLHKc3WlQ1Av7
 vSUD/tXrHLbwghyfcpH7O2VcBdHKRfhBe3fKt2OPjLOwF+Ldy8kWtlram
 maUyHgNIf6l3+up+xUieHwLTwyzkMaCPcz/d02or6UGjEKxzCxXgiZoyL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352796246"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="352796246"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:55:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="677319582"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="677319582"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 11 May 2023 09:55:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 19:55:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 19:55:33 +0300
Message-Id: <20230511165534.10266-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Init DDI outputs based on
 port_mask on skl+
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

Instead of listing every platform's possible DDI outputs
in intel_setup_outputs() just loop over the new port_mask
to achieve the same thing.

HSW/BDW were left as is since they still look at the straps
as well.

DSI is still a mess. For now just check for the relevant
platforms explicitly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 80 ++++----------------
 1 file changed, 13 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a96714ea752a..fd3b5fc801e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7350,73 +7350,19 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_METEORLAKE(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_TC1);
-		intel_ddi_init(dev_priv, PORT_TC2);
-		intel_ddi_init(dev_priv, PORT_TC3);
-		intel_ddi_init(dev_priv, PORT_TC4);
-	} else if (IS_DG2(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D_XELPD);
-		intel_ddi_init(dev_priv, PORT_TC1);
-	} else if (IS_ALDERLAKE_P(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_TC1);
-		intel_ddi_init(dev_priv, PORT_TC2);
-		intel_ddi_init(dev_priv, PORT_TC3);
-		intel_ddi_init(dev_priv, PORT_TC4);
-		icl_dsi_init(dev_priv);
-	} else if (IS_ALDERLAKE_S(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_TC1);
-		intel_ddi_init(dev_priv, PORT_TC2);
-		intel_ddi_init(dev_priv, PORT_TC3);
-		intel_ddi_init(dev_priv, PORT_TC4);
-	} else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_TC1);
-		intel_ddi_init(dev_priv, PORT_TC2);
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_TC1);
-		intel_ddi_init(dev_priv, PORT_TC2);
-		intel_ddi_init(dev_priv, PORT_TC3);
-		intel_ddi_init(dev_priv, PORT_TC4);
-		intel_ddi_init(dev_priv, PORT_TC5);
-		intel_ddi_init(dev_priv, PORT_TC6);
-		icl_dsi_init(dev_priv);
-	} else if (IS_JSL_EHL(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D);
-		icl_dsi_init(dev_priv);
-	} else if (DISPLAY_VER(dev_priv) == 11) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D);
-		intel_ddi_init(dev_priv, PORT_E);
-		intel_ddi_init(dev_priv, PORT_F);
-		icl_dsi_init(dev_priv);
-	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		vlv_dsi_init(dev_priv);
-	} else if (DISPLAY_VER(dev_priv) >= 9) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D);
-		intel_ddi_init(dev_priv, PORT_E);
+	if (DISPLAY_VER(dev_priv) >= 9) {
+		enum port port;
+
+		for_each_port_masked(port, RUNTIME_INFO(dev_priv)->port_mask)
+			intel_ddi_init(dev_priv, port);
+
+		/* FIXME do something about DSI */
+		if (IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv) ||
+		    DISPLAY_VER(dev_priv) == 11)
+			icl_dsi_init(dev_priv);
+
+		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+			vlv_dsi_init(dev_priv);
 	} else if (HAS_DDI(dev_priv)) {
 		u32 found;
 
-- 
2.39.3

