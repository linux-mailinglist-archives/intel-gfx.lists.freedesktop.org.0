Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C2A69EAE7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE3D10E8F4;
	Tue, 21 Feb 2023 23:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0293810E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020597; x=1708556597;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FnIUstSy6mtr9Gp5VHhCfnjqVzcvhLNPC1HRuhmCEKM=;
 b=k25uLGNwyFzfHFycoNXH4zIZrfvcPEKiAnXkmjDYvR2vyF9vccdgz01S
 WcrWp/9kRxeakksyRPL83NZ5KXV/z7bPOtyMyD2hFUgoHLEtC1cyVc65Z
 k3BpwE8A3VC5Oo35EAAcw786AYTfN50jnB3kASTqdtBApQjyac+gyq+tH
 1MQLg/bQyhY72p5afmFQAk+ksl2mGaLoOykROApaLghm+EKsA95+XyPwI
 tPWi6dtANkpCbzir92VcQM5+3oT4C5soPC8VA7ieq7DkS/050J4ww1ryA
 UPbn2qI03dW67AwtKBB888pfVI2OYcFn/jxFEfz+GYnpiVsXaSLBJ3Qwj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501875"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501875"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690174"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690174"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:21 +0200
Message-Id: <20230221230227.6244-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 16/22] drm/i915: Init DDI outputs based on
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
index 85fc450e0e44..dec68e1d5f9d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7835,68 +7835,21 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
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

