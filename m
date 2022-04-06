Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 169FC4F6013
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 15:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6029B10E074;
	Wed,  6 Apr 2022 13:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F206410E074
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 13:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649252366; x=1680788366;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iYdDLMthnsiEAW0xzhvRz5zOAV88dYVHJoAjIPdKY34=;
 b=A3tLpU+BZZLkmootDynGplbIhf4glGXSU1zxDCI2b2M3G+etzMya+jYI
 ULH0ZroBTjUrAy9tYY9yXUzf8ST/YarqH68bcyL6tF4d1t0yE+fsE/4Xh
 fQByFzACvAYbgtC2UAopn5ERtYDoCXYBa5ezSb74Ik6PAqGnsmM9Mj//b
 rW/tOs+fpAbyN+w6oUWN3jhCfzgBiIH8dl4bjaHcPhp4G5WsrjGVo4XEv
 k7Sz952KftJImQN679ZcgfmWPc18nFSYcc2mCmYsRrNrDNqwbHTgydKtY
 j8d+VO0I7N1VLE6j0Img/U9Bv9GK4Q+b15PEC7Rql7LS+AYU/iK36kTDj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="241631240"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="241631240"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 06:39:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="523927150"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 06 Apr 2022 06:39:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Apr 2022 16:39:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Apr 2022 16:39:23 +0300
Message-Id: <20220406133923.30709-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-9-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/22] drm/i915/bios: Generate LFP data table
 pointers if the VBT lacks them
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

Modern VBTs no longer contain the LFP data table pointers
block (41). We are expecting to have one in order to be able
to parse the LFP data block (42), so let's make one up.

Since the fp_timing table has variable size we must somehow
determine its size. Rather than just hardcode it we look for
the terminator bytes (0xffff) to figure out where each table
entry starts. dvo_timing, panel_pnp_id, and panel_name are
expected to have fixed size.

This has been observed on various machines, eg. TGL with BDB
version 240, CML with BDB version 231, etc. The most recent
VBT I've observed that still had block 41 had BDB version
228. So presumably the cutoff (if an exact cutoff even exists)
is somewhere around BDB version 229-231.

v2: kfree the thing we allocated, not the thing+3 bytes
v3: Do the debugprint only if we found the LFP data block

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 136 +++++++++++++++++++++-
 1 file changed, 135 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 8b118c54314d..d32091dad1b0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -310,16 +310,146 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 	return validate_lfp_data_ptrs(bdb, ptrs);
 }
 
+static const void *find_fp_timing_terminator(const u8 *data, int size)
+{
+	int i;
+
+	if (!data)
+		return NULL;
+
+	for (i = 0; i < size - 1; i++) {
+		if (data[i] == 0xff && data[i+1] == 0xff)
+			return &data[i];
+	}
+
+	return NULL;
+}
+
+static int make_lfp_data_ptr(struct lvds_lfp_data_ptr_table *table,
+			     int table_size, int total_size)
+{
+	if (total_size < table_size)
+		return total_size;
+
+	table->table_size = table_size;
+	table->offset = total_size - table_size;
+
+	return total_size - table_size;
+}
+
+static void next_lfp_data_ptr(struct lvds_lfp_data_ptr_table *next,
+			      const struct lvds_lfp_data_ptr_table *prev,
+			      int size)
+{
+	next->table_size = prev->table_size;
+	next->offset = prev->offset + size;
+}
+
+static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
+				    const void *bdb)
+{
+	int i, size, table_size, block_size, offset;
+	const void *t0, *t1, *block;
+	struct bdb_lvds_lfp_data_ptrs *ptrs;
+	void *ptrs_block;
+
+	block = find_raw_section(bdb, BDB_LVDS_LFP_DATA);
+	if (!block)
+		return NULL;
+
+	drm_dbg_kms(&i915->drm, "Generating LFP data table pointers\n");
+
+	block_size = get_blocksize(block);
+
+	size = block_size;
+	t0 = find_fp_timing_terminator(block, size);
+
+	size -= t0 - block - 2;
+	t1 = find_fp_timing_terminator(t0 + 2, size);
+
+	if (!t0 || !t1)
+		return NULL;
+
+	size = t1 - t0;
+	if (size * 16 > block_size)
+		return NULL;
+
+	ptrs_block = kzalloc(sizeof(*ptrs) + 3, GFP_KERNEL);
+	if (!ptrs_block)
+		return NULL;
+
+	*(u8 *)(ptrs_block + 0) = BDB_LVDS_LFP_DATA_PTRS;
+	*(u16 *)(ptrs_block + 1) = sizeof(*ptrs);
+	ptrs = ptrs_block + 3;
+
+	table_size = sizeof(struct lvds_pnp_id);
+	size = make_lfp_data_ptr(&ptrs->ptr[0].panel_pnp_id, table_size, size);
+
+	table_size = sizeof(struct lvds_dvo_timing);
+	size = make_lfp_data_ptr(&ptrs->ptr[0].dvo_timing, table_size, size);
+
+	table_size = t0 - block + 2;
+	size = make_lfp_data_ptr(&ptrs->ptr[0].fp_timing, table_size, size);
+
+	if (ptrs->ptr[0].fp_timing.table_size)
+		ptrs->lvds_entries++;
+	if (ptrs->ptr[0].dvo_timing.table_size)
+		ptrs->lvds_entries++;
+	if (ptrs->ptr[0].panel_pnp_id.table_size)
+		ptrs->lvds_entries++;
+
+	if (size != 0 || ptrs->lvds_entries != 3) {
+		kfree(ptrs);
+		return NULL;
+	}
+
+	size = t1 - t0;
+	for (i = 1; i < 16; i++) {
+		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
+		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
+		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
+	}
+
+	size = t1 - t0;
+	table_size = sizeof(struct lvds_lfp_panel_name);
+
+	if (16 * (size + table_size) <= block_size) {
+		ptrs->panel_name.table_size = table_size;
+		ptrs->panel_name.offset = size * 16;
+	}
+
+	offset = block - bdb;
+
+	for (i = 0; i < 16; i++) {
+		ptrs->ptr[i].fp_timing.offset += offset;
+		ptrs->ptr[i].dvo_timing.offset += offset;
+		ptrs->ptr[i].panel_pnp_id.offset += offset;
+	}
+
+	if (ptrs->panel_name.table_size)
+		ptrs->panel_name.offset += offset;
+
+	return ptrs_block;
+}
+
 static void
 init_bdb_block(struct drm_i915_private *i915,
 	       const void *bdb, enum bdb_block_id section_id,
 	       size_t min_size)
 {
 	struct bdb_block_entry *entry;
+	void *temp_block = NULL;
 	const void *block;
 	size_t block_size;
 
 	block = find_raw_section(bdb, section_id);
+
+	/* Modern VBTs lack the LFP data table pointers block, make one up */
+	if (!block && section_id == BDB_LVDS_LFP_DATA_PTRS) {
+		temp_block = generate_lfp_data_ptrs(i915, bdb);
+		if (temp_block)
+			block = temp_block + 3;
+	}
 	if (!block)
 		return;
 
@@ -330,12 +460,16 @@ init_bdb_block(struct drm_i915_private *i915,
 
 	entry = kzalloc(struct_size(entry, data, max(min_size, block_size) + 3),
 			GFP_KERNEL);
-	if (!entry)
+	if (!entry) {
+		kfree(temp_block);
 		return;
+	}
 
 	entry->section_id = section_id;
 	memcpy(entry->data, block - 3, block_size + 3);
 
+	kfree(temp_block);
+
 	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
 		    section_id, block_size, min_size);
 
-- 
2.35.1

