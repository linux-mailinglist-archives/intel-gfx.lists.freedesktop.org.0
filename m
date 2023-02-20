Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AC669D73A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 00:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA37010E0B4;
	Mon, 20 Feb 2023 23:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED00610E7E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 23:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676936498; x=1708472498;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=feMGHMm+olozsLSags4HRk0IGIt0hppkfztYnE+H8ls=;
 b=B0K4BSpoyhJxgVLsBRNfjRi4wfLSukIS9eafqB4wdT6/9lpxmxLSiy5b
 k/cyXAoGXnZQ7xQ21B91H5kIlKPWJkac2a+hPZpcnVosRTYCxhqD/VWzE
 z1xL2Rb3bPxhw9nojYAqavSL1BSTZFkXoVh8mvrXFwnHUzjKXEQOtvzel
 OetxlqVr0WrxLCHTtEKaBeVXatHB2TUimyEK/ZC2JqHBQmQNvbztp2AlW
 FnIZ1GWyaO3yR2q85TWZ4gFHkJZDSvmvbr4FKL1v84W5yBCJ/Q8cdcM6O
 qmzbIGq6D8xPBTCXs+yugbuzwQj0M0pFvuuvnA1E1VHRz0jgzzF/HGtnM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="394989112"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="394989112"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:41:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664769785"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="664769785"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2023 15:41:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 01:41:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 01:40:44 +0200
Message-Id: <20230220234046.29716-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/18] drm/i915: Init DDI outputs based on
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
 drivers/gpu/drm/i915/display/intel_display.c | 73 ++++----------------
 1 file changed, 13 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1012f112f5f9..155ca9365d91 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7812,68 +7812,21 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_DG2(dev_priv)) {
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
 
 		if (intel_ddi_crt_present(dev_priv))
-- 
2.39.2

