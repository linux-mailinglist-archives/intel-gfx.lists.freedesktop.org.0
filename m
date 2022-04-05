Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C414F3CE5
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:34:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D886F10ED6F;
	Tue,  5 Apr 2022 17:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8234510ED6F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180073; x=1680716073;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FdPv7Yqp1UDLecjOuvcDeLcFb39SUDC37l/mcB0TiTc=;
 b=no9ulaPwoUk2tRsEtLE/aU6StciF5GDJSej0rNLQmfJLMMw/axR9JIGB
 KiWaIOOjUnADFghnbwsdMk0NAeLDcBgY/bbgenrYbE3qhbedCqdOqpDQA
 qIdqblDXjQhHUaAhUQzq7gLg8lNN4wcoBT/DrO8m6U+hdrrRR+17eSkeI
 R64kQh6rex2ZUOc3ne8It90Z4vgS7LgtpMNjdBavz7tOGCuPPOS0qtQQp
 FQX4igaHaPAmDYRLlQqGgBQRdUiPWK30GXOKVWfij225kjmnEGl6Ybv2y
 m4WexjaTGcndXy+yw/5jGbUHrGki/puRsyzibp0UeVeAWYR/LxgygxZ0r w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="285777628"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="285777628"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="588016450"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 05 Apr 2022 10:34:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:33:54 +0300
Message-Id: <20220405173410.11436-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/22] drm/i915/bios: Validate the panel_name
 table
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

In addition to the fp_timing,dvo_timing,panel_pnp_id tables
there also exists a panel_name table. Unlike the others this
is just one offset+table_size even though there are still 16
actual panel_names in the data block.

The panel_name table made its first appearance somewhere
around VBT version 156-163. The exact version is not known.
But we don't need to know that since we can just check whether
the pointers block has enough room for it or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  5 +++++
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 925f521f1f84..799c1fe36b23 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -206,7 +206,7 @@ static const struct {
 static bool validate_lfp_data_ptrs(const void *bdb,
 				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
 {
-	int fp_timing_size, dvo_timing_size, panel_pnp_id_size;
+	int fp_timing_size, dvo_timing_size, panel_pnp_id_size, panel_name_size;
 	int data_block_size, lfp_data_size;
 	int i;
 
@@ -221,6 +221,7 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 	fp_timing_size = ptrs->ptr[0].fp_timing.table_size;
 	dvo_timing_size = ptrs->ptr[0].dvo_timing.table_size;
 	panel_pnp_id_size = ptrs->ptr[0].panel_pnp_id.table_size;
+	panel_name_size = ptrs->panel_name.table_size;
 
 	/* fp_timing has variable size */
 	if (fp_timing_size < 32 ||
@@ -228,6 +229,11 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 	    panel_pnp_id_size != sizeof(struct lvds_pnp_id))
 		return false;
 
+	/* panel_name is not present in old VBTs */
+	if (panel_name_size != 0 &&
+	    panel_name_size != sizeof(struct lvds_lfp_panel_name))
+		return false;
+
 	lfp_data_size = ptrs->ptr[1].fp_timing.offset - ptrs->ptr[0].fp_timing.offset;
 	if (16 * lfp_data_size > data_block_size)
 		return false;
@@ -268,6 +274,9 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 			return false;
 	}
 
+	if (ptrs->panel_name.offset + 16 * panel_name_size > data_block_size)
+		return false;
+
 	return true;
 }
 
@@ -291,6 +300,13 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 		ptrs->ptr[i].panel_pnp_id.offset -= offset;
 	}
 
+	if (ptrs->panel_name.table_size) {
+		if (ptrs->panel_name.offset < offset)
+			return false;
+
+		ptrs->panel_name.offset -= offset;
+	}
+
 	return validate_lfp_data_ptrs(bdb, ptrs);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index d727fcd6cdab..e4a11c3e3f3e 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -737,6 +737,7 @@ struct lvds_lfp_data_ptr {
 struct bdb_lvds_lfp_data_ptrs {
 	u8 lvds_entries; /* followed by one or more lvds_data_ptr structs */
 	struct lvds_lfp_data_ptr ptr[16];
+	struct lvds_lfp_data_ptr_table panel_name; /* 156-163? */
 } __packed;
 
 /*
@@ -778,6 +779,10 @@ struct bdb_lvds_lfp_data {
 	struct lvds_lfp_data_entry data[16];
 } __packed;
 
+struct lvds_lfp_panel_name {
+	u8 name[13];
+} __packed;
+
 /*
  * Block 43 - LFP Backlight Control Data Block
  */
-- 
2.35.1

