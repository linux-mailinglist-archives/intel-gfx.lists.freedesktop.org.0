Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B8962D356
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 07:15:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEABC10E08F;
	Thu, 17 Nov 2022 06:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC5810E07C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 06:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668665721; x=1700201721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0xE4WUJPElnh5urcxMf8BnAY4F0J+2fvM0jtVoxPYDM=;
 b=HabX6xNEObHgkkhiLe3Cwf6/qykoiuxvz41PgQbSCZQQyIizssqQVNMF
 0FkVGSGghlbvMf/C+ZRLs0OXvO85+I7kwU7yJ6LnWEG+ZdLlqc41iKCJm
 cfugYENyO/NP90aOZaJJtjRh8qx/Pq5anyi05ruxwIl3ZnNL66otUrfEm
 HG/QhLq3d/2PfDhnNlH3Q/0I/+bHzFPGrZun8qvsYL1b9/3YzktTsPq4P
 f6eRr4e9AN75NUajUmc3hXjuQo9UWxmlqR3BpqnFV/96UrPPutxHSZTKd
 WiG6xA3NiS8ztFKVSJmSn8jX836jlSIsCt7vrxlI9JlvZt1eZzZRw67Dm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312782371"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312782371"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 22:15:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="708480559"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="708480559"
Received: from barkhagu-mobl1.amr.corp.intel.com (HELO
 kialmah1-mobl1.amr.corp.intel.com) ([10.212.136.249])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 22:15:17 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 22:15:06 -0800
Message-Id: <20221117061506.296392-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Don't disable
 DDI/Transcoder when setting phy test pattern
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bspecs has updated recently to remove the restriction to disable
DDI/Transcoder before setting PHY test pattern. This update is to
address PHY compliance test failures observed on a port with LTTPR.
The issue is that when Transc. is disabled, the main link signals fed
to LTTPR will be dropped invalidating link training, which will affect
the quality of the phy test pattern when the transcoder is enabled again.

v2: Update commit message (Clint)
v3: Add missing Signed-off in v2

Bspec: 50482
Cc: Imre Deak <imre.deak@intel.com>
Cc: Clint Taylor <clinton.a.taylor@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Reviewed-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 59 -------------------------
 1 file changed, 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 914161d7d122..16cf961b4d1a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3679,61 +3679,6 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
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
@@ -3752,14 +3697,10 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
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

