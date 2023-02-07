Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 442D668D0C5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 08:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CEF10E454;
	Tue,  7 Feb 2023 07:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B122A10E454
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 07:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675755931; x=1707291931;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RgUtPlJKvNBvYaob7xBuC6CA42eQAvLr42wKf+jHlzw=;
 b=jw3/4Jh//BCQjUTCbmNWwHvwPfCTSyqrRoBQ3TeyQQUzTRE9p6j2A1GQ
 PEyFhrxah5PPzekbOJNhU/5Qvzf62DC7p4kH8+F/xHNeO6dPCj34WBBtA
 irnnEwpGpEAK1+IiDRFrq2pk52gBaUAr2yk7h8lwSt71xUzUBPJowdilM
 jig10rsOKa2jQhaAlv8gs2NJ9DDh8gNJ8qe8ak4sy0fmzmL5ae594oetD
 jt5t3vNBTSDx7Q+pjwQn81ZeTS+DtxazgsHSKEU/WW3+cGWwzC/qaEQkp
 TnY00hdZmTGscjkcosu5obZOHMcToBLWxxd/A1rMmx2my15w1UJRAquxt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="317449117"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="317449117"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 23:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="840674606"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840674606"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 06 Feb 2023 23:45:20 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 13:14:10 +0530
Message-Id: <20230207074416.3209722-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230207074416.3209722-1-suraj.kandpal@intel.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 1/7] drm/dp_helper: Add helper to check if
 the sink supports given format with DSC
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Add helper function to check if the DP sink supports DSC with the given
output format.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 include/drm/display/drm_dp_helper.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index ab55453f2d2c..d529d0254b68 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -194,6 +194,13 @@ drm_dp_dsc_sink_max_slice_width(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
 		DP_DSC_SLICE_WIDTH_MULTIPLIER;
 }
 
+/* Check if sink supports DSC with given output format */
+static inline bool
+drm_dp_dsc_sink_supports_format(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE], u8 output_format)
+{
+	return dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] & output_format;
+}
+
 /* Forward Error Correction Support on DP 1.4 */
 static inline bool
 drm_dp_sink_supports_fec(const u8 fec_capable)
-- 
2.25.1

