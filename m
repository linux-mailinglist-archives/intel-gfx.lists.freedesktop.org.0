Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E46C447A87
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 07:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88A06E40C;
	Mon,  8 Nov 2021 06:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6C06E40C
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 06:37:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="230889842"
X-IronPort-AV: E=Sophos;i="5.87,217,1631602800"; d="scan'208";a="230889842"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2021 22:37:55 -0800
X-IronPort-AV: E=Sophos;i="5.87,217,1631602800"; d="scan'208";a="601308650"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2021 22:37:54 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Nov 2021 11:54:07 +0530
Message-Id: <20211108062407.146056-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211029060154.110038-3-ankit.k.nautiyal@intel.com>
References: <20211029060154.110038-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: For PCON TMDS mode set only
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
the source control bit, with FRL Enable bit set to 0 (TMDS mode) in the
configuration DPCD. It then enables the HDMI Link Enable bit.

v2: Removed the redundant resetting of the bits as the buffer is already
initialized to 0. (Uma)
Updated comments and commit message.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f5fd106e555c..a0ff16bc18f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2287,6 +2287,28 @@ static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
 	return false;
 }
 
+static
+int intel_dp_pcon_set_tmds_mode(struct intel_dp *intel_dp)
+{
+	int ret;
+	u8 buf = 0;
+
+	/* Set PCON source control mode */
+	buf |= DP_PCON_ENABLE_SOURCE_CTL_MODE;
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
@@ -2305,7 +2327,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 		int ret, mode;
 
 		drm_dbg(&dev_priv->drm, "Couldn't set FRL mode, continuing with TMDS mode\n");
-		ret = drm_dp_pcon_reset_frl_config(&intel_dp->aux);
+		ret = intel_dp_pcon_set_tmds_mode(intel_dp);
 		mode = drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, NULL);
 
 		if (ret < 0 || mode != DP_PCON_HDMI_MODE_TMDS)
-- 
2.25.1

