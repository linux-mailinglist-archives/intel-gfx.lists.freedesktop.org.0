Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1B04DCC3B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C3F10E627;
	Thu, 17 Mar 2022 17:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6CB010E61D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537609; x=1679073609;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+Tdk5E6AEWCXfUxsqbGBDJSRJfUQkMBKHhoBzZ1IPU4=;
 b=BoxC52bd9WSkaU0HYybvYiACZRnt85fBj/lwebH/ZQ1gmsqDCcx6fFNl
 3ua/e1OQHHSg9j4kliQXXKCs0lvKQaVsionXNpgv+IWqE66KXy1srEtJ4
 Dv5nqouIPcVsStSYq17s3KoStDTE/glKaeEmHQm46fwHjZoRrREp6v+dh
 IbwTWBVyo0cVQI3zVA8lnAOAd7grLhg5EM95guWUihayRGV863dvpeY3j
 qLfuT9IcKSyeS2s500BLxp2coOtsLPnPLzZwHONzMaKUv/WuQdsG8jF9I
 m+26YxBZAmzjtT5nRfctNPRYH0Id8IwqjmOF5sAWWDLuWW0iD4WfK4qF8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="256874026"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="256874026"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:20:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="645169352"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 17 Mar 2022 10:20:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:20:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:43 +0200
Message-Id: <20220317171948.10400-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915/bios: Validate the panel_name
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
index a2a3fb459a9d..59f16c460d7b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -168,7 +168,7 @@ static u32 block_size(const void *bdb, enum bdb_block_id section_id)
 static bool validate_lfp_data_ptrs(const void *bdb,
 				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
 {
-	int fp_timing_size, dvo_timing_size, panel_pnp_id_size;
+	int fp_timing_size, dvo_timing_size, panel_pnp_id_size, panel_name_size;
 	int data_block_size, lfp_data_size;
 	int i;
 
@@ -183,6 +183,7 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 	fp_timing_size = ptrs->ptr[0].fp_timing.table_size;
 	dvo_timing_size = ptrs->ptr[0].dvo_timing.table_size;
 	panel_pnp_id_size = ptrs->ptr[0].panel_pnp_id.table_size;
+	panel_name_size = ptrs->panel_name.table_size;
 
 	/* fp_timing has variable size */
 	if (fp_timing_size < 32 ||
@@ -190,6 +191,11 @@ static bool validate_lfp_data_ptrs(const void *bdb,
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
@@ -230,6 +236,9 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 			return false;
 	}
 
+	if (ptrs->panel_name.offset + 16 * panel_name_size > data_block_size)
+		return false;
+
 	return true;
 }
 
@@ -253,6 +262,13 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
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
2.34.1

