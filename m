Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00499376E96
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4815C6E83D;
	Sat,  8 May 2021 02:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BC96E837
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:32 +0000 (UTC)
IronPort-SDR: RV+HXE4E1y+q+2ET93LbJhbqwL+ScCB19nT+ns5TcXXwYJMd6bXw/4WIBcQ4UnYcYVkHdOrX9Q
 T1zyRseqa+tg==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="198933640"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="198933640"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:29 -0700
IronPort-SDR: LRAeCz1rLDa43TOn83MhSIWOlom+cyfoZHW5N7bqd/b9OR4rHfhe6iQye4IBSvZp2KROvWmuhJ
 zSPaJEILygLA==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910062"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:27:43 -0700
Message-Id: <20210508022820.780227-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/48] drm/i915: Get slice height before
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
index 8ccb3c3888f7..b9b8a0b9889a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1154,10 +1154,6 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	 */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 
-	ret = intel_dsc_compute_params(encoder, crtc_state);
-	if (ret)
-		return ret;
-
 	/*
 	 * Slice Height of 8 works for all currently available panels. So start
 	 * with that if pic_height is an integral multiple of 8. Eventually add
@@ -1170,6 +1166,10 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
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
