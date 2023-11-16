Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 796E97EE15F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:19:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7746110E5E7;
	Thu, 16 Nov 2023 13:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8A7C10E5E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140736; x=1731676736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zcpd0Pofl6bYKgkjg5ll2Em7uUMT6yg6yiZlrtFP9EE=;
 b=BIbImlqiKehOA/gQHhh+2W/gCTwL/JpTlRIRepjex6RsriFU+n9tgik5
 b1kE1pCUB5MfewH6Ex6u6/JfaFzWdZq6lXpTlziqz36So4v+WUi9yvxf7
 h4TP3A2MDtAahCGQmjy+MbvxAWj/FdSix0UfIOOW8QTOURrEs+x3cVifj
 LoIMKsGQFAJwMO/NSAJjP1tfDLudyKIFTWmpNUAxawnZO5/ATtgsQu4hk
 6+MbmeboPDFBJ7l/yxtbLCvdJFHQFb9xNubk0MdZXkb0eqMBa379YJSGu
 EVU2JrVjvpMojeMvY4UURYYF/+T+/37vbVsKdmWYVoyAqOtZzGvOEmbH8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177183"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177183"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834367"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834367"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:55 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:40 +0200
Message-Id: <20231116131841.1588781-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/11] drm/i915/dp: Simplify
 intel_dp_max_data_rate()
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

Simplify intel_dp_max_data_rate() using
drm_dp_bw_channel_coding_efficiency() to calculate the max data rate for
both DP1.4 and UHBR link rates. This trades a redundant multiply/divide
for readability.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++-------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 209c27167e057..a93e8f6429d85 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -405,29 +405,27 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 int
 intel_dp_max_data_rate(int max_link_rate, int max_lanes)
 {
-	if (max_link_rate >= 1000000) {
-		/*
-		 * UHBR rates always use 128b/132b channel encoding, and have
-		 * 97.71% data bandwidth efficiency. Consider max_link_rate the
-		 * link bit rate in units of 10000 bps.
-		 */
-		int max_link_rate_kbps = max_link_rate * 10;
-
-		max_link_rate_kbps = DIV_ROUND_DOWN_ULL(mul_u32_u32(max_link_rate_kbps, 9671), 10000);
-		max_link_rate = max_link_rate_kbps / 8;
-	}
+	int ch_coding_efficiency =
+		drm_dp_bw_channel_coding_efficiency(drm_dp_is_uhbr_rate(max_link_rate));
+	int max_link_rate_kbps = max_link_rate * 10;
 
+	/*
+	 * UHBR rates always use 128b/132b channel encoding, and have
+	 * 97.71% data bandwidth efficiency. Consider max_link_rate the
+	 * link bit rate in units of 10000 bps.
+	 */
 	/*
 	 * Lower than UHBR rates always use 8b/10b channel encoding, and have
 	 * 80% data bandwidth efficiency for SST non-FEC. However, this turns
-	 * out to be a nop by coincidence, and can be skipped:
+	 * out to be a nop by coincidence:
 	 *
 	 *	int max_link_rate_kbps = max_link_rate * 10;
 	 *	max_link_rate_kbps = DIV_ROUND_DOWN_ULL(max_link_rate_kbps * 8, 10);
 	 *	max_link_rate = max_link_rate_kbps / 8;
 	 */
-
-	return max_link_rate * max_lanes;
+	return DIV_ROUND_DOWN_ULL(mul_u32_u32(max_link_rate_kbps * max_lanes,
+					      ch_coding_efficiency),
+				  1000000 * 8);
 }
 
 bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
-- 
2.39.2

