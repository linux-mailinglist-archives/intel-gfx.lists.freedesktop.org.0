Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HfhDMMITzGmGOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508B537004B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C403D10EB4C;
	Tue, 31 Mar 2026 18:34:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="krJkYwLq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73A4310EB22;
 Tue, 31 Mar 2026 18:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982077; x=1806518077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eqCUTCR5VFc/YRyeXT9Bz8lU7fEpHvifrZ0TMO/lCzU=;
 b=krJkYwLqCJvT+UR4n4U1iQJ6wUVGljwnCVpPN/pexLL5Mty5jwPXOPM2
 C94327oowVx4n9S1GSnkDju8Y4Nn2oxlfYv7lodqnhYSr3DW/It32Wymg
 8GjNFyO4RXl4+Sk6DW6ac9rJT6QMFBY1VRNG/zaaIE1cc7e0gTpUATtVV
 fCww9tk62mOt0UbM5q9u+tTdpw2jv2VJkLdDmKvUHz8g1va6531wtV+fe
 NQ6EXUaKIxMn49AFBv+Jhw30K+xhfK00bEiS+ZuGPNQHgpcn+UWE4uK1F
 iqSBx569Qej9dk1KOJjs8K+CrR2+/36G8S8e7jfQ35LMUFNevxS40vQ0g Q==;
X-CSE-ConnectionGUID: OJaC8md5TKqaO/Idgj+9mQ==
X-CSE-MsgGUID: mfBoiwHESBCRZckISlmx8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705173"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705173"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:36 -0700
X-CSE-ConnectionGUID: SbAtLOjBSM6s4LZsggN0Xw==
X-CSE-MsgGUID: VTdDdaIAQq6ivnDrwjx+Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944470"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:36 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 06/16] drm/i915/bios: parse Snps's VS/PE Override Block #57
Date: Tue, 31 Mar 2026 20:33:22 +0200
Message-ID: <20260331183332.1773886-7-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 508B537004B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Parse content of VBT #57 into buffers' table. In case of Snps we can
also parse the content by casting pointer to the memory location.

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
index 4b2d86bac2de..c09af91ab55f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2188,6 +2188,33 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static void
+parse_vswing_preemph_snps(union intel_ddi_buf_trans_entry **bufs_table,
+			  const struct bdb_vswing_preemph *block)
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
+			entry->snps.vswing = LOW(vals[0]);
+			entry->snps.pre_cursor = LOW(vals[1]);
+			entry->snps.post_cursor = LOW(vals[2]);
+
+			offset += row_width;
+		}
+	}
+}
+
 static void
 parse_vswing_preemph_lt(union intel_ddi_buf_trans_entry **bufs_table,
 			const struct bdb_vswing_preemph *block)
@@ -2245,6 +2272,10 @@ parse_vswing_preemph_override(struct intel_display *display)
 
 	if (HAS_LT_PHY(display)) {
 		parse_vswing_preemph_lt(bufs_table, block);
+	} else if (DISPLAY_VER(display) >= 14) {
+		parse_vswing_preemph_snps(bufs_table, block);
+	} else if (display->platform.battlemage) {
+		parse_vswing_preemph_snps(bufs_table, block);
 	} else {
 		drm_dbg_kms(display->drm, "Vswing / Preemph Override not yet supported on the platform\n");
 		bufs_table = NULL;
-- 
2.45.2

