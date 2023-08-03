Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D45B76E957
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 15:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7BA10E60A;
	Thu,  3 Aug 2023 13:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F65E10E60A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 13:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691067926; x=1722603926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W9wOTvhffQHmzvKms56lb482tLVi6puzS+E0Pb4W2Tw=;
 b=WW2qrnoWHRYGZS5s+joNQzW7x9+OghPURL964TRtb7jl/8wyaAVqnlPo
 qZcczZFOYei7LnlU3usLJdZsxUuEEZSzyhm97HPzRO86+oesYC8ab9rRn
 atpigX7cEjg//27x970zxHgT9wJNj1aSJJLNIgshAkDWQf0Q43cH5N2bn
 zF0hhG7/N3uNPOwVy2b5YFSqZ2ig4BlFBNf5vZ1BzmS6ahn5bPA9HcR4n
 XJCMIQcCxv1fXPP4eGxdeYyw5NjB9JIiKCn0A0TSdlN+BD2EuURsBgYe8
 nuPxbl6J3/93aRg34WOoyGawdoS1gf0N9gGYIZ3NANShu+0vkOb/2Oa3r g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="359906479"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="359906479"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 06:05:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="843585787"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="843585787"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2023 06:05:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 18:33:32 +0530
Message-Id: <20230803130337.3784597-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230803130337.3784597-1-suraj.kandpal@intel.com>
References: <20230803130337.3784597-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 2/8] drm/i915/vdsc: Add a check for dsc split
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
index 9d76c2756784..4437ade8fa87 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -996,7 +996,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
-	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0;
+	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -1022,11 +1022,23 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
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

