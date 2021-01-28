Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C24307EA5
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:24:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7D86E9D8;
	Thu, 28 Jan 2021 19:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC84A6E9E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:39 +0000 (UTC)
IronPort-SDR: W3I5SwHq+GjxmCWKnZ3jwlL/J+b9Sa8rAQfz/JanWZUZoku0jaAOHHrVR/l2mtGcc5kFcMwEt5
 4U75mN+a5GvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="244384042"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="244384042"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:38 -0800
IronPort-SDR: bv7JHhL+Adc4LpIIwBYiIljQTPFjiKQVIGqDm+BWRRnnmd9rp32WS6z3gr/D7aTOlBmNWo9cwZ
 eNWMy/RBDD0g==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110190"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:24:10 -0800
Message-Id: <20210128192413.1715802-16-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/18] drm/i915/display13: Get slice height
 before computing rc params
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
index 1feafd038db1..d8ae4bbf0c15 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1269,10 +1269,6 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	 */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 
-	ret = intel_dsc_compute_params(encoder, crtc_state);
-	if (ret)
-		return ret;
-
 	/*
 	 * Slice Height of 8 works for all currently available panels. So start
 	 * with that if pic_height is an integral multiple of 8. Eventually add
@@ -1285,6 +1281,10 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
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
