Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 050787A902C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 02:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABF610E515;
	Thu, 21 Sep 2023 00:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E2210E515
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 00:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695256575; x=1726792575;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X9ntRu/kLhO7EfO8VH5gNL+ZLiUt6tPvsj7ZxiWUvZs=;
 b=EsQeLDzDU/AYGNjF35HBJ8qCt1/fVFky6M+7CW/yXs4SITwN+pf01kO4
 JlPQ8sO/T1vYN+kwoA/3UaHYOJ3zGOVkEaWmJoHAzihOPnGvaLWIilUIs
 mwjfiIvgAWpP5F9piE8FrXK/QXkKmOPTr3jmCMmiwvOLHXmQn3XofpER8
 WSzi4rclSy/wxnj74pdzXYkGZ4ytP2Mi2hNCX5uzMXGl50jGDBBTJf9Rr
 MmDrkQ6QN1o+dgfUHRk7SLS7oJtW5bfX6EeTcxdbdJBz5J2RxtDRJtTJe
 5Aka8oy8wfHS2U60uAfBBWeZvhyEHbNVmivkncyAWRD+dPYbuf4nDDOFL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359765517"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359765517"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 17:36:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="740406359"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="740406359"
Received: from charlton-desk1.sc.intel.com ([172.25.235.211])
 by orsmga007.jf.intel.com with ESMTP; 20 Sep 2023 17:36:14 -0700
From: Charlton Lin <charlton.lin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 17:35:58 -0700
Message-Id: <20230921003558.777023-1-charlton.lin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/dp: Change DSC vs lower bpp
 priority
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
Cc: Charlton Lin <charlton.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Previously driver would lower bpp before trying DSC. Monitors
capable of acheiving highest mode with either DSC or lower bpp
would have bpp dropped instead of attempting DSC at higher bpp.

Changed the order in which driver attempts DSC and lower bpp.
Attempt DSC before trying lower bpp without DSC.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Charlton Lin <charlton.lin@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2206b45bc78c..0d65ca4085b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1527,12 +1527,14 @@ static int
 intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
 				  const struct drm_connector_state *conn_state,
-				  const struct link_config_limits *limits)
+				  const struct link_config_limits *limits,
+				  bool allow_bpp_change)
 {
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int mode_rate, link_rate, link_avail;
+	int min_bpp = allow_bpp_change ? limits->min_bpp : limits->max_bpp;
 
-	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
+	for (bpp = limits->max_bpp; bpp >= min_bpp; bpp -= 2 * 3) {
 		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
 
 		mode_rate = intel_dp_link_required(clock, link_bpp);
@@ -2247,7 +2249,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 * Optimize for slow and wide for everything, because there are some
 	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
 	 */
-	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
+	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
+						conn_state, &limits, false);
 
 	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
 		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
@@ -2255,10 +2258,16 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    str_yes_no(intel_dp->force_dsc_en));
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits, 64, true);
-		if (ret < 0)
-			return ret;
 	}
 
+	if (ret < 0)
+		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
+							conn_state, &limits,
+							true);
+
+	if (ret < 0)
+		return ret;
+
 	if (pipe_config->dsc.compression_enable) {
 		drm_dbg_kms(&i915->drm,
 			    "DP lane count %d clock %d Input bpp %d Compressed bpp %d\n",
-- 
2.25.1

