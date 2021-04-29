Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8109636E759
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 10:51:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047226E1B3;
	Thu, 29 Apr 2021 08:51:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3C0A6E1B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 08:51:22 +0000 (UTC)
IronPort-SDR: q7PXaUn7RDR5DUH6dwIQ9gFVemSuqXVfIkc3/kNEJRH4T89YILZ1kyPI7kGeekI84etDPAl/Ji
 d+E0dHwnv2WA==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="260909911"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="260909911"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 01:51:21 -0700
IronPort-SDR: LjveZUk/8LMemLlmvht5mKnBba7nas2FR1IR2VcZtGeJo1aZf1zCV+7BeMe+K6DFPcHAjDBekN
 cDCNRgIo2Qdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="537294061"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by orsmga004.jf.intel.com with ESMTP; 29 Apr 2021 01:51:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:12:42 +0530
Message-Id: <20210429084242.14353-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use correct downstream caps for check
 Src-Ctl mode for PCON
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

Fix the typo in DPCD caps used for checking SRC CTL mode of
HDMI2.1 PCON

Fixes: 04b6603d13be (drm/i915/display: Configure HDMI2.1 Pcon for FRL
only if Src-Ctl mode is available)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dfa7da928ae5..b3e82aa8b4f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2112,7 +2112,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
 	 * -PCON supports SRC_CTL_MODE (VESA DP2.0-HDMI2.1 PCON Spec Draft-1 Sec-7)
 	 * -sink is HDMI2.1
 	 */
-	if (!(intel_dp->dpcd[2] & DP_PCON_SOURCE_CTL_MODE) ||
+	if (!(intel_dp->downstream_ports[2] & DP_PCON_SOURCE_CTL_MODE) ||
 	    !intel_dp_is_hdmi_2_1_sink(intel_dp) ||
 	    intel_dp->frl.is_trained)
 		return;
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
