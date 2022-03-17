Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0524DCF3A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 21:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052AF10E773;
	Thu, 17 Mar 2022 20:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DCB010E773
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 20:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647548517; x=1679084517;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0w0gJQIbY4znMk2HLwkpKHPw+SvrD0sPjMArnIOIiVY=;
 b=HZE3WmdUslLfc1PazkNRPe6GcXXOoPbnqjZ+jAXuDt799KOGU/oNN6Iz
 o2B5gmoEaqGO0QP2Nfu5Scb/8lUGrGFtszNFRCfTjrPHDuKGjVRDmTaYR
 Pfmiw5c9wI6IdGURj3A+ild1izWCswap1db9q4ccf9hzFKEGEeDE/4il1
 ht33ol0rB2AJcfOllid9IofEqNhNITWxgr0btaG4Vdh67P27ESJ6xToU/
 bN3fmLWVMLoRsAKdcVl5vIYmFM9t1uR+w7y+VMATMJ/DLuihceO6Atjwh
 Le3qgAFWfv5r3J/Rmju5AOHlU/8wrofETcUpsH5FajOYYxLu92W44n9LG Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237589806"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="237589806"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 13:21:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="516911790"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 17 Mar 2022 13:21:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 22:21:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 22:21:53 +0200
Message-Id: <20220317202153.5719-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-4-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/11] drm/i915/bios: Use the copy of the LFP
 data table always
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

Currently get_lvds_fp_timing() still returns a pointer to the original
data block rather than our copy. Let's convert the data pointer offsets
to be relative to the data block rather than the whole BDB. With that
we can make get_lvds_fp_timing() return a pointer to the copy.

v2: Rebase

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 41 +++++++++++++++++++----
 1 file changed, 34 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ffeaf7f6405f..777339f5dd79 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -153,6 +153,29 @@ static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
 	return block - bdb;
 }
 
+/* make the data table offsets relative to the data block */
+static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
+{
+	struct bdb_lvds_lfp_data_ptrs *ptrs = ptrs_block;
+	u32 offset;
+	int i;
+
+	offset = block_offset(bdb, BDB_LVDS_LFP_DATA);
+
+	for (i = 0; i < 16; i++) {
+		if (ptrs->ptr[i].fp_timing.offset < offset ||
+		    ptrs->ptr[i].dvo_timing.offset < offset ||
+		    ptrs->ptr[i].panel_pnp_id.offset < offset)
+			return false;
+
+		ptrs->ptr[i].fp_timing.offset -= offset;
+		ptrs->ptr[i].dvo_timing.offset -= offset;
+		ptrs->ptr[i].panel_pnp_id.offset -= offset;
+	}
+
+	return true;
+}
+
 static const void *
 find_section(struct drm_i915_private *i915,
 	     const void *bdb, enum bdb_block_id section_id,
@@ -189,6 +212,13 @@ find_section(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
 		    section_id, block_size, min_size);
 
+	if (section_id == BDB_LVDS_LFP_DATA_PTRS &&
+	    !fixup_lfp_data_ptrs(bdb, entry->data + 3)) {
+		drm_err(&i915->drm, "VBT has malformed LFP data table pointers\n");
+		kfree(entry);
+		return NULL;
+	}
+
 	list_add(&entry->node, &i915->vbt.bdb_blocks);
 
 	return entry->data + 3;
@@ -270,22 +300,19 @@ get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *lvds_lfp_data,
  * this function may return NULL if the corresponding entry is invalid
  */
 static const struct lvds_fp_timing *
-get_lvds_fp_timing(const struct bdb_header *bdb,
-		   const struct bdb_lvds_lfp_data *data,
+get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
 		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
 		   int index)
 {
-	size_t data_ofs = block_offset(bdb, BDB_LVDS_LFP_DATA);
 	u16 data_size = ((const u16 *)data)[-1]; /* stored in header */
 	size_t ofs;
 
 	if (index >= ARRAY_SIZE(ptrs->ptr))
 		return NULL;
 	ofs = ptrs->ptr[index].fp_timing.offset;
-	if (ofs < data_ofs ||
-	    ofs + sizeof(struct lvds_fp_timing) > data_ofs + data_size)
+	if (ofs + sizeof(struct lvds_fp_timing) > data_size)
 		return NULL;
-	return (const struct lvds_fp_timing *)((const u8 *)bdb + ofs);
+	return (const struct lvds_fp_timing *)((const u8 *)data + ofs);
 }
 
 /* Parse general panel options */
@@ -388,7 +415,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 		    "Found panel mode in BIOS VBT legacy lfp table:\n");
 	drm_mode_debug_printmodeline(panel_fixed_mode);
 
-	fp_timing = get_lvds_fp_timing(bdb, lvds_lfp_data,
+	fp_timing = get_lvds_fp_timing(lvds_lfp_data,
 				       lvds_lfp_data_ptrs,
 				       panel_type);
 	if (fp_timing) {
-- 
2.34.1

