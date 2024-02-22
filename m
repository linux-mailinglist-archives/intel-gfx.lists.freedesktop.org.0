Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 137FA85FA1D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 14:45:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8AA10E93A;
	Thu, 22 Feb 2024 13:45:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DcaQW/cL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB7A10E93A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 13:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708609503; x=1740145503;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8LQIDoD2/E5VHPRGkc8Mmuo78RtByWkcTnf8qwUfOdU=;
 b=DcaQW/cL+sgF/wBmFb0NpgW/fX3J4rNsVw/E13oCcGlehTT9wP0t0p3a
 9eiovA4uBKypPWTKP1zDsajSvjghvKZWwzL50HY/U5XRuPyd94ELmZG7U
 YztxBe/xmJSQm+1Urrl39NhAwS2pr5XlWGOW5el8AZ2SM35DwXc1YtiEE
 RnUB+buc7uyND4dtOjVA+6D3QXYErB8f46B3JrLJWd2nbTGmmjA0oN2TG
 8Pic6lsUw6R3yRXns2yYKr7NYyaljYORlN8Wh3nlSrMuxBCe7rZE35G15
 vrOP8uMKXfj0qkbsvnhN4HhaXe1/JoPHRCBuWH0tSr+qinLcYhRxcpx0M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13454532"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="13454532"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 05:45:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="10088001"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmviesa003.fm.intel.com with ESMTP; 22 Feb 2024 05:45:00 -0800
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: [PATCH] drm/i915/mtl: Update workaround 14018778641
Date: Thu, 22 Feb 2024 19:27:15 +0530
Message-Id: <20240222135715.1552235-1-tejas.upadhyay@intel.com>
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

Applying WA 14018778641 only on Compute engine has impact on
some apps like chrome. Updating this WA to apply on Render
engine as well as it is helping with performance on Chrome.

Note: There is no concern from media team thus not applying
WA on media engines. We will revisit if any issues reported
from media team.

Fixes: 668f37e1ee11 ("drm/i915/mtl: Update workaround 14018778641")
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index d67d44611c28..46607aefc026 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1652,7 +1652,8 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	/* Wa_14018575942 / Wa_18018781329 */
+	/* Wa_14018575942 / Wa_14018778641 / Wa_18018781329 */
+	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
-- 
2.25.1

