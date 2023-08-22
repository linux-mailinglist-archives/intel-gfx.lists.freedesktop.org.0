Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EAE7839AD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 08:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9654710E2DE;
	Tue, 22 Aug 2023 06:04:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B897D10E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 06:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692684261; x=1724220261;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qZ4CPixKNxkPWsbLRXAHY2/PfJP8lHFCyEM7Z5+GODI=;
 b=SKzdgDsZIqTxCnIqauby8EPTnXJT6jMroqETJNwogMntlVijqwPj+1yT
 mXo0UYyhycEbAL8/C9Tgr8wk2KnCLNryoG+IUAM63fTMKTrFvfGfNL3EQ
 ZVeCZO/2AtziStHg1bPgdUSjq7GW3pxKFikm5anuogkdyayaKrNMvTz0D
 XlOFVqvLzoto2DHl8/W86CdfjerW1lOBLK7pXHOOxNLvM/zgWhh6lRydP
 66/5ePwM5+4mp/ukN+/1QYhS0EB3se2RLk5wGmU+bicDOems+d/pmL4Mo
 QvisxSyiPaiOWe2Bd6K8GxA0ZGt5i2508CMcsUvRSpIQrMsQx1ytHRaMp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="354119327"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="354119327"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 23:04:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="806163043"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="806163043"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 21 Aug 2023 23:04:20 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 11:32:35 +0530
Message-Id: <20230822060240.413101-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230822060240.413101-1-suraj.kandpal@intel.com>
References: <20230822060240.413101-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 2/8] drm/i915/vdsc: Add a check for dsc split
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

--v5
-pps_temp0/pps_temp1 can be assigned where they are used [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index e4c395b4dc46..94af579b63d3 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1002,7 +1002,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
-	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0;
+	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -1028,11 +1028,23 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
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

