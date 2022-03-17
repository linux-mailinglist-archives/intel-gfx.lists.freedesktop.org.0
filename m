Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1694DCC38
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A4C310E60A;
	Thu, 17 Mar 2022 17:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85AEE10E601
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537600; x=1679073600;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CIfaVJkCx/NupNXAaby5l5KPKnurXSogeqnjDweDhiQ=;
 b=WyfC1olA6T8t9WIOjTRfdzS1Gwap1lHzB/DxOXNFN/hf8+JI+HQ6BCo2
 9o7XOzV4gM6MEz1O0DnDi8SFRB3xUy5sNW7wrrd7AOb/ekrI6zYewF0Zz
 5JL7Gu7LnowKBLnVNRqARrtHdEEvTZJ3aeHwkhSxFujrm/PTr1oYuzFVg
 O9IOnr/45Dz1vLQ2d2K93cP6nOmBJstIbx4AIV8CFWqTVyukOhaHim3Zk
 oXaHCrvINC9XBaLDCJ8Axdi00yJXvXD9AEX4cHpZL8dXTuDuhC92o0UZO
 h/jMxc1eJhVvO5su3ee1AZKffkxnr131q3hWNRaTBwRbYfjFxrfnT+/m4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="236869555"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="236869555"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:19:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="513500448"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 17 Mar 2022 10:19:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:19:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:40 +0200
Message-Id: <20220317171948.10400-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/bios: Use the copy of the LFP
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 56 ++++++++++++++++++++---
 1 file changed, 49 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ff04514eb3b7..777339f5dd79 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -138,6 +138,44 @@ find_raw_section(const void *_bdb, enum bdb_block_id section_id)
 	return NULL;
 }
 
+/*
+ * Offset from the start of BDB to the start of the
+ * block data (just past the block header).
+ */
+static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
+{
+	const void *block;
+
+	block = find_raw_section(bdb, section_id);
+	if (!block)
+		return 0;
+
+	return block - bdb;
+}
+
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
@@ -174,6 +212,13 @@ find_section(struct drm_i915_private *i915,
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
@@ -255,22 +300,19 @@ get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *lvds_lfp_data,
  * this function may return NULL if the corresponding entry is invalid
  */
 static const struct lvds_fp_timing *
-get_lvds_fp_timing(const struct bdb_header *bdb,
-		   const struct bdb_lvds_lfp_data *data,
+get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
 		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
 		   int index)
 {
-	size_t data_ofs = (const u8 *)data - (const u8 *)bdb;
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
@@ -373,7 +415,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 		    "Found panel mode in BIOS VBT legacy lfp table:\n");
 	drm_mode_debug_printmodeline(panel_fixed_mode);
 
-	fp_timing = get_lvds_fp_timing(bdb, lvds_lfp_data,
+	fp_timing = get_lvds_fp_timing(lvds_lfp_data,
 				       lvds_lfp_data_ptrs,
 				       panel_type);
 	if (fp_timing) {
-- 
2.34.1

