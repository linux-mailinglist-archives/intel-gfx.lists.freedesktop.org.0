Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26760A2EEA0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 14:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837FF10E572;
	Mon, 10 Feb 2025 13:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OXI7TJIY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 472F710E567
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 13:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739195204; x=1770731204;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TBCHQ+2rh9XPutjW+vuCF9FWshL/r6PSkQT/ZqlzzO8=;
 b=OXI7TJIYk0Uaruk8GEOfiPVXGQWd3yCtLaMdkqnrVKoC56iw3H0RLdGB
 VG3/0o76+lSLW9Y+M1GQKwbR5/u+ZSlk+VmiwFhaKCBtdejXbmm/lvYQl
 +QYjEhPL5RQJU0F5YTK6jB2cJVV/vFNiMnKGSPT0zUrPJCjbXrFsZ2xya
 6sC/ZfUcIiYkScKzDvREEDrtDM1W2fhgiqlY8csrBsGlffaVAdu1ieBaL
 tCP3LYccRqC+AWNUqf9Nu3U77Z5TPQw15vGcJ6fmlTIjch+RipWS69iTe
 Ny4owzN3FWHui3XN+U6Qo3yY+d2RmXjgXpSHfYuXH5jQEPVd6pbEihgIS Q==;
X-CSE-ConnectionGUID: WphTXsGtRROh4+8EIheb3g==
X-CSE-MsgGUID: aAAQRVN7TmKG//bAPr/KiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="42614711"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="42614711"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 05:46:44 -0800
X-CSE-ConnectionGUID: kBCkrgiWTTOP/PBlyecWnA==
X-CSE-MsgGUID: g9VRbbjjRn2VE924jG/Ggw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="112133899"
Received: from unknown (HELO nitin-Super-Server.iind.intel.com)
 ([10.190.238.72])
 by fmviesa007.fm.intel.com with ESMTP; 10 Feb 2025 05:46:43 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	nitin.r.gote@intel.com
Subject: [PATCH] drm/i915/pcode: Fix the coding style
Date: Mon, 10 Feb 2025 19:39:24 +0530
Message-Id: <20250210140924.1364158-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
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

Prefer binary operator at the end of the previous
line instead of putting operator at the start of
the next line as per coding style.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/intel_pcode.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 3db2ba439bb5..3e6cf3eb831e 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -248,9 +248,9 @@ int snb_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32
 	u32 mbox;
 	int err;
 
-	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd)
-		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1)
-		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
+	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd) |
+		REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1) |
+		REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
 
 	with_intel_runtime_pm(uncore->rpm, wakeref)
 		err = snb_pcode_read(uncore, mbox, val, NULL);
@@ -264,9 +264,9 @@ int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u3
 	u32 mbox;
 	int err;
 
-	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd)
-		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1)
-		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
+	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd) |
+		REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1) |
+		REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
 
 	with_intel_runtime_pm(uncore->rpm, wakeref)
 		err = snb_pcode_write(uncore, mbox, val);
-- 
2.25.1

