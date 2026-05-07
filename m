Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gB0MM5Hr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CECF4E1F74
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C3B10EF3B;
	Thu,  7 May 2026 01:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jv3cM0Bs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA3210EF3B;
 Thu,  7 May 2026 01:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117518; x=1809653518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jy4TEK1dT5Z5M0yFSq1gNbzVcQVGCbb8kq2IDK+bArg=;
 b=Jv3cM0BsxML7eW+fgpCODHiAOjMng1/03tebwT4Mvy9ZP3+lrMZpW8EL
 gIRyWFwBGFsY23PifJDML/FI/0P3frPazOi78BDveY60rarN++fHWhr5P
 YnpzRxxW+3h98BZl1RjWVJ/DlsJM9Fk06lwZtzuw9ed0uf4eGpvinVIyE
 D207ICecZT94QVsCygqqurYBHxXWaPUvYHwu5VEvbu16Bbg1zR5+J2Gar
 rFwesdOQxIuuA5b10ZcSmocPI933vW6nBGrhZn0TgMJyxayvW15AA/2lZ
 cLdwdob6367WrZqPKuhxTGxP0WECRBELBso8eFtVEz8m9ThFKq5YcshBx A==;
X-CSE-ConnectionGUID: C1GuA6l3TuiceocexxBkCQ==
X-CSE-MsgGUID: 85URu04gRv+fRSM6f1q38Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089022"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089022"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:31:58 -0700
X-CSE-ConnectionGUID: oxGhVnUFQXiJfohg5oz0IA==
X-CSE-MsgGUID: 9LdOnnILRBSeUgVud5JYOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692757"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:31:57 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 06/31] drm/i915/bios: structurize VS/PE-O metadata
Date: Thu,  7 May 2026 03:31:12 +0200
Message-ID: <20260507013137.527510-7-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 6CECF4E1F74
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

Store all VS/PE-O relevant metadata inside anonymous struct in
intel_vbt_data. This includes number of rows, number of tables and
allocated memory for buffers' matrix.

Name the field as vspeo: an abomination from VS/PE-O, which in turn
could be expanded to VSwing / Pre-Emphasis Override.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  8 +++++---
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 064eb4fda3f3a..6ac8dd16ea7b8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2211,9 +2211,9 @@ parse_vswing_preemph_override(struct intel_display *display)
 
 	drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
 
-	display->vbt.bufs_mtrx = bufs_mtrx;
-	display->vbt.num_tables = block->num_tables;
-	display->vbt.num_rows = num_rows;
+	display->vbt.vspeo.bufs_mtrx = bufs_mtrx;
+	display->vbt.vspeo.num_tables = block->num_tables;
+	display->vbt.vspeo.num_rows = num_rows;
 }
 
 static u8 translate_iboost(struct intel_display *display, u8 val)
@@ -3013,9 +3013,9 @@ init_vbt_defaults(struct intel_display *display)
 		    display->vbt.lvds_ssc_freq);
 
 	/* Vswing / Preemphasis Override */
-	display->vbt.bufs_mtrx = NULL;
-	display->vbt.num_tables = 0;
-	display->vbt.num_rows = 0;
+	display->vbt.vspeo.bufs_mtrx = NULL;
+	display->vbt.vspeo.num_tables = 0;
+	display->vbt.vspeo.num_rows = 0;
 }
 
 /* Common defaults which may be overridden by VBT. */
@@ -3398,11 +3398,11 @@ void intel_bios_driver_remove(struct intel_display *display)
 		kfree(entry);
 	}
 
-	if (display->vbt.bufs_mtrx) {
-		for (int idx = 0; idx < display->vbt.num_tables; idx++)
-			kfree(display->vbt.bufs_mtrx[idx]);
+	if (display->vbt.vspeo.bufs_mtrx) {
+		for (int idx = 0; idx < display->vbt.vspeo.num_tables; idx++)
+			kfree(display->vbt.vspeo.bufs_mtrx[idx]);
 
-		kfree(display->vbt.bufs_mtrx);
+		kfree(display->vbt.vspeo.bufs_mtrx);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index a91397ecfe017..19ffe62d642c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -242,9 +242,11 @@ struct intel_vbt_data {
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
-	union intel_ddi_buf_trans_entry **bufs_mtrx;
-	int num_tables;
-	int num_rows;
+	struct {
+		union intel_ddi_buf_trans_entry **bufs_mtrx;
+		int num_tables;
+		int num_rows;
+	} vspeo;
 
 	struct sdvo_device_mapping {
 		u8 initialized;
-- 
2.45.2

