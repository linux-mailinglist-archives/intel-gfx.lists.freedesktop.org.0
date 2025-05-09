Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7013AB07C6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 04:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD3F10E0FA;
	Fri,  9 May 2025 02:14:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JaCh+N2h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17ABD10E08C;
 Fri,  9 May 2025 02:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746756861; x=1778292861;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zy9ccRQdnbeIPTqkveJ17GWBHT0V7Woy3OSKWnvy2Bo=;
 b=JaCh+N2hpMhdN2RgKSCAfuxR2tfgilnSN2WP9BOmsq55gvJY1qszQ0Cq
 4xOdIoOvzMjFKsii5dz2xzkmKHwlqfaEp0GXwJoaLrDT5TCKzmZi/dXqV
 sdXxjk5I2I+CPDBvd0GkTHCMJeG4fhwO6o6+A5WRy24zsNyz3+MJvpoAB
 jyuLcONMlxvq0LvIWP3NO1TYhNa0mpKZBcSzWbAK4D645o4zyLnTC5PjO
 nTFWr+QrD120uAcClYtPsWMEOY6cV2JnaB6ygpS1XPsXccrURVQ2tkVf3
 Hc8SoHyjIWlp6GY5h8Pm12HoXfV1tQgvp1Rxyltgz8HE6FeCbCD2VSUoI A==;
X-CSE-ConnectionGUID: QaHBgcHSS8mEOQyGS8w42Q==
X-CSE-MsgGUID: gCS8LKY8SXKG9CPX0hDViQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="73949835"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="73949835"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 19:14:20 -0700
X-CSE-ConnectionGUID: uhiHNwWlQR+ir2S5ZFYPCQ==
X-CSE-MsgGUID: U8BS2kTqTJyeoS/pZfyU4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="136480786"
Received: from gyu3-linux.itwn.intel.com (HELO gyu3-linux.itwn.corp.intel.com)
 ([10.225.64.210])
 by fmviesa007.fm.intel.com with ESMTP; 08 May 2025 19:14:19 -0700
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: [PATCH] drm/i915/display: Send DSI DCS commands with pipeline flush
 in High Speed
Date: Fri,  9 May 2025 10:13:27 +0800
Message-Id: <20250509021327.649003-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

From: Gareth Yu <gareth.yu@intel.com>

With all of the boundary conditions when streaming the commands B2B in our
validation (part of the reason we added the flush),  the Flush effectively
serializes the transmission of each command enqueued within the command
dispatcher to one per V. Blank line which simplifies the behavior of the
High Speed Arbitration.

So, unless we absolutely have to burst these to the Sink, we should be using
the Pipeline Flush bit to serialize the commands.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14247

Cc : Suraj Kandpal <suraj.kandpal@intel.com>
Cc : Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c      | 4 ++--
 drivers/gpu/drm/i915/display/icl_dsi_regs.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 402b7b2e1829..f91f27067768 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -191,12 +191,12 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 	else
 		tmp &= ~PAYLOAD_PRESENT;
 
-	tmp &= ~VBLANK_FENCE;
+	tmp &= ~(VBLANK_FENCE | LP_DATA_TRANSFER | PIPELINE_FLUSH);
 
 	if (enable_lpdt)
 		tmp |= LP_DATA_TRANSFER;
 	else
-		tmp &= ~LP_DATA_TRANSFER;
+		tmp |= PIPELINE_FLUSH;
 
 	tmp &= ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
 	tmp |= ((packet->header[0] & VC_MASK) << VC_SHIFT);
diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
index d4845ac65acc..b601b7632339 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
@@ -272,6 +272,7 @@
 #define  PAYLOAD_PRESENT		(1 << 31)
 #define  LP_DATA_TRANSFER		(1 << 30)
 #define  VBLANK_FENCE			(1 << 29)
+#define  PIPELINE_FLUSH			(1 << 28)
 #define  PARAM_WC_MASK			(0xffff << 8)
 #define  PARAM_WC_LOWER_SHIFT		8
 #define  PARAM_WC_UPPER_SHIFT		16
-- 
2.34.1

