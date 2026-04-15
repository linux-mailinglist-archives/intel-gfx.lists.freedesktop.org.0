Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GP+oA58j4GmbcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CDF40915B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 732D310E7FB;
	Wed, 15 Apr 2026 23:47:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtbJhug2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9BF110E7DD;
 Wed, 15 Apr 2026 23:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296840; x=1807832840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ybDl5ZCjntOwrQROIxgWtTmhIe25+76SutAGJqanOU=;
 b=CtbJhug21oRh5aXvogw7uWSwq1N8gQTz51PvIigSrBP/C5jYPw3urKNH
 2qTD4Eeo0A88Ti0rd2NEbOAuQD+BXECMb8GbX6ebG5xAS1ezBpb/7/nBG
 eZgRP2vKAX0rMlyQ5kfu+XmK/MQqj9ZA723u3yAfowu52tkZURiwqgbD5
 uCjUP5GluyfJ0/f97Sjm8cLm9xoVALd30Cv3F+lSYxVkhfETmPUPk8GaZ
 d1q55mJyxFr1r7jQ3GzdzZNYNtVtoz1Ty1iSmRMNK4rszRUtw6qAgtnTW
 qrSVxYY0nmdJhcrhtVefQHWhTpP9GKQ6QFarQO1X/y0IZywjKhHpAItQx w==;
X-CSE-ConnectionGUID: Jo+k7TvnQtiWfVy+n7sezw==
X-CSE-MsgGUID: caOPvM33S5+JJz+JADW22Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403513"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403513"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:20 -0700
X-CSE-ConnectionGUID: aB3UpHOLS9imRQkmL2Di7g==
X-CSE-MsgGUID: stiLnzp5QW6VfryoXA8dag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511210"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:19 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 20/32] drm/i915/bios: parse Snps's VS/PE-O tables
Date: Thu, 16 Apr 2026 01:46:27 +0200
Message-ID: <20260415234639.3577774-21-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260415234639.3577774-1-michal.grzelak@intel.com>
References: <20260415234639.3577774-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B4CDF40915B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 28 +++++++++++++++++++
 .../drm/i915/display/intel_ddi_buf_trans.h    |  6 ++--
 2 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2d307300a7dcb..9380b4a13fdea 100644
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
@@ -2236,6 +2260,8 @@ parse_vswing_preemph_override(struct intel_display *display)
 
 	if (HAS_LT_PHY(display)) {
 		parse_vswing_preemph_lt(bufs_mtrx, block);
+	} else if (DISPLAY_VER(display) >= 14) {
+		parse_vswing_preemph_snps(bufs_mtrx, block);
 	} else {
 		drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
 	}
@@ -2698,6 +2724,8 @@ static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
 
 	if (HAS_LT_PHY(display)) {
 		parseable = true;
+	} else if (DISPLAY_VER(display) >= 14) {
+		parseable = true;
 	}
 
 	if (!parseable)
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

