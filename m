Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9659AB9B1E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549BE10EA59;
	Fri, 16 May 2025 11:34:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iDt1epBZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D875A10EA58;
 Fri, 16 May 2025 11:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395255; x=1778931255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w/qW8+skzXqudBRtZLuoL6SKPDQz3ZEms5XINm0MKwM=;
 b=iDt1epBZEOIj4/FXDwbpnroUvk9NudGMcD03GAwe4l74AQy2QIzQfXfS
 /oItN/z7WFtHm4l8d76OR6teuGPovnAha49s5ankj2bCoqwc9Vy5GkZOn
 HU8FQxblADMtBarorur9Yhh9E3D/c4THue3hG1AR5GrWdTBXI3Y/BhFmu
 yeI6XL8MAE0MvrPxwntZAS7P9EVnnZz8HfQ3pcJEYrAiCH9QFnn24asOY
 g+RieYLFUZ15eqIiG7kQHf1lHpiYAh925e1VQ3deEksYP+ctNsEaJFULU
 5iF2/vhOAmgr4/PGwKmBXTUZh145ZUv0XajuDBTewgViO7b2FeN2bzmQS g==;
X-CSE-ConnectionGUID: ZKpQqtOkTY2svZ7wSEjWWw==
X-CSE-MsgGUID: KOwD7X0RR/Cc85ME7UJHaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349798"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349798"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:15 -0700
X-CSE-ConnectionGUID: vaipbBvARa2CR0GJJHcMwQ==
X-CSE-MsgGUID: gds+UHV2T+2vwyuzp+Lnfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779500"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/12] drm/i915/dsb: Extract intel_dsb_ins_align()
Date: Fri, 16 May 2025 14:33:57 +0300
Message-ID: <20250516113408.11689-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
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

Extract the code that alings the next instruction to the next
QW boundary into a small helper. I'll have some more uses for
this later.

Also explain why we don't have to zero out the extra DW.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 393ea07947b4..d6641cfe8061 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -228,13 +228,25 @@ static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
 	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
 }
 
-static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
+static void intel_dsb_ins_align(struct intel_dsb *dsb)
 {
-	if (!assert_dsb_has_room(dsb))
-		return;
-
-	/* Every instruction should be 8 byte aligned. */
+	/*
+	 * Every instruction should be 8 byte aligned.
+	 *
+	 * The only way to get unaligned free_pos is via
+	 * intel_dsb_reg_write_indexed() which already
+	 * makes sure the next dword is zeroed, so no need
+	 * to clear it here.
+	 */
 	dsb->free_pos = ALIGN(dsb->free_pos, 2);
+}
+
+static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
+{
+	if (!assert_dsb_has_room(dsb))
+		return;
+
+	intel_dsb_ins_align(dsb);
 
 	dsb->ins_start_offset = dsb->free_pos;
 	dsb->ins[0] = ldw;
-- 
2.49.0

