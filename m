Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F277EE160
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E38C610E5E6;
	Thu, 16 Nov 2023 13:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A8710E5E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140735; x=1731676735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2xor/F/ja9poHPy5FHgrhsa1eWBjWMypYd8DRSNnSVE=;
 b=ibL8XgYQtycdvgWtL9i8w52i/F6vYin0aZKhpLScBvwdTr7ur/ySzCBS
 JZ/eoO/cWiFPNAX2uB0LPMy/WyyKqIf8YeK9DTvfvXLO+KztdbnLA1Phj
 5fZdVLqsa12oilJW9mMrPeh5ctnyIsx1IjDVzhlX40mzeX7G6VQr1dwYf
 akdC2y86F6wcA80un7ePUS7D+WrGowwD0adVdCvJ0nI4w4p4CTNgItmVI
 z5Dlh5E1QsETrjoECpBuOS3i361wsH1XR/Yumq+WA4OwZyjuDHi5Ux83R
 nboJCpRkhh0rPcmOkuYmw5HYnuD5kB9mG0+yJJCCxtw3LOyFY+iX1Jxfs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177181"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177181"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834364"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834364"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:54 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:39 +0200
Message-Id: <20231116131841.1588781-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/11] drm/i915/dp: Report a rounded-down
 value as the maximum data rate
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

Callers of intel_dp_max_data_rate() use the return value as an upper
bound for the BW a given mode requires. As such the rounding shouldn't
result in a bigger value than the actual upper bound. Use round-down
instead of -closest accordingly.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 120d435d27ff1..209c27167e057 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -413,7 +413,7 @@ intel_dp_max_data_rate(int max_link_rate, int max_lanes)
 		 */
 		int max_link_rate_kbps = max_link_rate * 10;
 
-		max_link_rate_kbps = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(max_link_rate_kbps, 9671), 10000);
+		max_link_rate_kbps = DIV_ROUND_DOWN_ULL(mul_u32_u32(max_link_rate_kbps, 9671), 10000);
 		max_link_rate = max_link_rate_kbps / 8;
 	}
 
@@ -423,7 +423,7 @@ intel_dp_max_data_rate(int max_link_rate, int max_lanes)
 	 * out to be a nop by coincidence, and can be skipped:
 	 *
 	 *	int max_link_rate_kbps = max_link_rate * 10;
-	 *	max_link_rate_kbps = DIV_ROUND_CLOSEST_ULL(max_link_rate_kbps * 8, 10);
+	 *	max_link_rate_kbps = DIV_ROUND_DOWN_ULL(max_link_rate_kbps * 8, 10);
 	 *	max_link_rate = max_link_rate_kbps / 8;
 	 */
 
-- 
2.39.2

