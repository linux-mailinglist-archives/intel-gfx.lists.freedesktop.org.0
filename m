Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979108B93F2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 06:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE3410EC9A;
	Thu,  2 May 2024 04:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JNOddXni";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0344810EA4E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 04:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714625026; x=1746161026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j4Vt1cCgSrgUt3WyTy6ZofzCk6pz2/b+K70v8y1I6n0=;
 b=JNOddXniYl3AUbGy+is7yVSV4VSxJqtaOpRWW3NdozAtHp1uzng35Qja
 ZL266tL318H/ysB1TAiI4tu0VfUZ16AcDoex0+hxBz18ZswoSX83it12b
 ESRlkgF5cinRwY+/LGCd6wzDqFcTnrxJ88rVJ3jCw3SE3gRkHRMHQN+8v
 DdWoKzGHY2GZ+ZpZp6lCBumIVfZ5vVTL3EneJvt5KSOss/5uh97T9kSXr
 OwkmmOJSZTcRaQSNF217qYRr/pxP54y7GDx9OP/NTYBV1Mn5B1ytL+c4c
 AEQ6RGJLwtZGTqpaTFGZuWSw3QbFNvAXw/GmB801eOI2WEu1B/pR3ESdC Q==;
X-CSE-ConnectionGUID: JCeW4c4cT0yYIeJK7kO1tA==
X-CSE-MsgGUID: 0lWewYjjQTKA6PMzB6/tSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="20994202"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="20994202"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2024 21:43:45 -0700
X-CSE-ConnectionGUID: hwHgw4vST72vYLOd4zXFpA==
X-CSE-MsgGUID: Cq2k3t42QpqVllpHzkDeJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="26878933"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 01 May 2024 21:43:43 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI
Date: Thu,  2 May 2024 10:10:58 +0530
Message-ID: <20240502044057.896348-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240424051144.822652-2-suraj.kandpal@intel.com>
References: <20240424051144.822652-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are
on HDMI TMDS operation for DISPLAY_VER >= 14.

--v2
-Wa to be mentioned in comments not in commit message [Jani]
-Remove blankline [Jani]

--v3
-No need to write what is being done in comments when code
is self explanatory [Jani]

--v4
-Add comment regarding need of this WA when in TMDS mode
[Chaitanya]
-Write in chicken register for MTL [CHaitanya]

--v5
-Fix comment [Chaitanya]
-Use correct set and clear value in intel_de_rmw [Chaitanya]

Bspec: 49273
Bspec: 69964
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 23 +++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h           |  4 ++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index d5ed4c7dfbc0..02cbbbfd8e25 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,6 +30,27 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
+/* WA: 16022217614 */
+static void
+intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
+				      struct intel_hdcp *hdcp)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	/* Here we assume HDMI is in TMDS mode of operation */
+	if (encoder->type != INTEL_OUTPUT_HDMI)
+		return;
+
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		if (IS_METEORLAKE(dev_priv))
+			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
+				     0, HDCP_LINE_REKEY_DISABLE);
+		else
+			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
+				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
+	}
+}
+
 static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 			      struct intel_connector *connector)
 {
@@ -2005,6 +2026,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
 		    connector->base.base.id, connector->base.name,
 		    hdcp->content_type);
 
+	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
+
 	ret = hdcp2_authenticate_and_encrypt(state, connector);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e22a82a5ddd7..31338d825e34 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3501,6 +3501,8 @@
 					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
 #define _MTL_CHICKEN_TRANS_A	0x604e0
 #define _MTL_CHICKEN_TRANS_B	0x614e0
+#define _MTL_CHICKEN_TRANS_C	0x624e0
+#define _MTL_CHICKEN_TRANS_D	0x634e0
 #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
 						    _MTL_CHICKEN_TRANS_A, \
 						    _MTL_CHICKEN_TRANS_B)
@@ -3519,6 +3521,7 @@
 #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
+#define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
 
 #define DISP_ARB_CTL	_MMIO(0x45000)
 #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
@@ -4520,6 +4523,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
 #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
 #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
+#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
 	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
-- 
2.43.2

