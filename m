Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aO3GOLwTzGkvOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9309B370044
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4A410EB09;
	Tue, 31 Mar 2026 18:34:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C36XRHst";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D6A10EB09;
 Tue, 31 Mar 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982074; x=1806518074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LllQiENeg/pdU/G8graU66/nBKKwm4qnvmajeZaPvMw=;
 b=C36XRHsttcbuEAgSW4z38Y6DJ/XHN82dFjFILzocipYMEhVvrNOqsKSc
 6Won+lJ3kilwWQlA08P/InvZYrf+jCSaJIGPqQMapykGI9YQAtp+5rau0
 gaL+Ix26BNknyAwlmYgr8F1GnWO1AfR11M49P09+T2VLcJ7I0jv5yKGl0
 YHum+oFJqYzIDVJ0L89b45EMO++dW3xLzO5Uf1TWb10tYFdQKaxg34kjl
 Ww0QYO/s29bl0eeFcir5kg68wf1qIH1NXxqSWEEJ3TwvKlzhonXoz3J+z
 LvheGBvCTsYbevbEuUnvWHSmfjKCdt2xeu2HaKvgrdHfJBICpk3xM3MhL A==;
X-CSE-ConnectionGUID: kjYnqWiWTratjOJvaADr+Q==
X-CSE-MsgGUID: niCoTaaCQ/aW9vm8cgsfnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705165"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705165"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:34 -0700
X-CSE-ConnectionGUID: +L6hIXmuTkqSQibXoP+n4A==
X-CSE-MsgGUID: sg5XtLvsTaOj9M9B7zqWew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944456"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:33 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 04/16] drm/i915/bios: prepare for parsing VBT #57
Date: Tue, 31 Mar 2026 20:33:20 +0200
Message-ID: <20260331183332.1773886-5-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 9309B370044
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add dead, generic VBT #57 parsing code since searching for VBT #57 at
the moment is switched off by default.

Add a struct storing all VS/PE relevant data into intel_vbt_data.

Add other possible renames into the comment.

Allocate matrix of intel_ddi_buf_trans_entry. This "buffers' table" (or
"buffers' block", or "tables' block") will be used to store all deparsed
values from VBT #57. Store matrix's pointer in intel_vbt_data.

Deallocate whole matrix on driver removal.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 44 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_core.h |  9 ++++
 2 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b6fe87c29aa7..778584c59fc6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -34,6 +34,7 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
+#include "intel_ddi_buf_trans.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
@@ -2183,6 +2184,38 @@ parse_compression_parameters(struct intel_display *display)
 	}
 }
 
+static void
+parse_vswing_preemph_override(struct intel_display *display)
+{
+	union intel_ddi_buf_trans_entry **bufs_table;
+	const struct bdb_vswing_preemph *block;
+	u8 num_rows;
+
+	if (display->vbt.version < 218)
+		return;
+
+	block = bdb_find_section(display, BDB_VSWING_PREEMPH);
+
+	/* pre-ICL GOP don't have VBT #57 */
+	if (!block)
+		return;
+
+	num_rows = DISPLAY_VER(display) >= 14 ? 16 : 10;
+
+	bufs_table = kzalloc(block->num_tables * sizeof(*bufs_table), GFP_KERNEL);
+
+	for (int idx = 0; idx < block->num_tables; idx++)
+		bufs_table[idx] = kzalloc(num_rows * sizeof(**bufs_table), GFP_KERNEL);
+
+	drm_dbg_kms(display->drm, "Vswing / Preemph Override not yet supported on the platform\n");
+	bufs_table = NULL;
+
+	display->vbt.vswing_preemph.bufs_table = bufs_table;
+	display->vbt.vswing_preemph.num_tables = block->num_tables;
+	display->vbt.vswing_preemph.num_rows = num_rows;
+	display->vbt.vswing_preemph.num_cols = block->num_columns;
+}
+
 static u8 translate_iboost(struct intel_display *display, u8 val)
 {
 	static const u8 mapping[] = { 1, 3, 7 }; /* See VBT spec */
@@ -2978,6 +3011,9 @@ init_vbt_defaults(struct intel_display *display)
 							      !HAS_PCH_SPLIT(display));
 	drm_dbg_kms(display->drm, "Set default to SSC at %d kHz\n",
 		    display->vbt.lvds_ssc_freq);
+
+	/* Vswing / Preemphasis Override */
+	display->vbt.vswing_preemph.bufs_table = NULL;
 }
 
 /* Common defaults which may be overridden by VBT. */
@@ -3274,6 +3310,7 @@ void intel_bios_init(struct intel_display *display)
 
 	/* Depends on child device list */
 	parse_compression_parameters(display);
+	parse_vswing_preemph_override(display);
 
 out:
 	if (!vbt) {
@@ -3358,6 +3395,13 @@ void intel_bios_driver_remove(struct intel_display *display)
 		list_del(&entry->node);
 		kfree(entry);
 	}
+
+	if (display->vbt.vswing_preemph.bufs_table) {
+		for (int idx = 0; idx < display->vbt.vswing_preemph.num_tables; idx++)
+			kfree(display->vbt.vswing_preemph.bufs_table[idx]);
+
+		kfree(display->vbt.vswing_preemph.bufs_table);
+	}
 }
 
 void intel_bios_fini_panel(struct intel_panel *panel)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index d708d322aa85..c18465b1018b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -233,6 +233,15 @@ struct intel_vbt_data {
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
+	struct {
+		// union intel_ddi_buf_trans_entry **tables_block;
+		// union intel_ddi_buf_trans_entry **bufs_block;
+		union intel_ddi_buf_trans_entry **bufs_table;
+		int num_tables;
+		int num_cols;
+		int num_rows;
+	} vswing_preemph;
+
 	struct sdvo_device_mapping {
 		u8 initialized;
 		u8 dvo_port;
-- 
2.45.2

