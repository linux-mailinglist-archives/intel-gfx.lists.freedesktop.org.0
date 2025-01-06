Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B478A02279
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 11:05:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5782710E5FD;
	Mon,  6 Jan 2025 10:05:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fvWcNwgc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E978010E5FB;
 Mon,  6 Jan 2025 10:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736157909; x=1767693909;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hxP5yJZDnQDZgM5eiCHCPUKzI/JPLbfsMUVSeNEcwQo=;
 b=fvWcNwgcMEASwen5TF76vYJcaARtMbB3+d5GBJJNixObteS0e0t11/+U
 r/rdNFFXPIvAd+FY9Q2fWx1RoWOhCaFSPHeNMkaqpqgjFhPbF+h8DXbva
 tF1oToBcgiBUNDfq00iuLWif3MdJwDcoa+EBUepECDoCWp+jt/avd2WgD
 grFNbdYG8uX7n9QJirUXfME7T/FvSYgB5SzOOV1EbZ3qM/inBoeNicRE0
 AK3AfDnFYD9iZSOV7/OFnzpukmuKJ4SKEdGNiUBfpFgyD0jvC8AZm2rol
 wlFCkzaxcz47R3DdAl75ZQIlq2gBTkqUDrfuqcVvqotR39ncfJdvbG32L g==;
X-CSE-ConnectionGUID: SfHanwWpQxeMlrWHGl5U/w==
X-CSE-MsgGUID: TgX82lakQOi5cKyBhdfQig==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="46799057"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="46799057"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 02:05:09 -0800
X-CSE-ConnectionGUID: NuKbgakdRsKkiTXcaLimag==
X-CSE-MsgGUID: bj79IdnMTXuWTIFQCI1IcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107039255"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa005.fm.intel.com with ESMTP; 06 Jan 2025 02:05:07 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3] drm/i915/display: Adjust Added Wake Time with PKG_C_LATENCY
Date: Mon,  6 Jan 2025 15:14:08 +0530
Message-Id: <20250106094408.1011063-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

Increase the PKG_C_LATENCY Pkg C Latency field by the added wake time.

v1: Initial version.
v2: Rebase and cosmetic changes.
v3:
- Place latency adjustment early to accomodate round-up. [Suraj]
- Modify commit description and cosmetic change. [Suraj]

WA: 22020432604
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 29e8ea91c858..407af5b9f1dc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2939,7 +2939,17 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	}
 
 	if (fixed_refresh_rate) {
+		added_wake_time = DSB_EXE_TIME +
+			display->sagv.block_time_us;
+
 		latency = skl_watermark_max_latency(i915, 1);
+
+		/* Wa_22020432604 */
+		if ((DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30) && !latency) {
+			latency += added_wake_time;
+			added_wake_time = 0;
+		}
+
 		/* Wa_22020299601 */
 		if ((latency && max_linetime) &&
 		    (DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30)) {
@@ -2947,9 +2957,6 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 		} else if (!latency) {
 			latency = LNL_PKG_C_LATENCY_MASK;
 		}
-
-		added_wake_time = DSB_EXE_TIME +
-			display->sagv.block_time_us;
 	}
 
 	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-- 
2.29.0

