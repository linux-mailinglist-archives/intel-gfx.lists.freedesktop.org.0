Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C184661ED3C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7574710E259;
	Mon,  7 Nov 2022 08:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D4CD10E22C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 08:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667810641; x=1699346641;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MzkWnHWXk0PhBOrs9wAOBJpQLafQ22GbzBxZUo9DCyY=;
 b=i0wnuFvhkeX8Q278jc3PNrBzuP0X4oB+JCcQhDrY7mDA9vqD6oVQMnI/
 A1YU6PNnuspxsOx0bYtbcP7Mo+7tKq/t4fzt+TXgYNi7Qyr//tnX+3hMJ
 CvgCGxn9i0f9BBIfHiO5GP95CWmQU5i8HpgsDNncHyvz0DJoFsvR12elZ
 0Zu93L+9C7HFFOIb1xtSQewq1Gi6EDahwjxFkQ7EDYPm23fga6KtqnCMj
 wytUVrD0TFvwgRx+1o8oHOn3DzQAItjP1XYEeUAlDz/yEEln5JCET2xFN
 Ya6qKvdXMa2j5UcriQDqvSJltM419i4BQmJJP4D0SEW8ZtCIHPv6yo8CB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311495143"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311495143"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 00:44:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="778406241"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="778406241"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2022 00:43:58 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 14:12:51 +0530
Message-Id: <20221107084258.1353210-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107084258.1353210-1-suraj.kandpal@intel.com>
References: <20221107084258.1353210-1-suraj.kandpal@intel.com>
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

