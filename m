Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F44A583656
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3C510E60E;
	Thu, 28 Jul 2022 01:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED4EA10E6B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uld+C7Mttz5MuhRIWxQl8WwFQqhJGqkaaXDBYP5tmGs=;
 b=cCwKMGphJ0ou1TysGX78DS6BCYHc5GeOgIWvG9qhnX1D+XkImOI+ci1K
 2UwRL2KpbNFEpgE8fA3nyQvNhlF17wbXsmE504+wLj7cWILOgGMjdZjC4
 7caBsSGcg7uGw5UPPTh1LeHOM+leRB5PqQwef58+oQ2Rbg7YD7SNS677b
 yykK7Toolc+Hpn/cB4OA3ITVfeed3Xs2Y8S2NxSiiQXO8GD9UY3osbR4u
 XEOUM7hUroUrmw3yTTdolxCZ7lQ3UHVD5gbcUkhsNXgDfamZ+FoESI2eG
 Sr4/NWBO7qTpmVohD5mBv/afXCZjS2aBeWhQl+U1WHQHI2a3t8YUX4Pzr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693659"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693659"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457004"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:08 -0700
Message-Id: <20220728013420.3750388-12-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/23] drm/i915/mtl: Add DP AUX support on TypeC
 ports
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

From: Imre Deak <imre.deak@intel.com>

On MTL TypeC ports the AUX_CH_CTL and AUX_CH_DATA addresses have
changed wrt. previous platforms, adjust the code accordingly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 45 ++++++++++++++++++++-
 1 file changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 40c4bdd9cb26..10616e18dc18 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -637,6 +637,46 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
 	}
 }
 
+static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
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
+		return XELPDP_DP_AUX_CH_CTL(aux_ch);
+	default:
+		MISSING_CASE(aux_ch);
+		return XELPDP_DP_AUX_CH_CTL(AUX_CH_A);
+	}
+}
+
+static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
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
+		return XELPDP_DP_AUX_CH_DATA(aux_ch, index);
+	default:
+		MISSING_CASE(aux_ch);
+		return XELPDP_DP_AUX_CH_DATA(AUX_CH_A, index);
+	}
+}
+
 void intel_dp_aux_fini(struct intel_dp *intel_dp)
 {
 	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
@@ -652,7 +692,10 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	struct intel_encoder *encoder = &dig_port->base;
 	enum aux_ch aux_ch = dig_port->aux_ch;
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
+		intel_dp->aux_ch_data_reg = xelpdp_aux_data_reg;
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		intel_dp->aux_ch_ctl_reg = tgl_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = tgl_aux_data_reg;
 	} else if (DISPLAY_VER(dev_priv) >= 9) {
-- 
2.25.1

