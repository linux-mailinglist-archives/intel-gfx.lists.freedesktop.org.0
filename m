Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5403274272
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 14:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4544D6E22D;
	Tue, 22 Sep 2020 12:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69D86E148
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 12:51:29 +0000 (UTC)
IronPort-SDR: Ts8mSdK15L/NYpG2BsmKR4KboBW8MlNyiyZmc1zmts4Hlru1Go6jJxThEgGP53TMNKp7UsTtOP
 ss2kfX/XVN9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="148342810"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="148342810"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:29 -0700
IronPort-SDR: e61T6XZ0kRu8JJ2ALgOjrv0Y01o/RxGBO5DYe+LnIZeTb5kaAbGbddHH7TQ51WNXevNWearjxJ
 2a7pl9A4whzA==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="309485623"
Received: from ideak-desk.fi.intel.com (HELO localhost) ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 15:51:03 +0300
Message-Id: <20200922125106.30540-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922125106.30540-1-imre.deak@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Factor out a helper to disable
 the DPCD training pattern
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To prepare for a follow-up LTTPR change factor out a helper to disable
the training pattern in DPCD. We'll need to do this for each LTTPR
(without programming the port to output the idle pattern) when training
in LTTPR non-transparent mode.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 28 +++++++++++--------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 0c3809891bd2..6994a32244dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -102,30 +102,34 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 		intel_dp->train_set[lane] = v | p;
 }
 
+static bool intel_dp_disable_dpcd_training_pattern(struct intel_dp *intel_dp)
+{
+	u8 val = DP_TRAINING_PATTERN_DISABLE;
+
+	return drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET, &val, 1) == 1;
+}
+
 static bool
 intel_dp_set_link_train(struct intel_dp *intel_dp,
 			u8 dp_train_pat)
 {
 	u8 buf[sizeof(intel_dp->train_set) + 1];
-	int ret, len;
+	int len;
 
 	intel_dp_program_link_training_pattern(intel_dp, dp_train_pat);
 
-	buf[0] = dp_train_pat;
 	if ((dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) ==
-	    DP_TRAINING_PATTERN_DISABLE) {
+	    DP_TRAINING_PATTERN_DISABLE)
 		/* don't write DP_TRAINING_LANEx_SET on disable */
-		len = 1;
-	} else {
-		/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
-		memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
-		len = intel_dp->lane_count + 1;
-	}
+		return intel_dp_disable_dpcd_training_pattern(intel_dp);
 
-	ret = drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
-				buf, len);
+	buf[0] = dp_train_pat;
+	/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
+	memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
+	len = intel_dp->lane_count + 1;
 
-	return ret == len;
+	return drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
+				 buf, len) == len;
 }
 
 static bool
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
