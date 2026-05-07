Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AExMDa/r+2llIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D01084E1FFC
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5854C10EF61;
	Thu,  7 May 2026 01:32:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/xn/+nj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F1510EF61;
 Thu,  7 May 2026 01:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117548; x=1809653548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t0GatU5sklZoaZw6zsu0ty+jsbXg1FzH3F913Prw4eY=;
 b=c/xn/+njN3RUkqf0eYlFLvmdrf4IVcv10mtt1nlf6oaaE44YPCdCq3MP
 xHkiVcnvNVcYuFL1Uh/KwVgn2S7j12N+kNOje622WteZ+NlC2gKstlWmO
 Suy26P6jumyPx9kA8tcPse+RSpLixpINHCGvcamha2qL4OkA7kwQnbUP6
 Rvd8enGZQGCAetvEuSifUB/dMMCSgQTvZxpxqErZTD7UeNFAZnOV+w7Wp
 kV5fxC8mG0W+a/z3Tz7Pr29laMrZt9ZVTkhjRNtqQuCSg67esHyjMOKNS
 rehvzK8z04w71pYSC2rl7XDwRkWA1TEiAMbMCLYthOhXxvlyNLp05rFuC Q==;
X-CSE-ConnectionGUID: Bf9AgDW6SqyOK5TECuu1LQ==
X-CSE-MsgGUID: NcxVu6o1QB+7lqDUaBOCxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089052"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089052"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:28 -0700
X-CSE-ConnectionGUID: FIuPL5QSQ72VI7sMR3oBtg==
X-CSE-MsgGUID: x1jp4hB/SWqKJH18pZcLQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692871"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:27 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 25/31] drm/i915/bios: parse EHL's VS/PE-O tables
Date: Thu,  7 May 2026 03:31:31 +0200
Message-ID: <20260507013137.527510-26-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: D01084E1FFC
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

EHL's VS/PE-O tables have more columns than icl_ddi_buf_trans contains
fields. This prevents casting block->tables to point at
icl_ddi_buf_trans and parsing it trivially.

Parse each entry from every table into kzalloc'd buffers' matrix. Read
number of tables and number of columns from the block. Assume that each
table contains 10 rows.

Inflate icl_ddi_buf_trans since each VBT-based value is stored on u32.
Reducing the size will be done in separate commit.

Add EHL to workaround for availability of VS/PE-O parsing.

v2->v3
- remove unnecessary braces from if block

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 34 +++++++++++++++++++
 .../drm/i915/display/intel_ddi_buf_trans.h    | 10 +++---
 2 files changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c6a53319809ee..5e1000a72cf74 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2187,6 +2187,32 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static void
+parse_vswing_preemph_icl(union intel_ddi_buf_trans_entry **bufs_mtrx,
+			 const struct bdb_vswing_preemph *block)
+{
+	union intel_ddi_buf_trans_entry *entry;
+	const u32 *tables = block->tables;
+	u8 num_rows = 10;
+	size_t offset = 0;
+	const u32 *vals;
+
+	for (int idx = 0; idx < block->num_tables; idx++) {
+		for (int row = 0; row < num_rows; row++) {
+			vals = &tables[offset];
+
+			entry = &bufs_mtrx[idx][row];
+			entry->icl.dw2_swing_sel = vals[0];
+			entry->icl.dw7_n_scalar = vals[1];
+			entry->icl.dw4_cursor_coeff = vals[2];
+			entry->icl.dw4_post_cursor_2 = vals[3];
+			entry->icl.dw4_post_cursor_1 = vals[4];
+
+			offset += block->num_columns;
+		}
+	}
+}
+
 static void
 parse_vswing_preemph_snps(union intel_ddi_buf_trans_entry **bufs_mtrx,
 			  const struct bdb_vswing_preemph *block)
@@ -2262,6 +2288,11 @@ parse_vswing_preemph_override(struct intel_display *display)
 		parse_vswing_preemph_lt(bufs_mtrx, block);
 	} else if (DISPLAY_VER(display) >= 14) {
 		parse_vswing_preemph_snps(bufs_mtrx, block);
+	} else if (DISPLAY_VER(display) == 11) {
+		if (display->platform.elkhartlake)
+			parse_vswing_preemph_icl(bufs_mtrx, block);
+		else
+			drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
 	} else {
 		drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
 	}
@@ -2726,6 +2757,9 @@ static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
 		parseable = true;
 	} else if (DISPLAY_VER(display) >= 14) {
 		parseable = true;
+	} else if (DISPLAY_VER(display) == 11) {
+		if (display->platform.elkhartlake)
+			parseable = true;
 	}
 
 	if (!parseable)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index a8c998fa339e6..bfb6de45a94e2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -25,11 +25,11 @@ struct bxt_ddi_buf_trans {
 };
 
 struct icl_ddi_buf_trans {
-	u8 dw2_swing_sel;
-	u8 dw7_n_scalar;
-	u8 dw4_cursor_coeff;
-	u8 dw4_post_cursor_2;
-	u8 dw4_post_cursor_1;
+	u32 dw2_swing_sel;
+	u32 dw7_n_scalar;
+	u32 dw4_cursor_coeff;
+	u32 dw4_post_cursor_2;
+	u32 dw4_post_cursor_1;
 };
 
 struct icl_mg_phy_ddi_buf_trans {
-- 
2.45.2

