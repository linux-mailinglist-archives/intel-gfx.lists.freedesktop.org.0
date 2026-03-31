Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPllE8QTzGkvOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F292C37005F
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D3E10EB3F;
	Tue, 31 Mar 2026 18:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8KNyp/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C043B10EAC6;
 Tue, 31 Mar 2026 18:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982078; x=1806518078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WOlZR+66L6Cjv1/7NuA5AR8JN3m83KLleQ5M+T18wJk=;
 b=T8KNyp/vdSlOXCQRbpbCDmPeXKl7IwZClwQGUe5lpex5qTHQkTESqEc/
 iBKw5naQSGtlQI8UY+QFvOyl18QCGNvs4icqyS6VS6SUjSZtKrAn6nR4E
 6WDbA8TBsFUV7F1OULPHA+Il+rakCS88ISeEmpzvQRMHw3V57GZ7XZI3C
 HZqLMpGhMpCJBl/GPGkRuSmSnNuFf2fz4jIdxZn3q6UrCIKkK4jDUmH2m
 PNNcoLiUqT3rwnAtzimQGnV9tVv/hsKl/PuD3+Xvj9o7yUWwyNUvWSCb0
 LBjqVTLu4uydWaCPOGhUu01Nb1jr6cNRXYDuJKH69cv2UCh7N8Vq5MyPp A==;
X-CSE-ConnectionGUID: k6NF48WQQEOnhsJOlXyruQ==
X-CSE-MsgGUID: quL4Bq1rTTqp82vGRf+Isg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705176"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705176"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:38 -0700
X-CSE-ConnectionGUID: Ege215fXTQGhKpSFwR1ALQ==
X-CSE-MsgGUID: +A2cuAbARISzoz9HRQAOqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944477"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:37 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 07/16] drm/i915/bios: parse EHL's VS/PE Override Block #57
Date: Tue, 31 Mar 2026 20:33:23 +0200
Message-ID: <20260331183332.1773886-8-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: F292C37005F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Parse content of VBT #57 into buffers' table. In case of EHL we cannot
parse the content by simply casting pointer to the memory location since
VBT #57 contains more fields than it is actually needed.

Parse VBT #57 going row-wise since VBT #57 is a contiguous block.

Reuse LOW() macro for extracting lower byte out of u32 value read from
Block 57.

Equivalently, extraction of lower byte could be done by cast to (u8).
This approach would have the advantage of dropping "drm/i915/buf_trans:
switch from u8 to u32" patch.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c09af91ab55f..f2f1a57dbdbc 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2188,6 +2188,35 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static void
+parse_vswing_preemph_icl(union intel_ddi_buf_trans_entry **bufs_table,
+			     const struct bdb_vswing_preemph *block)
+{
+	union intel_ddi_buf_trans_entry *entry;
+	const u32 *tables = block->tables;
+	u32 num_rows = 10;
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
+			entry->icl.dw2_swing_sel = LOW(vals[0]);
+			entry->icl.dw7_n_scalar = LOW(vals[1]);
+			entry->icl.dw4_cursor_coeff = LOW(vals[2]);
+			entry->icl.dw4_post_cursor_2 = LOW(vals[3]);
+			entry->icl.dw4_post_cursor_1 = LOW(vals[4]);
+
+			offset += row_width;
+		}
+	}
+}
+
 static void
 parse_vswing_preemph_snps(union intel_ddi_buf_trans_entry **bufs_table,
 			  const struct bdb_vswing_preemph *block)
@@ -2276,6 +2305,8 @@ parse_vswing_preemph_override(struct intel_display *display)
 		parse_vswing_preemph_snps(bufs_table, block);
 	} else if (display->platform.battlemage) {
 		parse_vswing_preemph_snps(bufs_table, block);
+	} else if (display->platform.elkhartlake) {
+		parse_vswing_preemph_icl(bufs_table, block);
 	} else {
 		drm_dbg_kms(display->drm, "Vswing / Preemph Override not yet supported on the platform\n");
 		bufs_table = NULL;
-- 
2.45.2

