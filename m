Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F479C4DF2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 05:55:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0AC010E563;
	Tue, 12 Nov 2024 04:54:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0iCAz6R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C3410E55D;
 Tue, 12 Nov 2024 04:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731387297; x=1762923297;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P1KFBcxnraYLw6eNy5/D6TwSLuB5ChYm58QWRZgutVw=;
 b=G0iCAz6R9rsdbS0ALW/TFu7Prdktlasi1UdQuJdDtPWKQOuA/a9xCl+F
 jcV8v6rCNQpn+KocR/MZXFVUAxQLOXlHpUc0Ugew/Ge1FKT2k+uiWa5CY
 C17oNgEo+ktV9r2pPggyKhRsLyG6mUnkcBsw0BaolRBD1Sv7YkieeZ8q8
 RJjnYPnjpapS7TwVuqz5QhuviiX2P6/QjMEoRYjR9Qb8vxhBuu5TgA+B4
 3t05r5i9fRDsbyiVafshk9ArZxvtj4yUgCHpbly0pIcjHFAXFNHWVzxV5
 UVnU8wFuZUueBPcb+IFzMfVFgC/GZKviCpQguzzjA6q05Cy7hiSReMFJZ w==;
X-CSE-ConnectionGUID: ajf1nzDkQzSPbTd07ZjJnA==
X-CSE-MsgGUID: 7jzJizGxQAajkm9SCoHN7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42585900"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="42585900"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 20:54:57 -0800
X-CSE-ConnectionGUID: p0LHM+XYQvSLWRNpsPXB5g==
X-CSE-MsgGUID: 5lCYOmCrQxmBxgDfzmyCMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87673188"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 11 Nov 2024 20:54:55 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/5] drm/i915/watermark: Use intel_display for dpkgc code
Date: Tue, 12 Nov 2024 10:24:35 +0530
Message-Id: <20241112045435.1189586-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112045435.1189586-1-suraj.kandpal@intel.com>
References: <20241112045435.1189586-1-suraj.kandpal@intel.com>
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
index 71ca89fc2888..746c906baa11 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2852,11 +2852,12 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915,
 			  bool fixed_refresh_rate,
 			  u32 max_linetime)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	u32 latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
 	u32 added_wake_time = 0;
 
-	if (DISPLAY_VER(i915) < 20)
+	if (DISPLAY_VER(display) < 20)
 		return;
 
 	if (fixed_refresh_rate) {
@@ -2872,14 +2873,14 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915,
 		}
 
 		added_wake_time = DSB_EXE_TIME +
-			i915->display.sagv.block_time_us;
+			display->sagv.block_time_us;
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
 	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
 		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
-	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
+	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
 }
 
 static int
-- 
2.34.1

