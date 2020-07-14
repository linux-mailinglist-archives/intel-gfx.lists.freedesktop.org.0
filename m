Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3890521F62F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 17:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A535589F75;
	Tue, 14 Jul 2020 15:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7778B89F75
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 15:31:49 +0000 (UTC)
IronPort-SDR: mvHp5S0a/M0aj25eADSmoDJZxps3FcFPRbukFdFfV4+lqcKP0ufWd3rbBDpQeEGv0VsmrKuEEO
 9p2tMrMobOFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="148936990"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="148936990"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 08:31:48 -0700
IronPort-SDR: jDnOUO4OQHZzzAPwOaISlnearPwcRAVWuOCY/1Hd5P5SwFkiilhgIebPUlaqEwU8EQPsRPJ3/H
 gz7LcnOV4qqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="281784251"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga003.jf.intel.com with ESMTP; 14 Jul 2020 08:31:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 18:31:40 +0300
Message-Id: <20200714153141.10280-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ddi: Don't frob the DP link
 scramble disabling flag
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

According to BSpec this flag should not be changed while the DDI
function is enabled. On BDW+ the DP_TP_CTL register spec also states it
explicitly that the HW takes care of enabling/disabling the scrambling
for training patterns (and it must stay enabled for normal pixel
output). Assume that this HW automatic handling of scrambling is also
true for HSW.

BSpec: 8013, 7557, 50484

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2c484b55bcdf..c467f18d5e1b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4037,8 +4037,7 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp)
 			intel_wait_ddi_buf_idle(dev_priv, port);
 	}
 
-	dp_tp_ctl = DP_TP_CTL_ENABLE |
-		    DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_SCRAMBLE_DISABLE;
+	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
 	if (intel_dp->link_mst)
 		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
 	else {
@@ -4066,11 +4065,6 @@ static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
 
 	temp = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 
-	if (dp_train_pat & DP_LINK_SCRAMBLING_DISABLE)
-		temp |= DP_TP_CTL_SCRAMBLE_DISABLE;
-	else
-		temp &= ~DP_TP_CTL_SCRAMBLE_DISABLE;
-
 	temp &= ~DP_TP_CTL_LINK_TRAIN_MASK;
 	switch (dp_train_pat & train_pat_mask) {
 	case DP_TRAINING_PATTERN_DISABLE:
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
