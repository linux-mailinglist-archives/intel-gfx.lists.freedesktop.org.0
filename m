Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F2B8BAC68
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 846161128CF;
	Fri,  3 May 2024 12:25:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PkVUCXLh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998F61128CF
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739137; x=1746275137;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=o3WBIFyAuqda06XM8aepQwzrJcsRB+yURtojspmfwYM=;
 b=PkVUCXLhkLvzEdIlLLEEBdPCoqtYwAdy11nydxRCCHJKulpdieXsbX19
 6/au+1LnGpbZLQIhZ0uyEUjySSNhyySd/AWvuFDzTrlOxkwEWA7bnNlFh
 ZBVSMA5+zLHAeeBNXckeLge0M13GUDMrNnldzO1x2eYyNdG7+/GeGa+ai
 ZOCa0XL9yMFIIscmkIq3fLMb3362I1CgVXxCzfy8o3H3xh0jI1jwFpmcb
 OeAN7iiY0XKJ+0Wgvp895wi7SBvZjENRZCAFy2bQyCXUM79aAOvX7jmI5
 ztMv8q+KCZ2m5v4eG4H9Ja5hu3MDArCYoskJEl9XQ5colQ4R/RuudIf4Z Q==;
X-CSE-ConnectionGUID: 4L45dXnORnOifhiBDasz5Q==
X-CSE-MsgGUID: snoF6Z+QRjC2ix+fLfKD2Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372764"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372764"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:37 -0700
X-CSE-ConnectionGUID: i+sY/IFlRWO3jAByAKnnLQ==
X-CSE-MsgGUID: OGA79yW7QOuHi0J8STZLNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463749"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 16/35] drm/i915/bios: Define ALM only VBT block 9 contents
Date: Fri,  3 May 2024 15:24:30 +0300
Message-ID: <20240503122449.27266-17-ville.syrjala@linux.intel.com>
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

For some reason ALM VBT has two dot clock override tables.
One as the normal block 15 and a second one as block 9.
The table in block 9 has no row_size/num_rows information.

On my Fujitsu Lifebook S6010 only the block 9 table has actual
data in it. Block 15 is present but all zeroes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 31 ++++++++++++-------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index c2f73c7d9412..b836dee09f59 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -147,6 +147,7 @@ enum bdb_block_id {
 	BDB_EXT_MMIO_REGS		= 6, /* VBIOS only */
 	BDB_SWF_IO			= 7, /* VBIOS only */
 	BDB_SWF_MMIO			= 8, /* VBIOS only */
+	BDB_DOT_CLOCK_OVERRIDE_ALM	= 9,
 	BDB_PSR				= 9, /* 165+ */
 	BDB_MODE_REMOVAL_TABLE		= 10,
 	BDB_CHILD_DEVICE_TABLE		= 11,
@@ -650,6 +651,25 @@ struct bdb_reg_table {
 	/* u16 table_end_marker; */
 } __packed;
 
+/*
+ * Block 9 - Undocumented table (ALM only)
+ */
+
+struct dot_clock_override_entry_gen2 {
+	u32 dotclock;
+	u8 n;
+	u8 m1;
+	u8 m2;
+	u8 p1:5;
+	u8 p1_div_by_2:1;
+	u8 reserved:1;
+	u8 p2_div_by_4:1;
+} __packed;
+
+struct bdb_dot_clock_override_alm {
+	struct dot_clock_override_entry_gen2 t[0];
+} __packed;
+
 /*
  * Block 9 - SRD Feature Block
  */
@@ -801,17 +821,6 @@ struct bdb_driver_persistence {
  * Block 15 - Dot Clock Override Table
  */
 
-struct dot_clock_override_entry_gen2 {
-	u32 dotclock;
-	u8 n;
-	u8 m1;
-	u8 m2;
-	u8 p1:5;
-	u8 p1_div_by_2:1;
-	u8 reserved:1;
-	u8 p2_div_by_4:1;
-} __packed;
-
 struct dot_clock_override_entry_gen3 {
 	u32 dotclock;
 	u8 n;
-- 
2.43.2

