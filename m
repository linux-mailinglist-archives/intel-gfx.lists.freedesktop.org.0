Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3D87EA46B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 21:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D89110E410;
	Mon, 13 Nov 2023 20:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D8110E27F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 20:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699906273; x=1731442273;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yYvLHxVzbf96nFlGo6x2u4ah7wKWhAElL43TC0+Wp/0=;
 b=g8sTncbWlUTIH4d7bTtS5D3Dpjze6K7Uv09MM6KZyMKvWfQyafHm0Ewk
 IDt6n8mJrKLSh/MNlYoXiH9UTBU8i3wIpRd4j4FN4v1FIwTZEK6nOU4uC
 hy/VjkcvyMnxLd/InVWfbL8PYn93z5DAO49AaWpBNZ6A3etb8CgMiBjpp
 /FJnEcRL6i8UvqPQfG+ntutlb5tJvbOycWvE7yGMDaWHZVq3tRmypbyau
 KX9hk23mPIuaKlYY0yWpdG6LcnDZpd8Voh7Qx5vNCobvAdMNpRkHMwPDS
 RLIKHFQpnHwY9qQBDNftjEkpCVYxmRo9n1o88eaJPdG+AJp+U7qmu0Wif Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3553661"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; 
   d="scan'208";a="3553661"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 12:11:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="937829885"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="937829885"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 12:11:10 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 22:11:07 +0200
Message-Id: <20231113201110.510724-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Account for channel coding
 efficiency on UHBR links
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apply the correct BW allocation overhead and channel coding efficiency
on UHBR link rates, similarly to DP1.4 link rates.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3effafcbb411a..24aebdb715e7d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2398,16 +2398,6 @@ add_bw_alloc_overhead(int link_clock, int bw_overhead,
 	int ch_coding_efficiency =
 		drm_dp_bw_channel_coding_efficiency(is_uhbr);
 
-	/*
-	 * TODO: adjust for actual UHBR channel coding efficiency and BW
-	 * overhead.
-	 */
-	if (is_uhbr) {
-		*data_m = pixel_data_rate;
-		*data_n = link_data_rate * 8 / 10;
-		return;
-	}
-
 	*data_m = DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate, bw_overhead),
 				   1000000);
 	*data_n = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate, ch_coding_efficiency),
-- 
2.39.2

