Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BB9718330
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 15:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F97410E4CA;
	Wed, 31 May 2023 13:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C39B10E4E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 13:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685540907; x=1717076907;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=h+SFQfqikhvKDo+Qg6DT/bvUXvZMh6X34NsJ4g5qT+s=;
 b=f45wh2OExYYgY0MrBuRVh4Who5UaKRrGnStbMZX587V+n4UNzHuxgghL
 c0B3AKn6hdD6MAk71DBexQ3MxTuJV/qcFUbEfLwY/72c0c/tkLsKstkc4
 yc6BD0ODapvGVqMRVlfIX2ZjyKx0JFOIZS3FwfqlA8qvwQvAtoxYjDIrv
 WMRMWfJe31U0i3NHWGzXL4Pt5oorqyRXQPPD3dDaY7mj89plkFeRPpCud
 r25e7m19GOEihAnq4O5hF2CIM/d+Fc1ZHxVIBImqI/oTEtQ7MzP2RfX/b
 Fwbj5mlZ2aiqYN1YkRjQY11EEQOObj5DFFwaN6sWd5CfJ1gSG274PhLV3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421008310"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="421008310"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 06:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="736680011"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="736680011"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 31 May 2023 06:48:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 May 2023 16:48:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:48:05 +0300
Message-Id: <20230531134806.23065-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915: Init DDI outputs based on
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
index d3fc498c82c1..12f2e3897595 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7387,73 +7387,19 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
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

