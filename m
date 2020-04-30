Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9631C0AD1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1486EA23;
	Thu, 30 Apr 2020 23:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2600F6EA23
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:08:31 +0000 (UTC)
IronPort-SDR: soE6EPkzTyuj7pivS+nu7+3EfPOlK1tJea5H9sSwlvq3nBDHpAGW9yCW5+0G7CPCbxMMcwKzBq
 49b1EXanXocA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:08:30 -0700
IronPort-SDR: BQisJ9lTr+tGE6hu0caXp1h2TeQVMxyZmpvNA3dJ62OkfyljwIBHEYRQhpSaGAeIgBOuZ40YQp
 GkO8fIXxBXEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="405581144"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 30 Apr 2020 16:08:30 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:09:41 -0700
Message-Id: <20200430230951.2508-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200430230951.2508-1-manasi.d.navare@intel.com>
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 01/11] HAX to make DSC work on the icelake
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
index 612a59ec8116..475e99990086 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -1425,7 +1425,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
 		if (slice_cap1 & DP_DSC_4_PER_DP_DSC_SINK)
 			return 4;
 		if (slice_cap1 & DP_DSC_2_PER_DP_DSC_SINK)
-			return 2;
+			return 4;
 		if (slice_cap1 & DP_DSC_1_PER_DP_DSC_SINK)
 			return 1;
 	} else {
@@ -1449,7 +1449,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
 		if (slice_cap1 & DP_DSC_4_PER_DP_DSC_SINK)
 			return 4;
 		if (slice_cap1 & DP_DSC_2_PER_DP_DSC_SINK)
-			return 2;
+			return 4;
 		if (slice_cap1 & DP_DSC_1_PER_DP_DSC_SINK)
 			return 1;
 	}
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 6c4b53dcb851..cf2ee635270c 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1413,6 +1413,7 @@ int drm_dp_dsc_sink_supported_input_bpcs(const u8 dsc_dpc[DP_DSC_RECEIVER_CAP_SI
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
