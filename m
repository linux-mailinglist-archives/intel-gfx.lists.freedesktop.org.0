Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC3561EB9D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43CDD10E1F4;
	Mon,  7 Nov 2022 07:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80FE10E0B7
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 07:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667805550; x=1699341550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MzkWnHWXk0PhBOrs9wAOBJpQLafQ22GbzBxZUo9DCyY=;
 b=hfjjQBwFi2YgC3dwcf2i1UXSs2D1ewxyUXoW4D8ITGpzXXsvMNGTWz4G
 5gu9pjIIIL9+TI/9FU7V4udOhQQZ2Jn8aytaCk5DdOOAnQmf0gEbbVi2v
 G7619QTA7/x/q5dfL4KWiwaYT35HV8QP+59klj9gKcdxQrKVgMnVam7N6
 z0f3v0EXJhfAwwIEfXIOSuWhRxBJmjotjV8KQ9yJ7mP5C6+I3q/hatjoI
 pu9F3Xo50vX/kMmDGEzCB8NLWKNsXs2msWdsOf+U/pmy0uiSwJE+s7IRZ
 6IeTXEw2MX4f2/avgl1ng/w/Q/S4Ykn29u4XfXyO51rkieVkL/Xc5Rp4a Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="307967996"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="307967996"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:19:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="630389140"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="630389140"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 06 Nov 2022 23:19:09 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 12:47:54 +0530
Message-Id: <20221107071801.1352870-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107071801.1352870-1-suraj.kandpal@intel.com>
References: <20221107071801.1352870-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/8] drm/dp_helper: Add helper to check if
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

