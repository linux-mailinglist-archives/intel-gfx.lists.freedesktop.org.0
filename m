Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295EB73332C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 16:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706CE10E63E;
	Fri, 16 Jun 2023 14:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7330E10E63B
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 14:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686924543; x=1718460543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=34nDTfbWA22Pvh36IeHWzUtdQdXMlZ8nb//LAmnXV1c=;
 b=GyyIcVGnR6bct18cFKKay/An1XfGPtzNitvAVUyO+ZUxbBIzIvvhBdEq
 BlCHARFG4YGPeG3tHx1NzkGvDyuaPg5cNWyEl9vv+riQIA04kIDux4/10
 9CU6ZtjiqH6jaw3CIh5eKr/kMnS1M4qsSjHZMWGjIiszC1gu+KCV/9wnk
 onv+Qx8VxvBLneDTky9RXW5CIoKZokDD14tcNRd1RF/N/K96kWVbPBMR5
 hX2fovg/llfHaf6s+nSJdP86MrNCSYYf+PQxFMvxDxSBpEwSaxcljH9Sd
 3VlsjCSFCu7a8/R+IkR+Qe1HVkWRq+UjzzT0lwXJCNDHC3aIc9QJ0MGf5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="343957893"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="343957893"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 07:08:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712883126"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="712883126"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 16 Jun 2023 07:08:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Jun 2023 17:08:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:08:19 +0300
Message-Id: <20230616140820.11726-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
References: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/7] drm/i915: Init DDI outputs based on
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
Cc: Jani Nikula <jani.nikula@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 80 ++++----------------
 1 file changed, 13 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 669e0cb6e392..3273ed4fa834 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7404,73 +7404,19 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
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
+		for_each_port_masked(port, DISPLAY_RUNTIME_INFO(dev_priv)->port_mask)
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

