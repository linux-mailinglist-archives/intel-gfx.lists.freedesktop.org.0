Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC80AD7497
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 16:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72F110E895;
	Thu, 12 Jun 2025 14:50:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0AlTgfd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E171E10E895;
 Thu, 12 Jun 2025 14:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749739844; x=1781275844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XX4DbVANMISxpRQ362XWCGc8tocl8RuWa4rO0SleYwg=;
 b=G0AlTgfdxmDH40FHTreLBgWEl351/vGsdGVq336I5orh8qXAxOS10pfu
 xk+tz9MjIEHqgvtkPe0tYYhLgusa4+dLY5/aVvBChFRO7RAEKh3T/XJzY
 oeraggEW8OSSIR0N67j4DNHbJZvBHD2XP7hcpAn94WoIjNk5Ki9Y+/CAT
 ivf5vQidlbzyaFYZIaGfyb6lXEhz1BzojEytAPJ9vAcPvahufuiqEhMNp
 6ngJe7KRr1mLg6ZOVazyT8LCCo2HTH9Kj8oUnr6uogiQxXS5izuaW4dy/
 Y6xUEx3hACPkG0zj+1fEPx9+8gDfpg2VC9CftUuOVPcRRhNikbdGB/zhd g==;
X-CSE-ConnectionGUID: Kh7xsBxJRf2I+G1FaulPNA==
X-CSE-MsgGUID: srG2Xg1UT6uYkBEopEy8Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52066758"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52066758"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 07:50:43 -0700
X-CSE-ConnectionGUID: bAkZTbh4RvezCYzTM+tAYg==
X-CSE-MsgGUID: g/Dm3AyzSTOyNMX5yhbUKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152826234"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.200])
 by orviesa005.jf.intel.com with SMTP; 12 Jun 2025 07:50:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jun 2025 17:50:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 6/6] drm/i915/dsb: Disable the GOSUB interrupt
Date: Thu, 12 Jun 2025 17:50:18 +0300
Message-ID: <20250612145018.8735-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
References: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Current DSB hardware is apparently a bit borked and likes to signal
spurious GOSUB errors. We already have most for the workarounds for
this in place, but the last part is simply not enabling the corresponding
interrupt.

While at it polish up the w/a comments with the w/a number,
and consistently take the short blurp from the w/a page.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index aaa2a4a52edc..53d8ae3a70e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -554,8 +554,8 @@ static void intel_dsb_gosub_align(struct intel_dsb *dsb)
 	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
 
 	/*
-	 * "The GOSUB instruction cannot be placed in
-	 *  cacheline QW slot 6 or 7 (numbered 0-7)"
+	 * Wa_16024917128
+	 * "Ensure GOSUB is not placed in cacheline QW slot 6 or 7 (numbered 0-7)"
 	 */
 	if (aligned_tail - tail <= 2 * 8)
 		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
@@ -618,8 +618,8 @@ void intel_dsb_gosub_finish(struct intel_dsb *dsb)
 	intel_dsb_align_tail(dsb);
 
 	/*
-	 * "All subroutines called by the GOSUB instruction
-	 *  must end with a cacheline of NOPs"
+	 * Wa_16024917128
+	 * "Ensure that all subroutines called by GOSUB end with a cacheline of NOPs"
 	 */
 	intel_dsb_noop(dsb, 8);
 
@@ -667,7 +667,11 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 14)
 		errors |= DSB_ATS_FAULT_INT_EN;
 
-	if (DISPLAY_VER(display) >= 30)
+	/*
+	 * Wa_16024917128
+	 * "Disable nested GOSUB interrupt (DSB_INTERRUPT bit 21)"
+	 */
+	if (0 && DISPLAY_VER(display) >= 30)
 		errors |= DSB_GOSUB_INT_EN;
 
 	return errors;
-- 
2.49.0

