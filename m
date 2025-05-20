Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2213BABD190
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A980D10E56D;
	Tue, 20 May 2025 08:14:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xl4bloTd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 863DF10E550;
 Tue, 20 May 2025 08:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728842; x=1779264842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5LH1rm+CLBoQrlro8+LlMlrRAdPWyp47VQgnXO+EgWg=;
 b=Xl4bloTdvHMGAslFopAbpK9etKXfpNjVkslfjcrcaJ474j/MQ8cKjxqA
 xMm9SpaMJPlWDnk9xhNCiBvxxGnW+6HKbu+wQ32x1Q8ZdaGsCf03WWbFs
 XXC6WMnWz0ls1NKrRb4qCoomz56Mt7N9xE9crIixew0ll4qLSXK7xEtni
 2XJIBCKGVIrsbNGirpA1VirgLzcDokthGvFQ9lMJeTZ/1GhmlKaCzbAYi
 LmoaN6U/jXeIteG9yc5VS77s9FapfHDvQZ9eMjSFVaRsZ0CkEsxcXqm74
 WNnFiNRpDMsm9WTsyrmNDd87KIKLktt4Tv1RTS/1GV2cbcSUwVAxmw2OT A==;
X-CSE-ConnectionGUID: BtNc80lYS5204AnewBvk4w==
X-CSE-MsgGUID: x7MafnPcSmKBCTQL6wFrXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48764830"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48764830"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:14:02 -0700
X-CSE-ConnectionGUID: g8sayaHBTa+ChDMNseEJog==
X-CSE-MsgGUID: VSg6kuhNTiyB21YAZciCpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144475962"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 20 May 2025 01:14:00 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v7 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Date: Tue, 20 May 2025 13:25:27 +0530
Message-Id: <20250520075537.4074010-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
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
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 393ea07947b4..d6641cfe8061 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -228,13 +228,25 @@ static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
 	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
 }
 
+static void intel_dsb_ins_align(struct intel_dsb *dsb)
+{
+	/*
+	 * Every instruction should be 8 byte aligned.
+	 *
+	 * The only way to get unaligned free_pos is via
+	 * intel_dsb_reg_write_indexed() which already
+	 * makes sure the next dword is zeroed, so no need
+	 * to clear it here.
+	 */
+	dsb->free_pos = ALIGN(dsb->free_pos, 2);
+}
+
 static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 {
 	if (!assert_dsb_has_room(dsb))
 		return;
 
-	/* Every instruction should be 8 byte aligned. */
-	dsb->free_pos = ALIGN(dsb->free_pos, 2);
+	intel_dsb_ins_align(dsb);
 
 	dsb->ins_start_offset = dsb->free_pos;
 	dsb->ins[0] = ldw;
-- 
2.25.1

