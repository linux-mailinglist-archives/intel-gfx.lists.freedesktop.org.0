Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F9761ED5D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359F110E271;
	Mon,  7 Nov 2022 08:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D6E10E22C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 08:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667810861; x=1699346861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MzkWnHWXk0PhBOrs9wAOBJpQLafQ22GbzBxZUo9DCyY=;
 b=lDdlWZ8zVDCuNEFF3Hf71juCJCsPhnhOoAmXoJyRtbu5CCroLLJrE+qY
 4GMbwLzNkGvlTUMm68ddu+koIFZx5WgzjV+lqUsWXBOzs94nUJZCad30J
 srVYj0JJf4F66ccNtP2IvcV60pGKTEoCly/plmxJvL7KEMlOtWucRVKJc
 e5fqCjwYaiwr42TxfnG4OdCX8ZaPnp+VgtSttSPG6eSXgHScPGJOVksPK
 G0FhSpB5qVkWC3jFfyQyacKuQJTB1EEMRjb1Pn6SRUffAg0x0FK2pBDyA
 cBNTmvhiiorOzbg7oBldIx9JH8he9JyXojrInsol5WaQpShxZg55XvMGg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="290085248"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="290085248"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 00:47:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="880983603"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="880983603"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga006.fm.intel.com with ESMTP; 07 Nov 2022 00:47:40 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 14:16:27 +0530
Message-Id: <20221107084634.1353266-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107084634.1353266-1-suraj.kandpal@intel.com>
References: <20221014152622.233398-1-suraj.kandpal@intel.com>
 <20221107084634.1353266-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/dp_helper: Add helper to check if the
 sink supports given format with DSC
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
 include/drm/display/drm_dp_helper.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index ab55453f2d2c..6c1706280746 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -193,6 +193,12 @@ drm_dp_dsc_sink_max_slice_width(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
 	return dsc_dpcd[DP_DSC_MAX_SLICE_WIDTH - DP_DSC_SUPPORT] *
 		DP_DSC_SLICE_WIDTH_MULTIPLIER;
 }
+/* Check if sink supports DSC with given output format */
+static inline bool
+drm_dp_dsc_sink_supports_format(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE], u8 output_format)
+{
+	return dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] & output_format;
+}
 
 /* Forward Error Correction Support on DP 1.4 */
 static inline bool
-- 
2.25.1

