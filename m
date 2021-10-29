Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B399C43F70D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 08:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5546E072;
	Fri, 29 Oct 2021 06:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D0FA6E9F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 06:15:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230458925"
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="230458925"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 23:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="448264876"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 23:15:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: swati2.sharma@intel.com,
	uma.shankar@intel.com
Date: Fri, 29 Oct 2021 11:31:54 +0530
Message-Id: <20211029060154.110038-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211029060154.110038-1-ankit.k.nautiyal@intel.com>
References: <20211029060154.110038-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: For PCON TMDS mode set only
 the relavant bits in config DPCD
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

Currently we reset the whole PCON linkConfig DPCD to set the TMDS mode.
This also resets the Source control bit and HDMI link enable bit and
goes to autonomous mode of operation, which is seen to spoil the PCONs
internal state.

This patch avoids resetting the PCON link config register and sets only
TMDS mode bit, Source control bit in the configuration DPCD.
It then enables the HDMI Link Enable bit.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f5fd106e555c..3df35079580a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2287,6 +2287,29 @@ static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
 	return false;
 }
 
+static
+int intel_dp_pcon_set_tmds_mode(struct intel_dp *intel_dp)
+{
+	int ret;
+	u8 buf = 0;
+
+	/* Set PCON source control mode and TMDS */
+	buf |= DP_PCON_ENABLE_SOURCE_CTL_MODE;
+	buf &= ~DP_PCON_ENABLE_MAX_FRL_BW;
+
+	ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_PCON_HDMI_LINK_CONFIG_1, buf);
+	if (ret < 0)
+		return ret;
+
+	/* Set HDMI LINK ENABLE */
+	buf |= DP_PCON_ENABLE_HDMI_LINK;
+	ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_PCON_HDMI_LINK_CONFIG_1, buf);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
 void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -2305,7 +2328,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 		int ret, mode;
 
 		drm_dbg(&dev_priv->drm, "Couldn't set FRL mode, continuing with TMDS mode\n");
-		ret = drm_dp_pcon_reset_frl_config(&intel_dp->aux);
+		ret = intel_dp_pcon_set_tmds_mode(intel_dp);
 		mode = drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, NULL);
 
 		if (ret < 0 || mode != DP_PCON_HDMI_MODE_TMDS)
-- 
2.25.1

