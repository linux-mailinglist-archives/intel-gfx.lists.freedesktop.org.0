Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A8024E5E8
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Aug 2020 08:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D2F6E056;
	Sat, 22 Aug 2020 06:48:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354716E056
 for <Intel-gfx@lists.freedesktop.org>; Sat, 22 Aug 2020 06:48:39 +0000 (UTC)
IronPort-SDR: fs943qzGaaBwlGYoc0FJ6qndQZMpqLf8PBLJqw1sPrQ+2vWTt92rERArCmqTsNZi0wBIFY9bcZ
 zhVunzahbP7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9720"; a="154951523"
X-IronPort-AV: E=Sophos;i="5.76,339,1592895600"; d="scan'208";a="154951523"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 23:48:39 -0700
IronPort-SDR: UapnSWDVrk+hId111r4g+bC0QlEJzAdmA3j5tbaVLSk8+pL8VPLSEnSDtt+JADPt1gmAVukHoJ
 3v5SYdFuWjhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,339,1592895600"; d="scan'208";a="294034435"
Received: from helenaba-mobl.amr.corp.intel.com (HELO
 kialmah1-mobl1.amr.corp.intel.com) ([10.212.67.28])
 by orsmga003.jf.intel.com with ESMTP; 21 Aug 2020 23:48:38 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 21 Aug 2020 23:48:37 -0700
Message-Id: <20200822064837.3276-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp: DPTX writes Swing/Pre-emphs(DPCD
 0x103-0x106) requested during PHY Layer testing.
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

Source needs to write DPCD 103-106 after receiving a PHY request to change
swing/pre-emphasis after reading DPCD 206-207. This is especially needed if
there is a retimer between source and sink and the retimer implements AUX_CH
interception scheme to manage DP PHY settings (e.g. adjusting Swing/Pre-emphasis
equalization level) for DP output channel . If the source doesn't write to
DPCD 103-106, the retimer may not output the requested swing/pre-emphasis and
eventually we fail compliance.

Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 79c27f91f42c..5044201ca742 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5503,6 +5503,9 @@ void intel_dp_process_phy_request(struct intel_dp *intel_dp)
 
 	intel_dp_autotest_phy_ddi_enable(intel_dp, data->num_lanes);
 
+	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
+				intel_dp->train_set, intel_dp->lane_count);
+
 	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
 				    link_status[DP_DPCD_REV]);
 }
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
