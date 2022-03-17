Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAB84DC185
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 09:40:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2401710F083;
	Thu, 17 Mar 2022 08:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA2D10F084
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 08:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647506426; x=1679042426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oUkrWnlJAvvYHsrAvQFYHVGx+PL7pK6wqf72VXDwLpw=;
 b=GybUf+VVm9MRbqLTrvJVtm8AyYwF7EdWnnN85McDd97ruSA+YoS1EL2O
 N4H6Ah0hvLDE6QWZtniBsyJOtmfmQfhFIvlJFT5Zw1FnvQFp1HdUsdWtH
 1UXjVvWRklM4NuprTwq9RMhxJJ6H8PLMuUnUAArCPMaK4N28o+dZMB5wi
 66d36GN3T0NFcQnQS6Bi3lO6nMQbJ9cqrNM5IB/j6OzeaLe/eTy1go48l
 Q0IlUfzU90O0vanksRPghrxGhYdzD+YgCJoEqm+AHTrC4pFj6gO0lPaH2
 83Idzt6wWecqStQky+/UwvgZ4TLknjRNfVLhGpP6T2liO7JD456uNzk5m g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="236762048"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="236762048"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 01:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="613934525"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 17 Mar 2022 01:40:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 14:09:28 +0530
Message-Id: <20220317083929.1352468-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220317083929.1352468-1-suraj.kandpal@intel.com>
References: <20220316093740.652925-1-suraj.kandpal@intel.com>
 <20220317083929.1352468-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v2 2/3] drm/i915: Define WD trancoder for
 i915
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding WD Types, WD transcoder to enum list and WD Transcoder offsets

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h       | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 3 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 8513703086b7..8c93a5de8e07 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -119,6 +119,8 @@ enum transcoder {
 	TRANSCODER_DSI_1,
 	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
 	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
+	TRANSCODER_WD_0,
+	TRANSCODER_WD_1,
 
 	I915_MAX_TRANSCODERS
 };
@@ -140,6 +142,10 @@ static inline const char *transcoder_name(enum transcoder transcoder)
 		return "DSI A";
 	case TRANSCODER_DSI_C:
 		return "DSI C";
+	case TRANSCODER_WD_0:
+		return "WD 0";
+	case TRANSCODER_WD_1:
+		return "WD 1";
 	default:
 		return "<invalid>";
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7a96ecba73c0..dcb4ad43cf88 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -79,6 +79,7 @@ enum intel_output_type {
 	INTEL_OUTPUT_DSI = 9,
 	INTEL_OUTPUT_DDI = 10,
 	INTEL_OUTPUT_DP_MST = 11,
+	INTEL_OUTPUT_WD = 12,
 };
 
 enum hdmi_force_audio {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ddbc7a685a50..6396afd77209 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2023,6 +2023,8 @@
 #define TRANSCODER_EDP_OFFSET 0x6f000
 #define TRANSCODER_DSI0_OFFSET	0x6b000
 #define TRANSCODER_DSI1_OFFSET	0x6b800
+#define TRANSCODER_WD0_OFFSET	0x6e000
+#define TRANSCODER_WD1_OFFSET	0x6e800
 
 #define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
 #define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)
-- 
2.35.1

