Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C19AC1D25
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 08:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3FD10E71F;
	Fri, 23 May 2025 06:39:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e/VfQzJw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6229E10E1ED;
 Fri, 23 May 2025 06:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747982346; x=1779518346;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5LH1rm+CLBoQrlro8+LlMlrRAdPWyp47VQgnXO+EgWg=;
 b=e/VfQzJwbs48uiCEML7jGfzmZ3n2judbWXrKzSMyoEt+So1EPwJU5DSK
 qQpewhFqIGQ3xiZvN28IxBxCN8rQ1ovho1LsV00Wo17Uzv4DTEKXav4Bh
 dHK0pc6a7bsPbFfoswZl/3pezY0pFvCJhQlpwgLu+CsfmPwVcy0Mpom9x
 XRgRle0VZQTrOiRFYoQwdu2c7TwG3KkbmQbGKjO3n4luln5S3pKXaHUqD
 hhP7KqfmC+fzfMmFyTJ7+vhnJYt5FnDpxRSOvYxVIU+cqJobdegPy88kX
 WUDRpeTWM3+G2JS/59ylgarQ6VfHDSFplySZmeyFJdPdLb+7Yqbugr12Y g==;
X-CSE-ConnectionGUID: QtCp5gj9R2CR+G1ytFp5Tg==
X-CSE-MsgGUID: OHzxzPUMRmWbAI+iEkFVNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67592210"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67592210"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:39:04 -0700
X-CSE-ConnectionGUID: J9QNrUNMTMWmN9wRE5acEw==
X-CSE-MsgGUID: iZ8NUHRVT7WGcp13ydp5/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="171985296"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 23:39:02 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v8 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Date: Fri, 23 May 2025 11:50:31 +0530
Message-Id: <20250523062041.166468-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
References: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
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

