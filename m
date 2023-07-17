Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ABB756021
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 12:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D2710E224;
	Mon, 17 Jul 2023 10:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A2510E225
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 10:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689588683; x=1721124683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S0n1sHzIdQv2qGqGdBG3sFBMAM9RX1cX+v2BnjgAmXI=;
 b=EgXHksG6Yj3mnRFezTmCYRqz5CyWPK06r6fYcDjvHyWBjywCmuE8ktK1
 UfecidsKdGBSfV+gZ2mFBLkdPnJjdH8oWYa+j1QjEZRYTPNJkWf7V47id
 ihWP7RDhWQ6zcxiR+FuSIi9HQsswOUn8SxQOZWTl/jcmb8RssweBn6HsV
 whkHb+N7MEjpRnApidyaOzEbrKGqcMnzglAdz4JRJ1dGhYlJ6zBn938Mw
 aBpXsToijzy9ucRx/0u0rt8DRo+CzvxCLqFaRf148j9Vq/Ty4a4vzdEKS
 Oqqhz12ona4waH7Bm9oXCZD5H2MYjhAJf73vd51AU1zvqyU2mDti3oMXG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="369445967"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="369445967"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:11:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="836832465"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="836832465"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2023 03:11:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 15:39:26 +0530
Message-Id: <20230717100931.2989980-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230717100931.2989980-1-suraj.kandpal@intel.com>
References: <20230717100931.2989980-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/7] drm/i915/vdsc: Add a check for dsc split
 cases
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

In intel_vdsc_get_config we only read the primary dsc engine register
and not take into account if the other dsc engine is in use and if
both registers have the same value or not this patche fixes that by
adding a check.

--v3
-Remove superfluos new line [Jani]
-Fix register naming [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 530f3c08a172..9196329d998d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -939,7 +939,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
-	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0;
+	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0 = 0, pps_temp1 = 1;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -965,11 +965,23 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	/* PPS0 & PPS1 */
 	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
 		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
+		if (crtc_state->dsc.dsc_split) {
+			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
+			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
+		}
 	} else {
 		pps0 = intel_de_read(dev_priv,
 				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
 		pps1 = intel_de_read(dev_priv,
 				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
+		if (crtc_state->dsc.dsc_split) {
+			pps_temp0 = intel_de_read(dev_priv,
+						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
+			pps_temp1 = intel_de_read(dev_priv,
+						  ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
+			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
+			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
+		}
 	}
 
 	vdsc_cfg->bits_per_pixel = pps1;
-- 
2.25.1

