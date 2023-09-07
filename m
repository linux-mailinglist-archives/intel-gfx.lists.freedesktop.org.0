Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 590757974BD
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37D010E840;
	Thu,  7 Sep 2023 15:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 880E310E818;
 Thu,  7 Sep 2023 15:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101206; x=1725637206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TFdrYwlX6SImQR8CREdBQOFX0DX6x6IPtsRyOADM4yw=;
 b=eNe0yqKLKqg/hf6K6hXMIkK4auS07ACCRgAXlDR/o5hBYAJ/KAZvIX7S
 R3DX2PIUIbDrHqGFc7G/JysJUQbQb1pxYwfALYIc66lM3oFBT7VFDw9hA
 SbfwgP9hwiD5decbxlXR9CNe6JgrSOf0BrIeCueuTX0Go7mqYCvy7EuUP
 iWeuRjBPyTQfpBWhurcak5ikrBDuUFOkXvEVHAr0SsjLeHMacRViDz7HR
 d5nd12Zt/MZW95Wu+sjjGHH5JRY4WPzaqwb3nlt4UE2b9vmSNWjbrFn/2
 ANC9AkRXhCWDG2rnR8z/yzvcRSGu2Qw5n+HMJIHbtDrMYNKsuqrJsOPS2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445791"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445791"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930277"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930277"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:45 -0700
Message-Id: <20230907153757.2249452-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/27] FIXME: drm/i915/xe2lpd: Add support
 for DP aux channels
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

The location of aux channels registers for Xe2 display changed w.r.t.
the previous version.

FIXME: make this commit and "drm/i915/xe2lpd: Move registers to PICA"
 to use a similar approach

BSpec: 69010
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 43 ++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 2d173bd495a3..929cada982ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -714,6 +714,44 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
 	}
 }
 
+static i915_reg_t xe2lpd_aux_ctl_reg(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	enum aux_ch aux_ch = dig_port->aux_ch;
+
+	switch (aux_ch) {
+	case AUX_CH_A:
+	case AUX_CH_B:
+	case AUX_CH_USBC1:
+	case AUX_CH_USBC2:
+	case AUX_CH_USBC3:
+	case AUX_CH_USBC4:
+		return XE2LPD_DP_AUX_CH_CTL(aux_ch);
+	default:
+		MISSING_CASE(aux_ch);
+		return XE2LPD_DP_AUX_CH_CTL(AUX_CH_A);
+	}
+}
+
+static i915_reg_t xe2lpd_aux_data_reg(struct intel_dp *intel_dp, int index)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	enum aux_ch aux_ch = dig_port->aux_ch;
+
+	switch (aux_ch) {
+	case AUX_CH_A:
+	case AUX_CH_B:
+	case AUX_CH_USBC1:
+	case AUX_CH_USBC2:
+	case AUX_CH_USBC3:
+	case AUX_CH_USBC4:
+		return XE2LPD_DP_AUX_CH_DATA(aux_ch, index);
+	default:
+		MISSING_CASE(aux_ch);
+		return XE2LPD_DP_AUX_CH_DATA(AUX_CH_A, index);
+	}
+}
+
 void intel_dp_aux_fini(struct intel_dp *intel_dp)
 {
 	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
@@ -729,7 +767,10 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	struct intel_encoder *encoder = &dig_port->base;
 	enum aux_ch aux_ch = dig_port->aux_ch;
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		intel_dp->aux_ch_ctl_reg = xe2lpd_aux_ctl_reg;
+		intel_dp->aux_ch_data_reg = xe2lpd_aux_data_reg;
+	} else if (DISPLAY_VER(dev_priv) >= 14) {
 		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = xelpdp_aux_data_reg;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-- 
2.40.1

