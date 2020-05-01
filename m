Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3611C1B2E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A336ECFA;
	Fri,  1 May 2020 17:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97A46ECF1
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:08:01 +0000 (UTC)
IronPort-SDR: xhKilMfAG4iEkBvID/kdrpq2Pr43KrpMB3my6K4nL+RJwY/PmFgrWai4jOoFnlaoEgPHUP+7Dc
 HxMY+U9doUtQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:08:00 -0700
IronPort-SDR: HQeFH2gG6Sbaoac9ly2uQUno+W8f/Q/KEP/XtflpYUw0kzbpsOBDLohhE7OxY/N8iGgPU5Uuoj
 HNOORM9UhVuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250062149"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:07:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 10:07:40 -0700
Message-Id: <20200501170748.358135-16-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/23] drm/i915/rkl: provide port/phy mapping
 for vbt
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lucas De Marchi <lucas.demarchi@intel.com>

RKL uses the DDI A, DDI B, DDI USBC1, DDI USBC2 from the DE point of
view, so all DDI/pipe/transcoder register use these indexes to refer to
them. Combo phy and IO functions follow another namespace that we keep
as "enum phy". The VBT in theory would use the DE point of view, but
that does not happen in practice.

Provide a table to convert the child devices to the "correct" port
numbering we use. Now this is the output we get while reading the VBT:

DDIA:
[drm:intel_bios_port_aux_ch [i915]] using AUX A for port A (VBT)
[drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:275:DDI A]
[drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:275:DDI A]
[drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x1 for port A (VBT)

DDIB:
[drm:intel_bios_port_aux_ch [i915]] using AUX B for port B (platform default)
[drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:291:DDI B]
[drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x2 for port B (VBT)

DDI USBC1:
[drm:intel_bios_port_aux_ch [i915]] using AUX D for port D (VBT)
[drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:295:DDI D]
[drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:295:DDI D]
[drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x3 for port D (VBT)

DDI USBC2:
[drm:intel_bios_port_aux_ch [i915]] using AUX E for port E (VBT)
[drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:306:DDI E]
[drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:306:DDI E]
[drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x9 for port E (VBT)

Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 72 ++++++++++++++++-------
 1 file changed, 51 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 839124647202..4f1a72a90b8f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1619,30 +1619,18 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
 	return 0;
 }
 
-static enum port dvo_port_to_port(u8 dvo_port)
+static enum port __dvo_port_to_port(int n_ports, int n_dvo,
+				    const int port_mapping[][3], u8 dvo_port)
 {
-	/*
-	 * Each DDI port can have more than one value on the "DVO Port" field,
-	 * so look for all the possible values for each port.
-	 */
-	static const int dvo_ports[][3] = {
-		[PORT_A] = { DVO_PORT_HDMIA, DVO_PORT_DPA, -1},
-		[PORT_B] = { DVO_PORT_HDMIB, DVO_PORT_DPB, -1},
-		[PORT_C] = { DVO_PORT_HDMIC, DVO_PORT_DPC, -1},
-		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1},
-		[PORT_E] = { DVO_PORT_CRT, DVO_PORT_HDMIE, DVO_PORT_DPE},
-		[PORT_F] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1},
-		[PORT_G] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1},
-	};
 	enum port port;
 	int i;
 
-	for (port = PORT_A; port < ARRAY_SIZE(dvo_ports); port++) {
-		for (i = 0; i < ARRAY_SIZE(dvo_ports[port]); i++) {
-			if (dvo_ports[port][i] == -1)
+	for (port = PORT_A; port < n_ports; port++) {
+		for (i = 0; i < n_dvo; i++) {
+			if (port_mapping[port][i] == -1)
 				break;
 
-			if (dvo_port == dvo_ports[port][i])
+			if (dvo_port == port_mapping[port][i])
 				return port;
 		}
 	}
@@ -1650,6 +1638,48 @@ static enum port dvo_port_to_port(u8 dvo_port)
 	return PORT_NONE;
 }
 
+static enum port dvo_port_to_port(struct drm_i915_private *dev_priv,
+				  u8 dvo_port)
+{
+	/*
+	 * Each DDI port can have more than one value on the "DVO Port" field,
+	 * so look for all the possible values for each port.
+	 */
+	static const int port_mapping[][3] = {
+		[PORT_A] = { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
+		[PORT_B] = { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
+		[PORT_C] = { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
+		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
+		[PORT_E] = { DVO_PORT_CRT, DVO_PORT_HDMIE, -1 },
+		[PORT_F] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
+		[PORT_G] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
+	};
+	/*
+	 * Bspec lists the ports as A, B, C, D - however internally in our
+	 * driver we keep them as PORT_A, PORT_B, PORT_D and PORT_E so the
+	 * registers in Display Engine match the right offsets. Apply the
+	 * mapping here to translate from VBT to internal convention.
+	 */
+	static const int rkl_port_mapping[][3] = {
+		[PORT_A] = { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
+		[PORT_B] = { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
+		[PORT_C] = { -1 },
+		[PORT_D] = { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
+		[PORT_E] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
+	};
+
+	if (IS_ROCKETLAKE(dev_priv))
+		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
+					  ARRAY_SIZE(rkl_port_mapping[0]),
+					  rkl_port_mapping,
+					  dvo_port);
+	else
+		return __dvo_port_to_port(ARRAY_SIZE(port_mapping),
+					  ARRAY_SIZE(port_mapping[0]),
+					  port_mapping,
+					  dvo_port);
+}
+
 static void parse_ddi_port(struct drm_i915_private *dev_priv,
 			   struct display_device_data *devdata,
 			   u8 bdb_version)
@@ -1659,7 +1689,7 @@ static void parse_ddi_port(struct drm_i915_private *dev_priv,
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt;
 	enum port port;
 
-	port = dvo_port_to_port(child->dvo_port);
+	port = dvo_port_to_port(dev_priv, child->dvo_port);
 	if (port == PORT_NONE)
 		return;
 
@@ -2603,10 +2633,10 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
 		aux_ch = AUX_CH_B;
 		break;
 	case DP_AUX_C:
-		aux_ch = AUX_CH_C;
+		aux_ch = IS_ROCKETLAKE(dev_priv) ? AUX_CH_D : AUX_CH_C;
 		break;
 	case DP_AUX_D:
-		aux_ch = AUX_CH_D;
+		aux_ch = IS_ROCKETLAKE(dev_priv) ? AUX_CH_E : AUX_CH_D;
 		break;
 	case DP_AUX_E:
 		aux_ch = AUX_CH_E;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
