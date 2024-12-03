Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 705389E1622
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6ACB10E97E;
	Tue,  3 Dec 2024 08:47:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZJe+Ots6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1089210E97C;
 Tue,  3 Dec 2024 08:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733215638; x=1764751638;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LMZQgyV0l241XCKei1JZJMv3xHnKPxoXyqTy8yx8NfY=;
 b=ZJe+Ots6VCvbZrKNYEnIsMThs5xu/1lfvx+CM5lvRAM1qlUBwpche5ny
 eNtbVHTtadO2sIMFNMyszfb475gJU2VP/uuxrZOyCTnWUpP08MZioOTIw
 M2nu58d7wWXvGFVTH7lX6mmrhUTlx5IU7bq0jFvYivrGRWCt1HLcs0f2b
 rFmvnfksQDbYcnX8LTaB8kWsBXKAGlvKd2QvGYpMPJSZ2dPX4rjWciec2
 xtORIClxe9xRdTgCX2hmPX+uXimxrd4DUzFMe/hyBJR8mjpBUdPfh81Hr
 wHF9M0MaJUaPIFiojok9VjQI/pHMqK3MEpeNgVWwebhkQiEBBLwTn36bi A==;
X-CSE-ConnectionGUID: Ltw274guQd6+r/FWyZDYmg==
X-CSE-MsgGUID: CvW+mxd7SoyjnmQrHcau4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44805431"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="44805431"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:47:18 -0800
X-CSE-ConnectionGUID: qEM+52rTTCmGO8W5cfFebg==
X-CSE-MsgGUID: Iw4kOVYYQs20BPXxwrTZXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="94198887"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 03 Dec 2024 00:47:16 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/6] drm/i915/wm: Refactor dpkgc value prepration
Date: Tue,  3 Dec 2024 14:17:02 +0530
Message-Id: <20241203084706.2126189-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241203084706.2126189-1-suraj.kandpal@intel.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
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

Refactor the value getting prepped to be written into the PKG_C_LATENCY
register by ORing the REG_FIELD_PREP values instead of having val
getting operated on twice.
We dont need the clear and val variables to be initialized.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index c40e0173a5bd..df961cb8d51f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2858,7 +2858,7 @@ static void
 skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 {
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
-	u32 clear = 0, val = 0;
+	u32 clear, val;
 	u32 added_wake_time = 0;
 
 	if (DISPLAY_VER(i915) < 20)
@@ -2872,9 +2872,9 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 			i915->display.sagv.block_time_us;
 	}
 
-	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
-	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
+	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
+	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
 }
-- 
2.34.1

