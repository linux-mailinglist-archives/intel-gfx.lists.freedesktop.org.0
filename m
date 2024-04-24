Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EA88B00ED
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 07:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E4A010E9AC;
	Wed, 24 Apr 2024 05:18:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BKZj9Qs8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EDF410E9AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 05:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713935882; x=1745471882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OLjauWSpTe75RjjTgLbVE8iRhp/5/eOoxyB9tYbmEfE=;
 b=BKZj9Qs88QBWh4/iJ7OtwdKDOnDqlk7Ju31D23r+hj236n40oqoy+GEK
 MzpB26xg2Ze/IHRpBqAc9BHKU9GAxZ4HBxxdXL7q2KTcXJfalYBcqz2Et
 G3JQCKqCfssa+5zdDM1CABV97QAGleiZjtwDKeZJbeajYdWqlNV+keQRb
 3DJDFAKWvImmjlOAqQ4kaMQmtRFviEQbvAJ2u2GHQGg1rP/ZQQYPowc2F
 W04pgPjHhgOKsxXX8YGBXBiUKpF71Us06+ucs1A2BLgEf5IqRTu2BiatL
 KRc7gV+lIOturKVt6XtIPt/J8DC0tpH5rWtDbUEGXU+F7EdiF/pbbrPIg g==;
X-CSE-ConnectionGUID: gLTqR038SgWl+4Impfmn0Q==
X-CSE-MsgGUID: PoBUznGgSrut2Xs0F20VrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9376962"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="9376962"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 22:18:02 -0700
X-CSE-ConnectionGUID: RFOVNo7eTmyEI3cr1nHgGQ==
X-CSE-MsgGUID: 5N2fca0YROOhB0bib6rkQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="25201441"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa008.jf.intel.com with ESMTP; 23 Apr 2024 22:17:59 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI
Date: Wed, 24 Apr 2024 10:41:45 +0530
Message-ID: <20240424051144.822652-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240417095537.632977-2-suraj.kandpal@intel.com>
References: <20240417095537.632977-2-suraj.kandpal@intel.com>
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

Bspec: 49273
Bspec: 69964
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 26 +++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h           |  4 ++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index d5ed4c7dfbc0..0d8ae6962d34 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,6 +30,30 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
+/*
+ * WA: 16022217614
+ * Disable HDCP line rekeying if we are using HDMI and in
+ * TMDS mode.
+ */
+static void
+intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
+				      struct intel_hdcp *hdcp)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	if (encoder->type != INTEL_OUTPUT_HDMI)
+		return;
+
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		if (IS_METEORLAKE(dev_priv))
+			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
+				     HDCP_LINE_REKEY_DISABLE, 1);
+		else
+			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
+				     TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 1);
+	}
+}
+
 static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 			      struct intel_connector *connector)
 {
@@ -2005,6 +2029,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
 		    connector->base.base.id, connector->base.name,
 		    hdcp->content_type);
 
+	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
+
 	ret = hdcp2_authenticate_and_encrypt(state, connector);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3f34efcd7d6c..39b1a2d516fe 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4613,6 +4613,8 @@
 					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
 #define _MTL_CHICKEN_TRANS_A	0x604e0
 #define _MTL_CHICKEN_TRANS_B	0x614e0
+#define _MTL_CHICKEN_TRANS_C	0x624e0
+#define _MTL_CHICKEN_TRANS_D	0x634e0
 #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
 						    _MTL_CHICKEN_TRANS_A, \
 						    _MTL_CHICKEN_TRANS_B)
@@ -4631,6 +4633,7 @@
 #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
+#define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
 
 #define DISP_ARB_CTL	_MMIO(0x45000)
 #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
@@ -5630,6 +5633,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
 #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
 #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
+#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
 	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
-- 
2.43.2

