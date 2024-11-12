Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2A19C5110
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B412D10E596;
	Tue, 12 Nov 2024 08:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LreR4mpo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF8810E594;
 Tue, 12 Nov 2024 08:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401159; x=1762937159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RKdgL7FQqZzSmT/WH6uGjTX66NQNGfu32DlfAWLQiVw=;
 b=LreR4mpoABHyKoOQxADFU6calUoE2G+fs5/1a+7Q6C+CpyO1q0az5d/b
 fsldj0vKa1skaf7iAIOafB3vj0Gn8T7Nk+MeP1op4YvxyYHMtvPpFtHLL
 d+AHb7/zf0Cjx4C7oiJ5Z7JlT0rouF+G93c4siJpz5L5R9/ot6Rns/UwH
 +mioUOxfAB4hg67hEgUHnnTUzEAlCpns2su+hNIxxZGQBkbZ/MMO2lfHk
 l5QaYwUgXHzcJB38nqQH37qywEYpKsYd2BbOOD+4TbelQOaXSl5rblRMG
 kB9uWWGS3l8kQjE6v+A9qq2ijg2P/zkUYSkJjEEif7INe+P7pBNFUMTjZ Q==;
X-CSE-ConnectionGUID: AXp2rp3aTliPP75B/AhJhw==
X-CSE-MsgGUID: +v76MtAKRR+fFyWxPro8vA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31449608"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="31449608"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:45:59 -0800
X-CSE-ConnectionGUID: Mw+z/0FuTwCMATVZfbV9eg==
X-CSE-MsgGUID: hnU3i3eoS32b3xtj+J/c1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="124851962"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 12 Nov 2024 00:45:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/6] drm/i915/watermark: Use intel_display for dpkgc code
Date: Tue, 12 Nov 2024 14:15:40 +0530
Message-Id: <20241112084542.1337314-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112084542.1337314-1-suraj.kandpal@intel.com>
References: <20241112084542.1337314-1-suraj.kandpal@intel.com>
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

Use intel_display for DPKGC code wherever we can. While we are
at it also use intel_de_rmw instead of intel_uncore_rmw as we
really don't need the internal uncore_rmw_function.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4c92ada1c851..714bfcd83015 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2850,11 +2850,12 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 static void
 skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (DISPLAY_VER(display) < 20)
 		return;
 
 	if (fixed_refresh_rate) {
@@ -2862,14 +2863,14 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate
 		if (max_latency == 0)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
 		added_wake_time = DSB_EXE_TIME +
-			i915->display.sagv.block_time_us;
+			display->sagv.block_time_us;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
 	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
-	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
+	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
 }
 
 static int
-- 
2.34.1

