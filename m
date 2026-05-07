Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJ7QLo/r+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:31:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3494E1F6D
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E763E10EF3A;
	Thu,  7 May 2026 01:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nLlFG3+O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8836710EF39;
 Thu,  7 May 2026 01:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117516; x=1809653516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AOP+0AoVc616Nx9ztDiGCqClvppSD3V5H3edGcPkmO4=;
 b=nLlFG3+OBIhINus4lmVtsn3MTptlA52xCBoW++5SBLxlmAKxo7gJKhCR
 Ay+yZOR4QL0QPGVMmQDcotGVehiU4YJrO0HfTwQuS96FEPAE8LrIJpaK9
 oXEM4hD2YZ1poTqrfVvRg9W6jutUavPH3C8oVoqBnc9Oo/90IdFluG/mJ
 gWcXe5cpc11Ec1y+zqFpp61NK5tC3SCye9Yu4Se1e52RCYFwimI20KwEY
 E7RbmfGesgQSfRGgwJZYPpfucI52I4AcyWqNgIMoHTdxTW32ArnggnY/r
 ZCeyb5FAfRglkKMWoRXiUM9KHHiM2pBKCzh2tYT2Odce+shnioBfFVm3l Q==;
X-CSE-ConnectionGUID: RM7rK9+FTX67XfYWVsg85A==
X-CSE-MsgGUID: 53sbPDJpSJebwiLqFMii6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089021"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089021"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:31:56 -0700
X-CSE-ConnectionGUID: IDFI+Dn8TxuNlNwa/5KmEA==
X-CSE-MsgGUID: jXxX9Q0iTcqLXazVJ+Xizw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692748"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:31:55 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 05/31] drm/i915/bios: de/allocate VS/PE-O buffers' matrix
Date: Thu,  7 May 2026 03:31:11 +0200
Message-ID: <20260507013137.527510-6-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260507013137.527510-1-michal.grzelak@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Queue-Id: 6C3494E1F6D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Since all of the tables' rows are sticked together and hence form a
giant table, we could call it "buffers' table". This is not especially
great lingo though because there is a naming clash between superior
"buffers' table" and tables that form it.

Alternatively we can treat each interior table as a column of couple
struct intel_ddi_buf_trans_entry's. Then after sticking all tables
together column-by-column we obtain a matrix of struct
intel_ddi_buf_trans_entry. We are allowed to do that since every table
has the same number of rows.

This data structure's representation has the advantage that it resolves
aforementioned lingo clash while still being equivalent to "buffers'
table", simply reshaped. Thus it will be mentioned as "buffers' matrix".

For the convenience of use, implementation assume transposition of the
matrix described above: each table from VBT #57 forms one matrix's row
and each matrix's column represents one row of the table from VBT #57.
It allows us to use specific table without specifying table's row.

Add pointer for matrix of intel_ddi_buf_trans_entry into intel_vbt_data.
Include intel_ddi_buf_trans.h in intel_bios.c to enable adding it.

Name the pointer as bufs_mtrx. bufs_mtx would be a better fit, but it
could misleadingly indicate that it represents mutex.

Allocate (num_tables x num_rows) matrix of intel_ddi_buf_trans_entry.
This "buffers' matrix" will be used to store all deparsed VS/PE-O tables
from VBT #57. Store matrix's pointer in intel_vbt_data.

Deallocate whole matrix on driver removal.

v2->v3
- switch from kzalloc() into kzalloc_objs()

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 21 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d64668c1022a7..064eb4fda3f3a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -34,6 +34,7 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
+#include "intel_ddi_buf_trans.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
@@ -2188,7 +2189,9 @@ parse_compression_parameters(struct intel_display *display)
 static void
 parse_vswing_preemph_override(struct intel_display *display)
 {
+	union intel_ddi_buf_trans_entry **bufs_mtrx;
 	const struct bdb_vswing_preemph *block;
+	u8 num_rows;
 
 	if (display->vbt.version < 218)
 		return;
@@ -2199,10 +2202,18 @@ parse_vswing_preemph_override(struct intel_display *display)
 	if (!block)
 		return;
 
+	num_rows = DISPLAY_VER(display) >= 14 ? 16 : 10;
+
+	bufs_mtrx = kzalloc_objs(*bufs_mtrx, block->num_tables);
+
+	for (int idx = 0; idx < block->num_tables; idx++)
+		bufs_mtrx[idx] = kzalloc_objs(**bufs_mtrx, num_rows);
+
 	drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
 
+	display->vbt.bufs_mtrx = bufs_mtrx;
 	display->vbt.num_tables = block->num_tables;
-	display->vbt.num_rows = DISPLAY_VER(display) >= 14 ? 16 : 10;
+	display->vbt.num_rows = num_rows;
 }
 
 static u8 translate_iboost(struct intel_display *display, u8 val)
@@ -3002,6 +3013,7 @@ init_vbt_defaults(struct intel_display *display)
 		    display->vbt.lvds_ssc_freq);
 
 	/* Vswing / Preemphasis Override */
+	display->vbt.bufs_mtrx = NULL;
 	display->vbt.num_tables = 0;
 	display->vbt.num_rows = 0;
 }
@@ -3385,6 +3397,13 @@ void intel_bios_driver_remove(struct intel_display *display)
 		list_del(&entry->node);
 		kfree(entry);
 	}
+
+	if (display->vbt.bufs_mtrx) {
+		for (int idx = 0; idx < display->vbt.num_tables; idx++)
+			kfree(display->vbt.bufs_mtrx[idx]);
+
+		kfree(display->vbt.bufs_mtrx);
+	}
 }
 
 void intel_bios_fini_panel(struct intel_panel *panel)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 36ea4873deeb0..a91397ecfe017 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -242,6 +242,7 @@ struct intel_vbt_data {
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
+	union intel_ddi_buf_trans_entry **bufs_mtrx;
 	int num_tables;
 	int num_rows;
 
-- 
2.45.2

