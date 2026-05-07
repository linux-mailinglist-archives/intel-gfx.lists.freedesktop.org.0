Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sN4qHp7r+2llIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 202544E1FB4
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BAD110EF4B;
	Thu,  7 May 2026 01:32:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QiKc1Cij";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFA710EF49;
 Thu,  7 May 2026 01:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117532; x=1809653532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=edkQ80jUzJwRiB6ORW65r0IdpGd+OScuTX+8j01DMpc=;
 b=QiKc1Cij6LZw/bu0V3yTyuP9fR5rXKWX8+THZoWQTzk3MqrKeqHI9QYp
 YQsQ9LekSNmus8Cyl/i70yNb62VIkKmlSKYrquL9TbE2Dac3jDXetuw74
 Pek41MhFsLXClF6Z9bRtD4MUsrH9K+9a9OsUMjil4tfNwh50gODrKBZvy
 +fQJ4eUay8OraYSAtqrjmzbuYxqB7ybU/HLsO9tM5rOJjii0oE6hmzqkh
 zOONzqEfU9BoafnE9IcW7AqwRjJa65kJtOrtXZuGLHZRLo4dMAJ8TVvw6
 KMXYeYappftvAlON77grUAMEkQlgml6TRr7rNm+OUjNiUKkxH1z6Zi7Su w==;
X-CSE-ConnectionGUID: I2t0GEgDQaKddxmOksk9rA==
X-CSE-MsgGUID: ZbGO/BKIT/Kp/A+A3NTBpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089036"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089036"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:12 -0700
X-CSE-ConnectionGUID: P8mgh3YaR4y+hNZJTeb1Pw==
X-CSE-MsgGUID: x2RF7AmjTbyAQ+VsnYYMrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692799"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:11 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 15/31] drm/i915/bios: parse LT's VS/PE-O tables
Date: Thu,  7 May 2026 03:31:21 +0200
Message-ID: <20260507013137.527510-16-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 202544E1FB4
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

LT's VS/PE-O tables have less columns than xe3plpd_lt_phy_buf_trans
contains fields. This prevents casting block->tables to point at
xe3plpd_lt_phy_buf_trans and parsing it trivially.

Parse each entry from every table into kzalloc'd buffers' matrix. Read
number of tables and number of columns from the block. Assume that each
table contains 16 rows.

Inflate xe3plpd_lt_phy_buf_trans since each VBT-based value is
stored on u32. Reducing the size will be done in separate commit.

Add LT to workaround for availability of VS/PE-O parsing.

v2->v3
- remove unnecessary braces from if blocks

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 33 ++++++++++++++++++-
 .../drm/i915/display/intel_ddi_buf_trans.h    | 10 +++---
 2 files changed, 37 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b2ee556e9d1f3..2328429b562df 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2187,6 +2187,30 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static void
+parse_vswing_preemph_lt(union intel_ddi_buf_trans_entry **bufs_mtrx,
+			const struct bdb_vswing_preemph *block)
+{
+	union intel_ddi_buf_trans_entry *entry;
+	const u32 *tables = block->tables;
+	u8 num_rows = 16;
+	size_t offset = 0;
+	const u32 *vals;
+
+	for (int idx = 0; idx < block->num_tables; idx++) {
+		for (int row = 0; row < num_rows; row++) {
+			vals = &tables[offset];
+
+			entry = &bufs_mtrx[idx][row];
+			entry->lt.main_cursor = vals[0];
+			entry->lt.pre_cursor = vals[1];
+			entry->lt.post_cursor = vals[2];
+
+			offset += block->num_columns;
+		}
+	}
+}
+
 static void
 parse_vswing_preemph_override(struct intel_display *display)
 {
@@ -2210,7 +2234,10 @@ parse_vswing_preemph_override(struct intel_display *display)
 	for (int idx = 0; idx < block->num_tables; idx++)
 		bufs_mtrx[idx] = kzalloc_objs(**bufs_mtrx, num_rows);
 
-	drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
+	if (HAS_LT_PHY(display))
+		parse_vswing_preemph_lt(bufs_mtrx, block);
+	else
+		drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
 
 	display->vbt.vspeo.bufs_mtrx = bufs_mtrx;
 	display->vbt.vspeo.num_tables = block->num_tables;
@@ -2659,6 +2686,7 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 
 static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
 {
+	struct intel_display *display = devdata->display;
 	struct intel_ddi_buf_trans *buf_trans;
 	bool parseable = false;
 
@@ -2667,6 +2695,9 @@ static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
 	if (!intel_bios_encoder_overrides_vswing(devdata))
 		return;
 
+	if (HAS_LT_PHY(display))
+		parseable = true;
+
 	if (!parseable)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index ac9acdec6d298..bc4bc80ba6588 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -51,11 +51,11 @@ struct dg2_snps_phy_buf_trans {
 };
 
 struct xe3plpd_lt_phy_buf_trans {
-	u8 main_cursor;
-	u8 pre_cursor;
-	u8 post_cursor;
-	u8 txswing;
-	u8 txswing_level;
+	u32 main_cursor;
+	u32 pre_cursor;
+	u32 post_cursor;
+	u32 txswing;
+	u32 txswing_level;
 };
 
 union intel_ddi_buf_trans_entry {
-- 
2.45.2

