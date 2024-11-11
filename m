Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A069C3E72
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 13:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B650710E1CE;
	Mon, 11 Nov 2024 12:33:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="klqfwdX+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818D010E1CE;
 Mon, 11 Nov 2024 12:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731328394; x=1762864394;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=usJ5SbqaIE8MO9G9bm1YPDmExe6i6wMCBQTvFjbT2T4=;
 b=klqfwdX+2e/VEpdByC9Ng2XJfe3TKg7+ELgKMBen42U5PFSzTjF5xzQD
 6qH1+dDVqc+j9zzqvP1/OaTH2/kfIHSeA5cBiHm+v8s2nM4aEAe5tO51y
 Od0gHnYyGAkakzro/5gjaYxtUlbVb8Wy7FZHD++2F9RiS68wWnos7EZtl
 xVu9G9lbGmnH/Vue6fFLLay4DSSI7uxj9ULbtS+xRRWef8mBJjge9n8nh
 kWhuiNeXqLF+FK45a8db7h5lhtv7j4isufh1gx5W7AfllIxDlAUo0Ru+q
 qaisi8Y4Lb3f/GYQGo8W6Bc3+mO0X0p7dLt2yG0HAFJ8sr0iblHha+tl7 A==;
X-CSE-ConnectionGUID: ofUgpn7cQx+FVDb7kR0VkQ==
X-CSE-MsgGUID: /WZ6SH9VTpyDVVvpNu4SrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35068043"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="35068043"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:33:14 -0800
X-CSE-ConnectionGUID: RD8Yj8yvTGmuCb0un7e1Dg==
X-CSE-MsgGUID: YSgD/RjLQuGpC3vdqjvozA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="117823239"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 11 Nov 2024 04:33:13 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/3] drm/i915/watermark: Initialize latency variable to
 appropriate value
Date: Mon, 11 Nov 2024 18:02:57 +0530
Message-Id: <20241111123259.1072534-1-suraj.kandpal@intel.com>
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

Initialize max_latency variable to LNL_PKG_C_LATENCY_MASK which helps
to eliminate the else block and make the whole code a lot cleaner.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3bbf335c749..a97e90ac643f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2850,7 +2850,7 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 static void
 skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 {
-	u32 max_latency = 0;
+	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
@@ -2863,9 +2863,6 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
 		added_wake_time = DSB_EXE_TIME +
 			i915->display.sagv.block_time_us;
-	} else {
-		max_latency = LNL_PKG_C_LATENCY_MASK;
-		added_wake_time = 0;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-- 
2.34.1

