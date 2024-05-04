Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA378BBEC7
	for <lists+intel-gfx@lfdr.de>; Sun,  5 May 2024 01:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F2510FF87;
	Sat,  4 May 2024 23:15:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W5Td1yYK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680F210FF89
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2024 23:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714864537; x=1746400537;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P0BmTWHUenPmDyjXmy+t7lLeukxpITpyW271iV0LZak=;
 b=W5Td1yYK+7E6080pWY9IwGixOnuCE8uoPr5XJ2Jw+31etyXvE7cT3FlX
 lIhrLxc7k2eB0OZOK8nKVc9lcyySuFFaatHUvLPFs2FTmzkp+07wImDVe
 dxbosIsBB+fFObK0RQpfP5epCjVEMa90vqBlaYsRKFDSZTa202KMR0mqs
 579PEoLPZ7CxPKlcxjWhp846Nx/vqhWHDuhNmJVSoB6vJKKGmOekP7Tws
 TSJy7SzeuEz62NYJ/47jPCmaoKBCQu2qhNCDHDp1LmMf0IR5h5CEjUp+D
 80l9guXoh6fGJZfX3PQxKly5u4fD1z41R2+HMIXNxfeyaBEwY1cJzOLeR w==;
X-CSE-ConnectionGUID: BkS3aa09SM+0FCRwVtTuOQ==
X-CSE-MsgGUID: HR/5YM4YTQ6kHu/DTbxQnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11063"; a="14459055"
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="14459055"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2024 16:15:35 -0700
X-CSE-ConnectionGUID: BLsfgHf6R1uVTYtDY974mw==
X-CSE-MsgGUID: SKIEaqehTGOiYuuL4SmfLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,255,1708416000"; d="scan'208";a="28200949"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2024 16:15:35 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/xe: Minor cleanup in LRC handling
Date: Sat,  4 May 2024 16:15:24 -0700
Message-ID: <20240504231530.15732-2-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240504231530.15732-1-niranjana.vishwanathapura@intel.com>
References: <20240504231530.15732-1-niranjana.vishwanathapura@intel.com>
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

Properly define register fields and remove redundant
lower_32_bits().

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_engine_regs.h | 4 ++--
 drivers/gpu/drm/xe/xe_lrc.c              | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/regs/xe_engine_regs.h b/drivers/gpu/drm/xe/regs/xe_engine_regs.h
index 97d2aed63e01..7e1b0fd68275 100644
--- a/drivers/gpu/drm/xe/regs/xe_engine_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_engine_regs.h
@@ -44,9 +44,10 @@
 #define GSCCS_RING_BASE				0x11a000
 
 #define RING_TAIL(base)				XE_REG((base) + 0x30)
+#define   TAIL_ADDR				REG_GENMASK(20, 3)
 
 #define RING_HEAD(base)				XE_REG((base) + 0x34)
-#define   HEAD_ADDR				0x001FFFFC
+#define   HEAD_ADDR				REG_GENMASK(20, 2)
 
 #define RING_START(base)			XE_REG((base) + 0x38)
 
@@ -136,7 +137,6 @@
 #define   RING_VALID_MASK			0x00000001
 #define   RING_VALID				0x00000001
 #define   STOP_RING				REG_BIT(8)
-#define   TAIL_ADDR				0x001FFFF8
 
 #define RING_CTX_TIMESTAMP(base)		XE_REG((base) + 0x3a8)
 #define CSBE_DEBUG_STATUS(base)			XE_REG((base) + 0x3fc)
diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
index 2066d34ddf0b..f759f4c10914 100644
--- a/drivers/gpu/drm/xe/xe_lrc.c
+++ b/drivers/gpu/drm/xe/xe_lrc.c
@@ -1354,7 +1354,7 @@ struct xe_lrc_snapshot *xe_lrc_snapshot_capture(struct xe_lrc *lrc)
 	if (!snapshot)
 		return NULL;
 
-	snapshot->context_desc = lower_32_bits(xe_lrc_ggtt_addr(lrc));
+	snapshot->context_desc = xe_lrc_ggtt_addr(lrc);
 	snapshot->head = xe_lrc_ring_head(lrc);
 	snapshot->tail.internal = lrc->ring.tail;
 	snapshot->tail.memory = xe_lrc_read_ctx_reg(lrc, CTX_RING_TAIL);
-- 
2.43.0

