Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DEFA7E210
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 16:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E097610E4B0;
	Mon,  7 Apr 2025 14:39:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hntl0RhL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD9B10E4BD;
 Mon,  7 Apr 2025 14:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744036764; x=1775572764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=usMAJ2Mxv0bBhPq+ePDSN2aPARo9WUXUse2/mLugf0w=;
 b=hntl0RhLyjWrEmqwN2R3tta4SeE4O5p+tuROpr44qhmMGRXwt0WumxHJ
 5MrGyui/u1PRfQraeRsAc5KoipwFa9Hqbwh3XIe++HUlD0lz32J5N4Hj4
 HQO/q4+Q2erQ0eOYggfhjRg1O0EodFTw6Y7+5XKGOrWVE474FZB3rIHV/
 9jehT6fnBlCJBSrNVhb506wDRQeILc/NCwkYxEAjlfwwcYbhby1zJMWW1
 NQ9kaM/QBeNb45GBCd8chXHFQcFdl8nKlWrmC+G2x8Gb9edyNbOVc/zu2
 d0FuTSluV+BiiRZ3XPXicAESsrTmxHFTQ6gyYB1Xc+cHCyCVizleA9OPx w==;
X-CSE-ConnectionGUID: mepeHiqBQdKhKYJKYZs/VQ==
X-CSE-MsgGUID: I+lpwoa3TpSiA8uobuLiIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44572427"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44572427"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 07:39:24 -0700
X-CSE-ConnectionGUID: wfIdsJjSR06Qbwp9dqav2w==
X-CSE-MsgGUID: 9djreVpFRt2Mnv2fCWmTng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="158963704"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 07 Apr 2025 07:39:22 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 06/11] drm/i915/dsb: Add support for GOSUB interrupt
Date: Mon,  7 Apr 2025 19:53:54 +0530
Message-Id: <20250407142359.1398410-7-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
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

DSB raises an interrupt when there is a nested GOSUB command or
illegal Head/Tail. Add support to log such errors in the DSB
interrupt handler.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c      | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dsb_regs.h | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index bffa02a0442c..da58f1c821c3 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -787,7 +787,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 
 	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
 			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
-			  dsb_error_int_en(display) | DSB_PROG_INT_EN);
+			  dsb_error_int_en(display) | DSB_PROG_INT_EN | DSB_GOSUB_INT_EN);
 
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_head(dsb));
@@ -980,4 +980,7 @@ void intel_dsb_irq_handler(struct intel_display *display,
 	if (errors & DSB_POLL_ERR_INT_STATUS)
 		drm_err(display->drm, "[CRTC:%d:%s] DSB %d poll error\n",
 			crtc->base.base.id, crtc->base.name, dsb_id);
+	if (errors & DSB_GOSUB_INT_STATUS)
+		drm_err(display->drm, "[CRTC:%d:%s] DSB %d gosub int error\n",
+			crtc->base.base.id, crtc->base.name, dsb_id);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_regs.h b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
index cb6e0e5624a6..230104f36145 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
@@ -51,11 +51,13 @@
 #define   DSB_RESET_SM_STATE_MASK	REG_GENMASK(5, 4)
 #define   DSB_RUN_SM_STATE_MASK		REG_GENMASK(2, 0)
 #define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
+#define   DSB_GOSUB_INT_EN		REG_BIT(21) /* ptl+ */
 #define   DSB_ATS_FAULT_INT_EN		REG_BIT(20) /* mtl+ */
 #define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
 #define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
 #define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
 #define   DSB_PROG_INT_EN		REG_BIT(16)
+#define   DSB_GOSUB_INT_STATUS		REG_BIT(5) /* ptl+ */
 #define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4) /* mtl+ */
 #define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
 #define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
-- 
2.25.1

