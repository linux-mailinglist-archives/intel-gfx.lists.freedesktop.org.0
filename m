Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D61D0ABFCC7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34C910E740;
	Wed, 21 May 2025 18:16:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wk+6NB4S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D4A10E740;
 Wed, 21 May 2025 18:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851412; x=1779387412;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w/qW8+skzXqudBRtZLuoL6SKPDQz3ZEms5XINm0MKwM=;
 b=Wk+6NB4ShcLuoRfOhTD8ep+4b53LyAC7FLrK/POyGa2/awnjkS+EdfjB
 WAMSgYJt6AW88TODCA6Pl0xpuL3RhbLy2ZmQ/55lgNYSEGyfWQBw1UDop
 2qJbQ6kSLWDVUIK2NJ7nDeDEjJgTA5K8SI80w9ubyutDaySWfuWeV+we7
 z+5hhaGLY8gT6qLBPa/E+hlIvTmYr2vNW7QN0VnNPIwSwb9q04XdTL5BX
 JP0QYWNj6Pln/4VkDQA50g9AoFyZRqVEwgKxZ/8tpLcGOpT/yf9dbOrpR
 xEkbgkFhwWPJUR6UQNxVOQ8mRSu/iOaslWcw35F/Akhs8jlrri+mIj+Dk g==;
X-CSE-ConnectionGUID: xToQ7JFaTyOSZeHgZTEkcA==
X-CSE-MsgGUID: N3+4/25SQiub4raKE2whhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244708"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244708"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:16:52 -0700
X-CSE-ConnectionGUID: yzCzZM1+SrOA5LqeY4I7ag==
X-CSE-MsgGUID: knk5u3HkSOmwWzd0a0InaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322272"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:16:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:16:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 01/13] drm/i915/dsb: Extract intel_dsb_ins_align()
Date: Wed, 21 May 2025 21:16:33 +0300
Message-ID: <20250521181645.32737-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
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

