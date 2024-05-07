Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772F48BDB62
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 08:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 530DD10EDE4;
	Tue,  7 May 2024 06:25:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lpRSS1gm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 234B710EDE4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 06:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715063121; x=1746599121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gAWRUB+B8fNHLIf425vLra1U0PYPYIxB+tVchkIc6KM=;
 b=lpRSS1gm8s32d4qK5s2wP5UPzrNDPHJv+IWoL/TPgqhTyQntrJDLzmUK
 IMSSoxUKfRDbbyAuNJkp9Y/+qb1OlfNFlAuD6Rmi6gxGyGm6lVHPr/OF9
 b8Q/dr3jsl2vHsgTYUHfhGGmywh0FgPMaXivQNkDFUDUgq2xcei1KIEyD
 lUDJZsHVeA8KBvGlGEuqNvilXLNBWlMINKrwJTZrTpH19muBxc4GvTPcW
 uMBcQsaPhzUYBh6lcexvFyDo+51IVPisiH6tt3VkNeRTafPPwO2AydHLC
 RtzRCMRk7rmH/esaye4jjqhe4fQDlp5v3J0etnIIYi9KGrdPbcwxj1Aet Q==;
X-CSE-ConnectionGUID: nl+njVd5RoeOsNz0eUGrOA==
X-CSE-MsgGUID: yg2FOuXETbCWLY4I+uIpbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10959270"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="10959270"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 23:25:15 -0700
X-CSE-ConnectionGUID: xSYycsudT9WLsrFLB7kokg==
X-CSE-MsgGUID: YFez0H9tQDChyV4EyUp1sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="59578389"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa001.fm.intel.com with ESMTP; 06 May 2024 23:25:13 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI
Date: Tue,  7 May 2024 11:52:44 +0530
Message-ID: <20240507062243.1076047-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240502044057.896348-2-suraj.kandpal@intel.com>
References: <20240502044057.896348-2-suraj.kandpal@intel.com>
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

--v6
-No need to define C, D chicken bits it gets calculated [Animesh]

Bspec: 49273
Bspec: 69964
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 23 +++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h           |  2 ++
 2 files changed, 25 insertions(+)

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
index ae692f461982..9f2171f0adf8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3520,6 +3520,7 @@
 #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
+#define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
 
 #define DISP_ARB_CTL	_MMIO(0x45000)
 #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
@@ -4521,6 +4522,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
 #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
 #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
+#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
 	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
-- 
2.43.2

