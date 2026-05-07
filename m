Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIZhLKXr+2llIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 649B84E1FCC
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C467410EF57;
	Thu,  7 May 2026 01:32:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MIgVLt0o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFF210EF4F;
 Thu,  7 May 2026 01:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117538; x=1809653538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aMF+OF4iSPIy7bPZ3IDZqWR4YyJf1GRogaDy9Sxwjes=;
 b=MIgVLt0oS8f/owpFPIWSzKzEi1xjcO6Gta6iDbRBqv4oaaVcrzqMxKIp
 DvtMym9G6LDzhqasw9ycyW79PMqjpa6yakMH8s9temdDFHZcUA8AMdyrX
 tUv44N/bNnY3FGyE+JUQJccUwiacmQ1WDqwXEvHA5IdyxobIZHol7kmnp
 B375k9q7QQ7b5MywQKt7P4+jUwnzLHffCiO9jlKjQr8vcKqVC8F7xTuL0
 fq58T0W3WqBgPMD9cxbKSCNJLYaZcv1aVjsy6IsDBl9Ut8BJAWQT+k9g8
 cv4oEf9t1CdDM6GE0o+ILMplYtXxV02qv4Y+mHqr2qU0tCeNlEPfzvWdj Q==;
X-CSE-ConnectionGUID: o7LlLFFETK2cQH01BilKiQ==
X-CSE-MsgGUID: fu0bt/EIR7WlP+pRAm5fEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089043"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089043"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:18 -0700
X-CSE-ConnectionGUID: ekPxwIucRUC368D07zoBBw==
X-CSE-MsgGUID: 69hCwpnTQY6d7N2oXC48HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692840"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:17 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 19/31] drm/i915/bios: parse Snps's VS/PE-O tables
Date: Thu,  7 May 2026 03:31:25 +0200
Message-ID: <20260507013137.527510-20-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 649B84E1FCC
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

Snps's VS/PE-O tables' layout match with dg2_snps_phy_buf_trans layout.
However VBT-based values are u32 while dg2_snps_phy_buf_trans uses u8.
This width mismatch prevents from casting block->tables to point at
dg2_snps_phy_buf_trans and parsing it trivially.

We will temporarily increase dg2_snps_buf_trans size but eventually we
will get rid of it later. Thus stick to the approach used for LT's
VS/PE-O parsing.

Parse each entry from every table into kzalloc'd buffers' matrix. Read
number of tables and number of columns from the block. Assume that each
table contains 16 rows.

Inflate dg2_snps_phy_buf_trans since each VBT-based value is stored on
u32. Reducing the size will be done in separate commit.

Add Snps to workaround for availability of VS/PE-O parsing.

v2->v3
- remove unnecessary braces from if blocks

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 36 +++++++++++++++++--
 .../drm/i915/display/intel_ddi_buf_trans.h    |  6 ++--
 2 files changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1b14cffe641ae..2d556889316f0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2187,6 +2187,30 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static void
+parse_vswing_preemph_snps(union intel_ddi_buf_trans_entry **bufs_mtrx,
+			  const struct bdb_vswing_preemph *block)
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
+			entry->snps.vswing = vals[0];
+			entry->snps.pre_cursor = vals[1];
+			entry->snps.post_cursor = vals[2];
+
+			offset += block->num_columns;
+		}
+	}
+}
+
 static void
 parse_vswing_preemph_lt(union intel_ddi_buf_trans_entry **bufs_mtrx,
 			const struct bdb_vswing_preemph *block)
@@ -2234,10 +2258,13 @@ parse_vswing_preemph_override(struct intel_display *display)
 	for (int idx = 0; idx < block->num_tables; idx++)
 		bufs_mtrx[idx] = kzalloc_objs(**bufs_mtrx, num_rows);
 
-	if (HAS_LT_PHY(display))
+	if (HAS_LT_PHY(display)) {
 		parse_vswing_preemph_lt(bufs_mtrx, block);
-	else
+	} else if (DISPLAY_VER(display) >= 14) {
+		parse_vswing_preemph_snps(bufs_mtrx, block);
+	} else {
 		drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
+	}
 
 	display->vbt.vspeo.bufs_mtrx = bufs_mtrx;
 	display->vbt.vspeo.num_tables = block->num_tables;
@@ -2695,8 +2722,11 @@ static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
 	if (!intel_bios_encoder_overrides_vswing(devdata))
 		return;
 
-	if (HAS_LT_PHY(display))
+	if (HAS_LT_PHY(display)) {
+		parseable = true;
+	} else if (DISPLAY_VER(display) >= 14) {
 		parseable = true;
+	}
 
 	if (!parseable)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 30fafeeaf62f2..1b48d66189ede 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -45,9 +45,9 @@ struct tgl_dkl_phy_ddi_buf_trans {
 };
 
 struct dg2_snps_phy_buf_trans {
-	u8 vswing;
-	u8 pre_cursor;
-	u8 post_cursor;
+	u32 vswing;
+	u32 pre_cursor;
+	u32 post_cursor;
 };
 
 struct xe3plpd_lt_phy_buf_trans {
-- 
2.45.2

