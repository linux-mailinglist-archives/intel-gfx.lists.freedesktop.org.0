Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4421E8BAC6D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B60D31128D6;
	Fri,  3 May 2024 12:25:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VJGRimwG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26C371128D5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739146; x=1746275146;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BuJkWKPVmUAS1fCg8ohmQFivXCf49fx6kvLApjSyjg0=;
 b=VJGRimwGYwINu0nHyvnubOxpK6DYb/xjeYVD4KHqq7ByhUidS2BdnYfL
 xfAog5zMJko0uNU/IKTybpCoP66BqrWTa7E3GTt/ux3BDEwYnHSzLprDc
 Gtj5uCSGaJ0u/54g50j6P4JDScdF59H59zRQEBuxw8T37fhECXlEfuqOq
 IFbklec/GkA0QSSpqT2CiajiRlGYLPKQr+GF6Zz69QKzmjMjaiX1Mo7DV
 etXdJWNhkgjtF6a8scUfdgb22qKj0olZBoGB9uhTfdgDB/Z/auy1yQyrt
 VbV51Mo8/kmimSfD2ML6gT2f7Omqrt9X+CY80B2kaPy4NjURilbffZcEu Q==;
X-CSE-ConnectionGUID: e8EtpA2jSy+FA1qkWGg94A==
X-CSE-MsgGUID: LnC6ZoM4SDOkP91kdLaaOw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372772"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372772"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:46 -0700
X-CSE-ConnectionGUID: Aa0V0uidRbiGjtrcO9C/tg==
X-CSE-MsgGUID: sxgVfXgIS/GQ1c5AV5xDAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463775"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 19/35] drm/i915/bios: Define VBT blocks 16, 29,
 31 (Toggle List) contents
Date: Fri,  3 May 2024 15:24:33 +0300
Message-ID: <20240503122449.27266-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define the contenst is VBT blocks 16,19,31 (Toggle List).
There are three variants of this block: pre-IVB, IVB, HSW+,
with each having slightly different entries.

Curiously many HSW/BDW machines seem to have both the IVB and
HSW+ variants in their VBTs simultanously. No idea why.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 63 ++++++++++++++++++-
 1 file changed, 62 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 2792da3c916e..cfa17a848105 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -155,7 +155,7 @@ enum bdb_block_id {
 	BDB_DRIVER_PERSISTENCE		= 13,
 	BDB_EXT_TABLE_PTRS		= 14, /* VBIOS only */
 	BDB_DOT_CLOCK_OVERRIDE		= 15,
-	BDB_DISPLAY_SELECT		= 16,
+	BDB_DISPLAY_SELECT_OLD		= 16,
 	BDB_SV_TEST_FUNCTIONS		= 17,
 	BDB_DRIVER_ROTATION		= 18,
 	BDB_DISPLAY_REMOVE		= 19,
@@ -167,6 +167,8 @@ enum bdb_block_id {
 	BDB_SDVO_LVDS_PPS		= 25,
 	BDB_TV_OPTIONS			= 26,
 	BDB_EDP				= 27,
+	BDB_DISPLAY_SELECT_IVB		= 29, /* 164+ */
+	BDB_DISPLAY_SELECT_HSW		= 31, /* 166+ */
 	BDB_LFP_OPTIONS			= 40,
 	BDB_LFP_DATA_PTRS		= 41,
 	BDB_LFP_DATA			= 42,
@@ -837,6 +839,27 @@ struct bdb_dot_clock_override {
 	struct dot_clock_override_entry_gen3 table[]; /* or _gen2 */
 } __packed;
 
+/*
+ * Block 16 - Toggle List Block (pre-HSW)
+ */
+
+struct toggle_list_entry_old {
+	u8 display_select_pipe_a;
+	u8 display_select_pipe_b;
+	u8 caps;
+} __packed;
+
+struct toggle_list_table_old {
+	u16 num_entries;
+	u8 entry_size;
+	struct toggle_list_entry_old list[];
+} __packed;
+
+struct bdb_display_select_old {
+	/* each table has variable size! */
+	struct toggle_list_table_old tables[4];
+} __packed;
+
 /*
  * Block 17 - SV Test Functions
  */
@@ -957,6 +980,44 @@ struct bdb_edp {
 	u16 edp_dsc_disable;					/* 251+ */
 } __packed;
 
+/*
+ * Block 29 - Toggle List Block (IVB)
+ */
+
+struct toggle_list_entry_ivb {
+	u8 display_select;
+} __packed;
+
+struct toggle_list_table_ivb {
+	u16 num_entries;
+	u8 entry_size;
+	struct toggle_list_entry_ivb list[];
+} __packed;
+
+struct bdb_display_select_ivb {
+	/* each table has variable size! */
+	struct toggle_list_table_ivb tables[4];
+} __packed;
+
+/*
+ * Block 31 - Toggle List Block (HSW+)
+ */
+
+struct toggle_list_entry_hsw {
+	u16 display_select;
+} __packed;
+
+struct toggle_list_table_hsw {
+	u16 num_entries;
+	u8 entry_size;
+	struct toggle_list_entry_hsw list[];
+} __packed;
+
+struct bdb_display_select_hsw {
+	/* each table has variable size! */
+	struct toggle_list_table_hsw tables[4];
+} __packed;
+
 /*
  * Block 40 - LFP Data Block
  */
-- 
2.43.2

