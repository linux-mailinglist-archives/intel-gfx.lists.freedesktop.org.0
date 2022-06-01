Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E04C539F4D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 10:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518A011351F;
	Wed,  1 Jun 2022 08:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE8311351A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654071773; x=1685607773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nGsddchMZDEgXhwhY9DYTxS/GFWfbr95MOCQKxHKHso=;
 b=OeaNzWb6n2vii5ObeUjXJwtM0PEjYpCVEWg9lgI73PPJMy9bNJzRisg9
 UciNiWrZU+HXMgXzMA+CEfqzMKbtEbvz3BnppMkV6ackzTlBL/XaDGG5V
 AQ9AS2bGCuvrjThE4hERt47EwiMkjY/x2/4EDshOsSU+NVXJ8vvhKP+Fg
 2oWV/+D5M5pOJM9zwdixhLaTG5IH00mZF2KEkCH4slbyAoJ2EoXQPqve9
 IGwh+AaZJqlvdI0FrXewpvckGkaeCKNSIXuPm0623DBOUsvlT58iTT7Ge
 6pXxP9SZemboHwvTY43vsl9bPMkw4DG1rTxB8beBy9/uCu5HhIdaqfloc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="273079864"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="273079864"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 01:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="581477339"
Received: from kandpal.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jun 2022 01:22:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jun 2022 13:51:59 +0530
Message-Id: <20220601082200.368911-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220601082200.368911-1-suraj.kandpal@intel.com>
References: <20220601082200.368911-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/2] drm/i915: Define WD trancoder for i915
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
index 187910d94ec6..62dc26b3bf76 100644
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
index a27d66fd4383..eeadf5c160ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -78,6 +78,7 @@ enum intel_output_type {
 	INTEL_OUTPUT_DSI = 9,
 	INTEL_OUTPUT_DDI = 10,
 	INTEL_OUTPUT_DP_MST = 11,
+	INTEL_OUTPUT_WD = 12,
 };
 
 enum hdmi_force_audio {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0a5064e32284..cfd0a0c13703 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2053,6 +2053,8 @@
 #define TRANSCODER_EDP_OFFSET 0x6f000
 #define TRANSCODER_DSI0_OFFSET	0x6b000
 #define TRANSCODER_DSI1_OFFSET	0x6b800
+#define TRANSCODER_WD0_OFFSET	0x6e000
+#define TRANSCODER_WD1_OFFSET	0x6e800
 
 #define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
 #define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)
-- 
2.35.1

