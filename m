Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A71CE5BA6E8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 08:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E215010ECBE;
	Fri, 16 Sep 2022 06:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680EB10ECBF
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 06:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663310265; x=1694846265;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JozUHdHlg2S1HY4QdcH+35JXSdvSBpnyQXIpphMhcZ0=;
 b=brlUGUC8MlMT43A9/7AlYyqJLzpR2e3zmJtGie3Cm4cOlqeHnSNOCvSZ
 WFCWWxhveKyaDCUnrSPP95hNZjIx067wR96kqpwk1cw2a3pB6iPDdt7Fl
 iXYGvGRLTlyVsEo1sPuhRy8P/WT0wjPmaOMCH0CzeA/8JhGe2TvrwfTA6
 nP+N+dBcWf8bDAGp3xTecxsVRmyNF7RUeQDBJgIVJaBLrCcGGO2mJLSFw
 thUW1dCgBDwdgQy5lw/DKHa26iqjh+plWgRQVQaw22SHhLubj3QRFRkUH
 dWh/rNbt50PDnI7HWDqsNA1jDcLUU8G8n+0xb+G+ospVDsFYpUs9XuyAz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="325196755"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="325196755"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 23:37:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="759943714"
Received: from mkedalag-mobl.amr.corp.intel.com (HELO kialmah1-mobl1.lan)
 ([10.209.109.86])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 23:37:43 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Sep 2022 23:37:20 -0700
Message-Id: <20220916063720.422321-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Don't disable DDI/Transcoder
 when setting phy test pattern
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
Cc: Or Cochvi <or.cochvi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Spec:50482 updated recently to remove the restriction to disable
DDI/Transcoder before setting PHY test pattern. This update is to
address PHY compliance test failures observed on a port with LTTPR.
The issue is that when Transc. is disabled, the main link signals fed
to LTTPR will be dropped invalidating link training, which will affect
the quality of the phy test pattern when the transcoder is enabled again.

This specs change also exists in Windows driver since very long time
and proved to work in legacy linux phy compliance solution since Gen9.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Or Cochvi <or.cochvi@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 59 -------------------------
 1 file changed, 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c9be61d2348e..2bf323f3f155 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3675,61 +3675,6 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 	}
 }
 
-static void
-intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp,
-				  const struct intel_crtc_state *crtc_state)
-{
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_device *dev = dig_port->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_crtc *crtc = to_intel_crtc(dig_port->base.base.crtc);
-	enum pipe pipe = crtc->pipe;
-	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
-
-	trans_ddi_func_ctl_value = intel_de_read(dev_priv,
-						 TRANS_DDI_FUNC_CTL(pipe));
-	trans_conf_value = intel_de_read(dev_priv, PIPECONF(pipe));
-	dp_tp_ctl_value = intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
-
-	trans_ddi_func_ctl_value &= ~(TRANS_DDI_FUNC_ENABLE |
-				      TGL_TRANS_DDI_PORT_MASK);
-	trans_conf_value &= ~PIPECONF_ENABLE;
-	dp_tp_ctl_value &= ~DP_TP_CTL_ENABLE;
-
-	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
-		       trans_ddi_func_ctl_value);
-	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
-}
-
-static void
-intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp,
-				 const struct intel_crtc_state *crtc_state)
-{
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_device *dev = dig_port->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum port port = dig_port->base.port;
-	struct intel_crtc *crtc = to_intel_crtc(dig_port->base.base.crtc);
-	enum pipe pipe = crtc->pipe;
-	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
-
-	trans_ddi_func_ctl_value = intel_de_read(dev_priv,
-						 TRANS_DDI_FUNC_CTL(pipe));
-	trans_conf_value = intel_de_read(dev_priv, PIPECONF(pipe));
-	dp_tp_ctl_value = intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
-
-	trans_ddi_func_ctl_value |= TRANS_DDI_FUNC_ENABLE |
-				    TGL_TRANS_DDI_SELECT_PORT(port);
-	trans_conf_value |= PIPECONF_ENABLE;
-	dp_tp_ctl_value |= DP_TP_CTL_ENABLE;
-
-	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
-	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
-		       trans_ddi_func_ctl_value);
-}
-
 static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 					 const struct intel_crtc_state *crtc_state)
 {
@@ -3748,14 +3693,10 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
 				  link_status);
 
-	intel_dp_autotest_phy_ddi_disable(intel_dp, crtc_state);
-
 	intel_dp_set_signal_levels(intel_dp, crtc_state, DP_PHY_DPRX);
 
 	intel_dp_phy_pattern_update(intel_dp, crtc_state);
 
-	intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
-
 	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
 			  intel_dp->train_set, crtc_state->lane_count);
 
-- 
2.25.1

