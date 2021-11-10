Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE40644BC4C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 08:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71AB72BE8;
	Wed, 10 Nov 2021 07:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C3772BE8
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 07:43:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="219824302"
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="219824302"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 23:43:42 -0800
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="491995349"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 23:43:34 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Nov 2021 12:59:47 +0530
Message-Id: <20211110072947.171659-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211110072947.171659-1-ankit.k.nautiyal@intel.com>
References: <20211110072947.171659-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/dp: For PCON TMDS mode set only
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

v3: Rebase

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 020c357348b2..0a424bf69396 100644
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

