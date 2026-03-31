Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPscNsMTzGkvOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEEC370056
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD1DE10EB1F;
	Tue, 31 Mar 2026 18:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RNbd5BD0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B6C510EB13;
 Tue, 31 Mar 2026 18:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982075; x=1806518075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AessYfOCHdOcvsDPHqi9guR1Vsn2hjB6saL04egQVBg=;
 b=RNbd5BD0tGyUhGqP61cQcM3xY5zFH8+TFnkdIj4ZcMGbp/dCSdtK0RWw
 mDukx2CeEyDFyJM3FkcK3aWsgPkLGvuJbrOzuUlzrc5sg/vhRA3RY/nxK
 rcsnIDSqegFjX7fO++Tp7U3188IXF/PHlk8DzygAo67LxvJomF81zqCfL
 ezSB8IBxT5AV4P4YLKP9SA3j1YcmGLyISga2Aq1IHqD98x0V2cVbOlpr6
 fPB3Uf8IaVxqKDlCLFLlmjcJKaDEwp/mCO+q0tC6dxHILoIUi8SOYutiO
 PkaInevdh3Nzr7duVD8zj8NF3SZHZD/dkMMKtBx0fnJP4tY9yz85RUZk6 Q==;
X-CSE-ConnectionGUID: 4CvPrH0QRXODugtKcO+Zew==
X-CSE-MsgGUID: Q14OxEEPTZW/E0he9letLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705169"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705169"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:35 -0700
X-CSE-ConnectionGUID: SxA19DHrQK2jRDEsEylFhg==
X-CSE-MsgGUID: 0IeVN1EqSTuh2+0Kp/1Q7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944463"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:34 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 05/16] drm/i915/bios: parse LT's VS/PE Override Block #57
Date: Tue, 31 Mar 2026 20:33:21 +0200
Message-ID: <20260331183332.1773886-6-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260331183332.1773886-1-michal.grzelak@intel.com>
References: <20260331183332.1773886-1-michal.grzelak@intel.com>
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8DEEC370056
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Parse content of VBT #57 into buffers' table. In case of LT we cannot
parse the content by simply casting pointer to the memory location since
VBT #57 contains more fields than it is actually needed.

Parse VBT #57 going row-wise since VBT #57 is a contiguous block.

Add FIXME to confirm LT's tables' layout.

Add LOW() macro for extracting lower byte out of u32 value read from
Block 57.

Equivalently, extraction of lower byte could be done by cast to (u8).
This approach would have the advantage of dropping "drm/i915/buf_trans:
switch from u8 to u32" patch.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 44 +++++++++++++++++++++--
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 778584c59fc6..4b2d86bac2de 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -47,6 +47,10 @@
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
 
+#define VS_PE_MASK 0x000000ff
+
+#define LOW(x) ((x) & (VS_PE_MASK))
+
 /**
  * DOC: Video BIOS Table (VBT)
  *
@@ -2184,6 +2188,38 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static void
+parse_vswing_preemph_lt(union intel_ddi_buf_trans_entry **bufs_table,
+			const struct bdb_vswing_preemph *block)
+{
+	union intel_ddi_buf_trans_entry *entry;
+	const u32 *tables = block->tables;
+	u32 num_rows = 16;
+	size_t offset = 0;
+	size_t row_width;
+	const u32 *vals;
+
+	row_width = block->num_columns * sizeof(*tables);
+
+	for (int idx = 0; idx < block->num_tables; idx++) {
+		for (int row = 0; row < num_rows; row++) {
+			vals = &tables[offset];
+
+			entry = &bufs_table[idx][row];
+			entry->lt.main_cursor = LOW(vals[0]);
+			entry->lt.pre_cursor = LOW(vals[1]);
+			entry->lt.post_cursor = LOW(vals[2]);
+			/* FIXME confirm LT's tables' layout
+			 * should this ever trigger.
+			 * entry->lt.txswing = LOW(vals[3]);
+			 * entry->lt.txswing_level = LOW(vals[4]);
+			 */
+
+			offset += row_width;
+		}
+	}
+}
+
 static void
 parse_vswing_preemph_override(struct intel_display *display)
 {
@@ -2207,8 +2243,12 @@ parse_vswing_preemph_override(struct intel_display *display)
 	for (int idx = 0; idx < block->num_tables; idx++)
 		bufs_table[idx] = kzalloc(num_rows * sizeof(**bufs_table), GFP_KERNEL);
 
-	drm_dbg_kms(display->drm, "Vswing / Preemph Override not yet supported on the platform\n");
-	bufs_table = NULL;
+	if (HAS_LT_PHY(display)) {
+		parse_vswing_preemph_lt(bufs_table, block);
+	} else {
+		drm_dbg_kms(display->drm, "Vswing / Preemph Override not yet supported on the platform\n");
+		bufs_table = NULL;
+	}
 
 	display->vbt.vswing_preemph.bufs_table = bufs_table;
 	display->vbt.vswing_preemph.num_tables = block->num_tables;
-- 
2.45.2

