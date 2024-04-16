Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D358A61C7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 05:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3541129C3;
	Tue, 16 Apr 2024 03:45:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g7X3NXXI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDE2F1129C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 03:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713239114; x=1744775114;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5orGI8dM/L+Fl1PQ1lOq86JrkYHy2eWcCRi+6B+krf4=;
 b=g7X3NXXI5QziPgcs05iOVeCQ00+l74cOCS5CpIUtiTsAJgyzvGBHa8g5
 A6sFWV67wKB4f2vjByvv/+dWExhx2Em6jHajzM8fE/m5knopwk4h+qSZA
 iELkc69sDi9gg1Yxa5NmviKS8uOt24nAUSU3naua5t5iEy0mki/G6gcAs
 XOXZLxty4Z2WWKW02ZZv3nGYVmtW25fHTIHokSBsXGVW4yT1CZG2HDN1Z
 GfcjoVv4xNrltCQ+RtxgNpt0s8fQWCE/+tb2zaarBA7pVNS1aicHrlRZn
 YbCVMl9ptGWH3pDymgWH5TRKPH7cReD9TCDNa9iC7ZJ1YQGitRzBaCVbU g==;
X-CSE-ConnectionGUID: JLIRNQ+uQuOThh6Wpy+QBw==
X-CSE-MsgGUID: /fhKjJUGQWapwryp3BPVUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="19259679"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="19259679"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 20:45:13 -0700
X-CSE-ConnectionGUID: skxFpXXnTraJs9MPVad+gQ==
X-CSE-MsgGUID: Txs5FIN3T/yVqbS0X7gTAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="26915381"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa005.jf.intel.com with ESMTP; 15 Apr 2024 20:45:11 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI
Date: Tue, 16 Apr 2024 09:09:19 +0530
Message-ID: <20240416033918.567386-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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
on HDMI TMDS operation for DISPLAY_VEY >= 14.
WA: 16022217614
Bspec: 49273
Bspec: 69964

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h           |  1 +
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index d5ed4c7dfbc0..15af6e184ef8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,6 +30,20 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
+static void
+intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
+				      struct intel_hdcp *hdcp)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	if (encoder->type != INTEL_OUTPUT_HDMI)
+		return;
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
+			     TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 1);
+}
+
 static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 			      struct intel_connector *connector)
 {
@@ -2005,6 +2019,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
 		    connector->base.base.id, connector->base.name,
 		    hdcp->content_type);
 
+	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
+
 	ret = hdcp2_authenticate_and_encrypt(state, connector);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3f34efcd7d6c..fbf4623cd536 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5630,6 +5630,7 @@ enum skl_power_gate {
 #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
 #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
 #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
+#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
 #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
 	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
-- 
2.43.2

