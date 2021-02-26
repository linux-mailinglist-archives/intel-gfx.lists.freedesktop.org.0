Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F3E325EB2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 09:13:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E696EDB5;
	Fri, 26 Feb 2021 08:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AB16EDB5
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Feb 2021 08:13:37 +0000 (UTC)
IronPort-SDR: SjIybw+UENWMZKe6fJI+Ii7aXo1Qq9BGyUzdImQXVooSIgEwpJfb+7u/3C/PnqvoYTMGmo7mr8
 Sg4OpP8C7tNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="165675430"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="165675430"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 00:13:37 -0800
IronPort-SDR: UVgSEL9vDp4VndcmMmu+yla4RklgaqHFPFC6ULuHoHDAHc5FuXupCGoEj8489Phyn/n7Q+nn1K
 vbGNkaXMXSWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="432625337"
Received: from kialmah1-desk.jf.intel.com ([10.23.15.164])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 00:13:36 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Feb 2021 00:15:54 -0800
Message-Id: <20210226081554.984307-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200822064837.3276-1-khaled.almahallawy@intel.com>
References: <20200822064837.3276-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/dp: DPTX writes
 Swing/Pre-emphs(DPCD 0x103-0x106) requested during PHY Layer testing
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
equalization level) for DP output channel. If the source doesn't write to
DPCD 103-106, the retimer may not output the requested swing/pre-emphasis and
eventually we fail compliance.

v2: Rebase and use crtc->lane_count (Imre)

Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2ec82a5c9f24..1ccf8602b3ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4471,6 +4471,9 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 
 	intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
 
+	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
+			intel_dp->train_set, crtc_state->lane_count);
+
 	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
 				    link_status[DP_DPCD_REV]);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
