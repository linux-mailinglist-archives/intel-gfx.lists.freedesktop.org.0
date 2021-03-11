Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F212B338088
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0C196EEBD;
	Thu, 11 Mar 2021 22:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886926EEA1
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:49 +0000 (UTC)
IronPort-SDR: 2Y+OJHsSf6ruCMluTONr3ccBoL5llZP14yQmiX00VlbWjKZXR/iB1sHMpUm/W09yN3Lln3zJjs
 NTiks0uCwhww==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250116431"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="250116431"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
IronPort-SDR: t98j1iu5kOA7H6OhjV9WswIWj60wU+y+s/w4DrVIoy9D9p6yWm6Uoe550NgZyUK0gnyuG1zTOs
 pAtDAXpEBV1A==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852705"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:35:56 -0800
Message-Id: <20210311223632.3191939-21-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/56] drm/i915: Get slice height before
 computing rc params
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

We need slice height to calculate few RC parameters
hence assign slice height first.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 792797cda914..5dc1b49cbb67 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1270,10 +1270,6 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	 */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 
-	ret = intel_dsc_compute_params(encoder, crtc_state);
-	if (ret)
-		return ret;
-
 	/*
 	 * Slice Height of 8 works for all currently available panels. So start
 	 * with that if pic_height is an integral multiple of 8. Eventually add
@@ -1286,6 +1282,10 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	else
 		vdsc_cfg->slice_height = 2;
 
+	ret = intel_dsc_compute_params(encoder, crtc_state);
+	if (ret)
+		return ret;
+
 	vdsc_cfg->dsc_version_major =
 		(intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
 		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
