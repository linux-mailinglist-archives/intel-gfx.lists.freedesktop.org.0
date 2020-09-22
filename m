Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A08327426E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 14:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959ED6E13F;
	Tue, 22 Sep 2020 12:51:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8822C6E13F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 12:51:20 +0000 (UTC)
IronPort-SDR: CIWzDI+nIjmxSWxPe8mKRND3uVNvobod9Mr4Q3OJS2Hl2M8vpTt6XraUoIjuemcjuM1AtAJL2g
 FCVgkVDGM5Jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="148342794"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="148342794"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:19 -0700
IronPort-SDR: Ns99LzN6B68kqFxOGDzC/e/DajEgAWkBSGk3dVr7vrI9BAoGlQhxZpoxV1gJ+Xxyex6LUU9lvj
 A472HOjoCZmA==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="309485563"
Received: from ideak-desk.fi.intel.com (HELO localhost) ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:19 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 15:51:00 +0300
Message-Id: <20200922125106.30540-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922125106.30540-1-imre.deak@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Fix DP link training pattern mask
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

An LTTPR can be trained with training pattern 4 even if the DPCD
revision is < 1.4, but drm_dp_training_pattern_mask() would change
pattern 4 to pattern 3 on those DPCD revisions.

Since intel_dp_training_pattern() makes already sure that the proper
training pattern is used, all that needs to be masked out is the
scrambling disable flag, which is or'd to the mask later based on the
training pattern.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c              |  3 +--
 drivers/gpu/drm/i915/display/intel_dp.c               | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_dp_link_training.c |  2 +-
 3 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4d06178cd76c..946a3b6f2d10 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4158,13 +4158,12 @@ static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
 				     u8 dp_train_pat)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u8 train_pat_mask = drm_dp_training_pattern_mask(intel_dp->dpcd);
 	u32 temp;
 
 	temp = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 
 	temp &= ~DP_TP_CTL_LINK_TRAIN_MASK;
-	switch (dp_train_pat & train_pat_mask) {
+	switch (dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) {
 	case DP_TRAINING_PATTERN_DISABLE:
 		temp |= DP_TP_CTL_LINK_TRAIN_NORMAL;
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bf1e9cf1c0f3..2a4a9c0e7427 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3778,7 +3778,7 @@ cpt_set_link_train(struct intel_dp *intel_dp,
 
 	*DP &= ~DP_LINK_TRAIN_MASK_CPT;
 
-	switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
+	switch (dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) {
 	case DP_TRAINING_PATTERN_DISABLE:
 		*DP |= DP_LINK_TRAIN_OFF_CPT;
 		break;
@@ -3808,7 +3808,7 @@ g4x_set_link_train(struct intel_dp *intel_dp,
 
 	*DP &= ~DP_LINK_TRAIN_MASK;
 
-	switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
+	switch (dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) {
 	case DP_TRAINING_PATTERN_DISABLE:
 		*DP |= DP_LINK_TRAIN_OFF;
 		break;
@@ -4498,12 +4498,12 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 				       u8 dp_train_pat)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u8 train_pat_mask = drm_dp_training_pattern_mask(intel_dp->dpcd);
 
-	if (dp_train_pat & train_pat_mask)
+	if ((dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) !=
+	    DP_TRAINING_PATTERN_DISABLE)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Using DP training pattern TPS%d\n",
-			    dp_train_pat & train_pat_mask);
+			    dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE);
 
 	intel_dp->set_link_train(intel_dp, dp_train_pat);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f2c8b56be9ea..f8b53c5b5777 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -96,7 +96,7 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
 	intel_dp_program_link_training_pattern(intel_dp, dp_train_pat);
 
 	buf[0] = dp_train_pat;
-	if ((dp_train_pat & DP_TRAINING_PATTERN_MASK) ==
+	if ((dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) ==
 	    DP_TRAINING_PATTERN_DISABLE) {
 		/* don't write DP_TRAINING_LANEx_SET on disable */
 		len = 1;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
