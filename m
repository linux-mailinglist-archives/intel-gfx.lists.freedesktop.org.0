Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 272F78BAC6E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D5FD1128D9;
	Fri,  3 May 2024 12:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JvJad9t5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBBF71128D7
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739149; x=1746275149;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u9ZXDEPddC2YF8PtAnmgE0qb2oZEpavMTjfrpre99XE=;
 b=JvJad9t5AUQUNT1nd1EXGY2458qmQDvLpbW6DV9ibHI5VaPLAKzbahWA
 DVsJkugpirYGeIFLH8wCtjZaCKKBrCwQSbV4+zxaB7HcAahWnjdppBx+H
 T0sBHxKKJglbbDDjCc1Ik8eq2I5b4Q75SYF80XnIbH709DdoXM6SBCsif
 1hhVE9252V7XghoAYOs4fkciSB5z0aKgL9ajZF8TnHtO4NKTVlV3qy3Bn
 T51de2QvHq4Rjf7Urp6esjiw1urv+O2HfOG1win49em4V9O7EtOZAEqbn
 HVNhPPgv0XxOUg4qZAT6/dt5UVn2UxJ7JjYqvUueM/FnKo9p/BArTk3lV A==;
X-CSE-ConnectionGUID: eQbfkI/2RJSHIsffZP2tqQ==
X-CSE-MsgGUID: 8MHHlmK6Q2eD4z2QfPU2VA==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372775"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372775"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:48 -0700
X-CSE-ConnectionGUID: u520fv9TQEuQ0ldMWljc3Q==
X-CSE-MsgGUID: /UQS2hSiRL+2UqICh3ciIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463795"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 20/35] drm/i915/bios: Define VBT blocks 19, 30,
 32 (Display Configuration Removal Table) contents
Date: Fri,  3 May 2024 15:24:34 +0300
Message-ID: <20240503122449.27266-21-ville.syrjala@linux.intel.com>
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

Define the contenst is VBT blocks 19,30,32 (Display Configuration
Removal Table) contents. There are three variants of this block:
pre-IVB, IVB, HSW+, with each having slightly different entries.

Curiously many HSW/BDW machines seem to have both the IVB and HSW+
variants in their VBTs simultanously. No idea why.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 47 ++++++++++++++++++-
 1 file changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index cfa17a848105..30d60835e4d0 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -158,7 +158,7 @@ enum bdb_block_id {
 	BDB_DISPLAY_SELECT_OLD		= 16,
 	BDB_SV_TEST_FUNCTIONS		= 17,
 	BDB_DRIVER_ROTATION		= 18,
-	BDB_DISPLAY_REMOVE		= 19,
+	BDB_DISPLAY_REMOVE_OLD		= 19,
 	BDB_OEM_CUSTOM			= 20,
 	BDB_EFP_LIST			= 21, /* workarounds for VGA hsync/vsync */
 	BDB_SDVO_LVDS_OPTIONS		= 22,
@@ -168,7 +168,9 @@ enum bdb_block_id {
 	BDB_TV_OPTIONS			= 26,
 	BDB_EDP				= 27,
 	BDB_DISPLAY_SELECT_IVB		= 29, /* 164+ */
+	BDB_DISPLAY_REMOVE_IVB		= 30, /* 164+ */
 	BDB_DISPLAY_SELECT_HSW		= 31, /* 166+ */
+	BDB_DISPLAY_REMOVE_HSW		= 32, /* 166+ */
 	BDB_LFP_OPTIONS			= 40,
 	BDB_LFP_DATA_PTRS		= 41,
 	BDB_LFP_DATA			= 42,
@@ -880,6 +882,21 @@ struct bdb_driver_rotation {
 	u32 rotation_flags_4;
 } __packed;
 
+/*
+ * Block 19 - Display Configuration Removal Table (pre-IVB)
+ */
+
+struct display_remove_entry_old {
+	u8 display_select_pipe_a;
+	u8 display_select_pipe_b;
+} __packed;
+
+struct bdb_display_remove_old {
+	u8 num_entries;
+	u8 entry_size;
+	struct display_remove_entry_old table[];
+} __packed;
+
 /*
  * Block 22 - SDVO LVDS General Options
  */
@@ -999,6 +1016,20 @@ struct bdb_display_select_ivb {
 	struct toggle_list_table_ivb tables[4];
 } __packed;
 
+/*
+ * Block 30 - Display Configuration Removal Table (IVB)
+ */
+
+struct display_remove_entry_ivb {
+	u8 display_select;
+} __packed;
+
+struct bdb_display_remove_ivb {
+	u8 num_entries;
+	u8 entry_size;
+	struct display_remove_entry_ivb table[];
+} __packed;
+
 /*
  * Block 31 - Toggle List Block (HSW+)
  */
@@ -1018,6 +1049,20 @@ struct bdb_display_select_hsw {
 	struct toggle_list_table_hsw tables[4];
 } __packed;
 
+/*
+ * Block 32 - Display Configuration Removal Table (HSW+)
+ */
+
+struct display_remove_entry_hsw {
+	u16 display_select;
+} __packed;
+
+struct bdb_display_remove_hsw {
+	u8 num_entries;
+	u8 entry_size;
+	struct display_remove_entry_hsw table[];
+} __packed;
+
 /*
  * Block 40 - LFP Data Block
  */
-- 
2.43.2

