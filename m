Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C09671381
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 07:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F6810E681;
	Wed, 18 Jan 2023 06:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0046E10E67E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 06:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674021679; x=1705557679;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RgUtPlJKvNBvYaob7xBuC6CA42eQAvLr42wKf+jHlzw=;
 b=IulIfayuNFGu9iKqLaEdrczoNnyqG0BDWqPG8qQIhitJJXvflQNjYOnJ
 nWgQBTV48Mdo8qtdryf1WeEInjdf7GxBL/1+JN7clbInG+NL5T56DnBw2
 hYDO9/0Eel1+gtYdrDXlg4JVXR1EJiNDI4NLcsrD/kdo3LE/hY8R2jWUU
 4R1swQ+WsQchwAFgLeBkuFFIdrbF9+s67A17QIPid1ZlnDAgXLEgioOmD
 WZEfjJFq0bXBu8nwnZTpbg9Z7sZ8I4mU39dk8X4eGC/S7U3wy7tNIRDAP
 feD1i9WXfMQurfYksKBHJ9bPGaW5tuOYwr6822BInq3vQ0kXb6olFxIPR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="326176248"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326176248"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 22:01:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="609512407"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="609512407"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga003.jf.intel.com with ESMTP; 17 Jan 2023 22:01:17 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 11:29:57 +0530
Message-Id: <20230118060002.2369838-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118060002.2369838-1-suraj.kandpal@intel.com>
References: <20230118060002.2369838-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 1/6] drm/dp_helper: Add helper to check if
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

