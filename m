Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 315058A8035
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 11:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD1710E970;
	Wed, 17 Apr 2024 09:58:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WMWbtvk6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F7410E970
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713347896; x=1744883896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aobiEIvc+dYvX8ae3d3P2bSv+P2W/lX5FvV/pVporkE=;
 b=WMWbtvk6XMImJvkbduZKDt8TTA38mvD5mEcq2mSDuubBYHtla+n36s6r
 7slHbWHwOHw0iIFPnBrG2uUp0Ma7t05eIjglFlUNPEB64MwolCKM5JqvS
 swpEdFtzJ1cT8mfHyS9YHSxjeaJRd2HkvL+E5Ee+kgBoB4V97KeWDo6bg
 OUz4X44NBgREw8xWD2MsjkCUkV3Zjata4Du3oV1kME2rtsjrjU7kuzPLt
 OPEtvEN5t6P7Wm7bLFBv7ZblGKpMbVDGAovYm8whlXSgOFOkvt7Wu34zI
 nuhPidlV7aO5b9XfE4Hi6+gTWEjWlZ3SKir4sz/IYzFYAe9len68UJ7hx w==;
X-CSE-ConnectionGUID: Q8jcwxEfQF2NoEJnb1wseg==
X-CSE-MsgGUID: Jyxy5+4MS+ixRIJbSyWKWA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="34216062"
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="34216062"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 02:58:16 -0700
X-CSE-ConnectionGUID: oIN7jAZBR+WveoZ3yKZZzg==
X-CSE-MsgGUID: VYkB76DJSjmrN3QJuNBaxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="27214079"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 17 Apr 2024 02:58:14 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI
Date: Wed, 17 Apr 2024 15:25:37 +0530
Message-ID: <20240417095537.632977-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240416080917.625155-2-suraj.kandpal@intel.com>
References: <20240416080917.625155-2-suraj.kandpal@intel.com>
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

Bspec: 49273
Bspec: 69964
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h           |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index d5ed4c7dfbc0..78b20f23a2e1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,6 +30,21 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
+/* WA: 16022217614 */
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
@@ -2005,6 +2020,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
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

