Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FFC287E36
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 23:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5703A6EB4F;
	Thu,  8 Oct 2020 21:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068E789B9A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 21:44:24 +0000 (UTC)
IronPort-SDR: lW7q98BTwMTsVsBKdBGRnQ4bTtIGTe7Pj19cvKvinQTudK6080te8EylT2n4zVAEsvpp3hpOiu
 yPSIdD3d50kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="182844145"
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="182844145"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 14:44:23 -0700
IronPort-SDR: lpqXwEswUZGkV9e3EPvgzHfnL8Qpn2YLwHxaoxRiwX2pfbKgxU8Zd2mDm2jN+9RpmUY4DJu0nT
 aDn01t7/jmGA==
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="312338236"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 08 Oct 2020 14:44:23 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Oct 2020 14:45:25 -0700
Message-Id: <20201008214535.22942-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 01/11] HAX to make DSC work on the icelake
 test system
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

DSC is available on the display emulator, but not set in DPCD.
Override the entries to allow bigjoiner testing.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c | 4 ++--
 include/drm/drm_dp_helper.h     | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index 478dd51f738d..7f355c1c49c0 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -1987,7 +1987,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
 		if (slice_cap1 & DP_DSC_4_PER_DP_DSC_SINK)
 			return 4;
 		if (slice_cap1 & DP_DSC_2_PER_DP_DSC_SINK)
-			return 2;
+			return 4;
 		if (slice_cap1 & DP_DSC_1_PER_DP_DSC_SINK)
 			return 1;
 	} else {
@@ -2011,7 +2011,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
 		if (slice_cap1 & DP_DSC_4_PER_DP_DSC_SINK)
 			return 4;
 		if (slice_cap1 & DP_DSC_2_PER_DP_DSC_SINK)
-			return 2;
+			return 4;
 		if (slice_cap1 & DP_DSC_1_PER_DP_DSC_SINK)
 			return 1;
 	}
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 159191c1ae75..1eeffb670ad9 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1502,6 +1502,7 @@ int drm_dp_dsc_sink_supported_input_bpcs(const u8 dsc_dpc[DP_DSC_RECEIVER_CAP_SI
 static inline bool
 drm_dp_sink_supports_dsc(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
 {
+	return dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT];
 	return dsc_dpcd[DP_DSC_SUPPORT - DP_DSC_SUPPORT] &
 		DP_DSC_DECOMPRESSION_IS_SUPPORTED;
 }
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
