Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 421BB756024
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 12:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD72510E227;
	Mon, 17 Jul 2023 10:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983EE10E227
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689588687; x=1721124687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TR47ItRedyL1IN0QQub5nIEpTDeIubFbYG0JipshdWM=;
 b=PcBl4ro8VPIHMu1vDsJ4FwvxN0khu6IpohG0eUdC+JJowOV7X616zsSp
 P9j3+ADnlgFCejuFgjGK/GbeVJxpNancQPH+bfnHS+1qMTl41rCHPviob
 Epx17LmLyqQq1nffaVl35E60iG2bony8TjlOs8onoAcSbCin/nyUd+HgY
 b3r80zZcw5PwUFbWy78GVucIi6yK3EXowoJSym09nnWj900H6OZCe8znb
 gqOV4+rVvTWLUDTbO5zQYbkNW8TNqMLz7T71GLoymF4hj9/tZ2vH27b9b
 QNiJd7R9ZzyGN3NIZmaHL4ziFEhqR0YuqfYd1OaZU5NHbuQG9J+MtpNXQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="369445983"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="369445983"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:11:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="836832476"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="836832476"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2023 03:11:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 15:39:28 +0530
Message-Id: <20230717100931.2989980-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230717100931.2989980-1-suraj.kandpal@intel.com>
References: <20230717100931.2989980-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/7] drm/i915/vdsc: Use MACRO to cleanup
 intel_dsc_get_pps_reg
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

Use a Macro to clean up intel_dsc_get_pps_reg so that we don't have
to replicate so many if/else blocks.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 124 ++++++----------------
 1 file changed, 32 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 6d319f351a12..ed8fda431226 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -313,131 +313,71 @@ static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
 
 	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
 
+#define PRE_MTL_GET_DSC_REGISTER(pps, is_pipe_dsc, pipe) do { \
+	if (is_pipe_dsc) { \
+		*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_##pps(pipe); \
+		*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_##pps(pipe); \
+	} else { \
+		*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_##pps; \
+		*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_##pps; \
+	} \
+} while (0)
+
+#define MTL_GET_DSC_REGISTER(pps, pipe) do { \
+		*dsc_reg0 = MTL_DSC0_PICTURE_PARAMETER_SET_##pps(pipe); \
+		*dsc_reg1 = MTL_DSC1_PICTURE_PARAMETER_SET_##pps(pipe); \
+} while (0)
+
 	switch (pps) {
 	case 0:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_0;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_0;
-		}
+		PRE_MTL_GET_DSC_REGISTER(0, pipe_dsc, pipe);
 		break;
 	case 1:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_1;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_1;
-		}
+		PRE_MTL_GET_DSC_REGISTER(1, pipe_dsc, pipe);
 		break;
 	case 2:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_2;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_2;
-		}
+		PRE_MTL_GET_DSC_REGISTER(2, pipe_dsc, pipe);
 		break;
 	case 3:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_3;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_3;
-		}
+		PRE_MTL_GET_DSC_REGISTER(3, pipe_dsc, pipe);
 		break;
 	case 4:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_4;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_4;
-		}
+		PRE_MTL_GET_DSC_REGISTER(4, pipe_dsc, pipe);
 		break;
 	case 5:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_5;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_5;
-		}
+		PRE_MTL_GET_DSC_REGISTER(5, pipe_dsc, pipe);
 		break;
 	case 6:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_6;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_6;
-		}
+		PRE_MTL_GET_DSC_REGISTER(6, pipe_dsc, pipe);
 		break;
 	case 7:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_7;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_7;
-		}
+		PRE_MTL_GET_DSC_REGISTER(7, pipe_dsc, pipe);
 		break;
 	case 8:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_8;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_8;
-		}
+		PRE_MTL_GET_DSC_REGISTER(8, pipe_dsc, pipe);
 		break;
 	case 9:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_9;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_9;
-		}
+		PRE_MTL_GET_DSC_REGISTER(9, pipe_dsc, pipe);
 		break;
 	case 10:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_10;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_10;
-		}
+		PRE_MTL_GET_DSC_REGISTER(10, pipe_dsc, pipe);
 		break;
 	case 16:
-		if (pipe_dsc) {
-			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe);
-			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe);
-		} else {
-			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_16;
-			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_16;
-		}
+		PRE_MTL_GET_DSC_REGISTER(16, pipe_dsc, pipe);
 		break;
-	/*
-	 * Since PPS_17 and PPS_18 were introduced from MTL dsc check
-	 * need not be done
-	 */
 	case 17:
-		*dsc_reg0 = MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe);
-		*dsc_reg1 = MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe);
+		MTL_GET_DSC_REGISTER(17, pipe);
 		break;
 	case 18:
-		*dsc_reg0 = MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe);
-		*dsc_reg1 = MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe);
+		MTL_GET_DSC_REGISTER(18, pipe);
 		break;
 	default:
 		MISSING_CASE(pps);
 		break;
 	}
+
+#undef PRE_MTL_GET_DSC_REGISTER
+#undef MTL_GET_DSC_REGISTER
 }
 
 static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
-- 
2.25.1

