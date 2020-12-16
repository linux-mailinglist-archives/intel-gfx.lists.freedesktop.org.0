Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B492DC512
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 18:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458A089C2A;
	Wed, 16 Dec 2020 17:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F2E889C2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 17:10:49 +0000 (UTC)
IronPort-SDR: JLHQf1fhjCZNM2S5UVjKUkZJ+n1xzsQLihc26bJkiYlox6FPEWb5kK7szMk06f7ChLW9EQmReq
 jj9zUI4bGjAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="171586204"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="171586204"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 09:10:48 -0800
IronPort-SDR: chzyRRG7M8CPTwcwuZkXUhwzh72xXxSw1luOWh39zjrB2UNS7Swu3Q58WdNUDNuYVvfwPSAkfB
 AEP0e2CSKP+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="384758375"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga004.fm.intel.com with ESMTP; 16 Dec 2020 09:10:45 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org,
	hariom.pandey@intel.com
Date: Wed, 16 Dec 2020 22:33:00 +0530
Message-Id: <20201216170300.397742-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/cml : Add TGP PCH support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have TGP PCH support for Tigerlake and Rocketlake. Similarly
now TGP PCH can be used with Cometlake CPU.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 3 ++-
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6863236df1d0..10e677978ded 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5451,7 +5451,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	if (IS_DG1(dev_priv))
 		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);
-	else if (IS_ROCKETLAKE(dev_priv))
+	else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
+					     HAS_PCH_TGP(dev_priv)))
 		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
 	else if (INTEL_GEN(dev_priv) >= 12)
 		encoder->hpd_pin = tgl_hpd_pin(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 78452de5e12f..711e8e21e756 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -17644,6 +17644,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			intel_ddi_init(dev_priv, PORT_F);
 
 		icl_dsi_init(dev_priv);
+	} else if (IS_COMETLAKE(dev_priv) && HAS_PCH_TGP(dev_priv)) {
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_C);
+		intel_ddi_init(dev_priv, PORT_D);
+		intel_ddi_init(dev_priv, PORT_E);
 	} else if (IS_GEN9_LP(dev_priv)) {
 		/*
 		 * FIXME: Broxton doesn't support port detection via the
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e10fdb369daa..881646ce47c5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3174,7 +3174,8 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port);
-	else if (IS_ROCKETLAKE(dev_priv))
+	else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
+					     HAS_PCH_TGP(dev_priv)))
 		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
 	else if (HAS_PCH_MCC(dev_priv))
 		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
