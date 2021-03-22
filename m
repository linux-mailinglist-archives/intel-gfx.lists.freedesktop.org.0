Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D404F343A4A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 08:10:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB8B389FDB;
	Mon, 22 Mar 2021 07:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA59689FDB;
 Mon, 22 Mar 2021 07:10:14 +0000 (UTC)
IronPort-SDR: nxS+6fZ0c0eGHeBYbhPjDilKkUp1MCpe7p/CYHusPStQGX69ipBQKW2BXjE3lIdyNebkZr9oKx
 vcU6oQkmnOYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="210281035"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="210281035"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 00:10:13 -0700
IronPort-SDR: AsOpFcMDBnQz0aobI9nAGl5890owwfOJ+gGtCT9GXfn/AM/tNMrwfVCpUJjNCWpig5HqifLXxT
 6J4XQ+aIU7wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="451635293"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by orsmga001.jf.intel.com with ESMTP; 22 Mar 2021 00:10:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 12:31:00 +0530
Message-Id: <20210322070100.3707-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210309043915.1921-4-ankit.k.nautiyal@intel.com>
References: <20210309043915.1921-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/3] drm/i915/display: Configure HDMI2.1 Pcon
 for FRL only if Src-Ctl mode is available
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the check if source control mode is supported by the
PCON, before starting configuring PCON for FRL training,
as per spec VESA DP2.0-HDMI2.1 PCON Draft-1 Sec-7.

v2: Added spec details for the change. (Uma)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 00a621d583f6..4fdfd4f06933 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2638,8 +2638,13 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	/* Always go for FRL training if supported */
-	if (!intel_dp_is_hdmi_2_1_sink(intel_dp) ||
+	/*
+	 * Always go for FRL training if:
+	 * -PCON supports SRC_CTL_MODE (VESA DP2.0-HDMI2.1 PCON Spec Draft-1 Sec-7)
+	 * -sink is HDMI2.1
+	 */
+	if (!(intel_dp->dpcd[2] & DP_PCON_SOURCE_CTL_MODE) ||
+	    !intel_dp_is_hdmi_2_1_sink(intel_dp) ||
 	    intel_dp->frl.is_trained)
 		return;
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
