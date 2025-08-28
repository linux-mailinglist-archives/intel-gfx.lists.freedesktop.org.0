Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF66AB39D12
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF7EB10E99C;
	Thu, 28 Aug 2025 12:22:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LxLuOI/x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DADF10E99C;
 Thu, 28 Aug 2025 12:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383729; x=1787919729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mm7kdAVbjlNxsnVROnr2VNTM4BMUiDlStknLgsSfE3E=;
 b=LxLuOI/xez5Qjdb+QrWYGmTySkdUPE29On0zd+NjjykFKigzu1g3OUia
 bZYq2YUQ23SM9p+brg/CTiqr+YEfRRmAXWswqXmyVKDoWyqACMW+oL6fk
 dOgUshFmtX9GqQCaDnVuX8jb4EaDmdN1a2boQIKPVbTQ7tFidI/c8L8nP
 CmgXLvSN6SLA0fsbtMW9A4Vh312a2/Kk0E/6TqtaWxV4Gqpc89KqSizxy
 /M+C6Jr52E6YNOMITqZQNHKc7hGDk4KKdkvLQaI2spovevcDc1gpIslxE
 2Fdipq4Ip34FWvQm+cM80eTVEmjb15DrTWrBjYrk0gGUIizPgGPiKqgBN Q==;
X-CSE-ConnectionGUID: Hz0WK/QHSpyxOHiJu3Zwdg==
X-CSE-MsgGUID: HYoKby3KSYmU/F9it8KvBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053260"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053260"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:09 -0700
X-CSE-ConnectionGUID: U10ueYnxRaa/Huf1jySX/Q==
X-CSE-MsgGUID: /pAr/Z/zR6WDNl88mFlxLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271240"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 13/20] drm/i915/dp: use generic poll_timeout_us() instead of
 wait_for() in link training
Date: Thu, 28 Aug 2025 15:20:55 +0300
Message-ID: <29ab4738758fe844dc1323c4a59d5d6bdcf87308.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 500 us sleep instead. The timeout remains at
500 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c   | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9d14b4e59545..27f3716bdc1f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -22,6 +22,7 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/iopoll.h>
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_print.h>
@@ -1135,15 +1136,19 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int ret;
 
 	intel_dp->link.active = true;
 
 	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
 					       DP_TRAINING_PATTERN_DISABLE);
 
-	if (intel_dp_is_uhbr(crtc_state) &&
-	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
-		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
+	if (intel_dp_is_uhbr(crtc_state)) {
+		ret = poll_timeout_us(ret = intel_dp_128b132b_intra_hop(intel_dp, crtc_state),
+				      ret == 0,
+				      500, 500 * 1000, false);
+		if (ret)
+			lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
 	}
 
 	intel_hpd_unblock(encoder);
@@ -1581,8 +1586,12 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 			     int lttpr_count)
 {
 	bool passed = false;
+	int ret;
 
-	if (wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
+	ret = poll_timeout_us(ret = intel_dp_128b132b_intra_hop(intel_dp, crtc_state),
+			      ret == 0,
+			      500, 500 * 1000, false);
+	if (ret) {
 		lt_err(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clear\n");
 		goto out;
 	}
-- 
2.47.2

