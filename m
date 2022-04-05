Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1BF4F3CE4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3968B10EDA2;
	Tue,  5 Apr 2022 17:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC6210ED9D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180065; x=1680716065;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=338ru83bqkjn18NS8B+LdEAPv7YXbvYUOgH+AlmPM6M=;
 b=EbjqmDsO18m9VR7hk8o7fzcSpO9RcjYXNDVsz1uVTQnHMQLDJo+UuDVh
 fNjwTrMaCEog5ATbJP7ULFJSTT7Y/c7vNp5lBEsz6CPW9Q8047TNsXdPY
 eyuurbzhzS8AoY/RYPX2NZt0uVw8dBltNQM9sOwaFB2Gwbd2QR9kfwG70
 WNHHcbLg5qoehFWnDEBKRRPGz9BIKQM672Jx/ypcnY13Lrb+04Gcu+I64
 NhlbIxG6Vzz8og0QfL4/Wl3Q5xSuuQ4oyrRT5KHmU/KBjjZOeNbQxo//N
 85dx6+gGwlZzJR7Bz+8CmmeaMF1podZemZ8nxlqHXt5+DaXQuoPc6lD/j g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="260809854"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="260809854"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="549151513"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 05 Apr 2022 10:34:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:33:52 +0300
Message-Id: <20220405173410.11436-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/22] drm/i915/bios: Validate LFP data table
 pointers
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

Make sure the LFP data table pointers sane. Sensible looking
table entries, everything points correctly into the data block,
etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 82 ++++++++++++++++++++++-
 1 file changed, 81 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 000544280c35..cd82ea4de8e1 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -133,6 +133,18 @@ static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
 	return block - bdb;
 }
 
+/* size of the block excluding the header */
+static u32 block_size(const void *bdb, enum bdb_block_id section_id)
+{
+	const void *block;
+
+	block = find_raw_section(bdb, section_id);
+	if (!block)
+		return 0;
+
+	return get_blocksize(block);
+}
+
 struct bdb_block_entry {
 	struct list_head node;
 	enum bdb_block_id section_id;
@@ -191,6 +203,74 @@ static const struct {
 	  .min_size = sizeof(struct bdb_generic_dtd), },
 };
 
+static bool validate_lfp_data_ptrs(const void *bdb,
+				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
+{
+	int fp_timing_size, dvo_timing_size, panel_pnp_id_size;
+	int data_block_size, lfp_data_size;
+	int i;
+
+	data_block_size = block_size(bdb, BDB_LVDS_LFP_DATA);
+	if (data_block_size == 0)
+		return false;
+
+	/* always 3 indicating the presence of fp_timing+dvo_timing+panel_pnp_id */
+	if (ptrs->lvds_entries != 3)
+		return false;
+
+	fp_timing_size = ptrs->ptr[0].fp_timing.table_size;
+	dvo_timing_size = ptrs->ptr[0].dvo_timing.table_size;
+	panel_pnp_id_size = ptrs->ptr[0].panel_pnp_id.table_size;
+
+	/* fp_timing has variable size */
+	if (fp_timing_size < 32 ||
+	    dvo_timing_size != sizeof(struct lvds_dvo_timing) ||
+	    panel_pnp_id_size != sizeof(struct lvds_pnp_id))
+		return false;
+
+	lfp_data_size = ptrs->ptr[1].fp_timing.offset - ptrs->ptr[0].fp_timing.offset;
+	if (16 * lfp_data_size > data_block_size)
+		return false;
+
+	/*
+	 * Except for vlv/chv machines all real VBTs seem to have 6
+	 * unaccounted bytes in the fp_timing table. And it doesn't
+	 * appear to be a really intentional hole as the fp_timing
+	 * 0xffff terminator is always within those 6 missing bytes.
+	 */
+	if (fp_timing_size + dvo_timing_size + panel_pnp_id_size != lfp_data_size &&
+	    fp_timing_size + 6 + dvo_timing_size + panel_pnp_id_size != lfp_data_size)
+		return false;
+
+	if (ptrs->ptr[0].fp_timing.offset + fp_timing_size > ptrs->ptr[0].dvo_timing.offset ||
+	    ptrs->ptr[0].dvo_timing.offset + dvo_timing_size != ptrs->ptr[0].panel_pnp_id.offset ||
+	    ptrs->ptr[0].panel_pnp_id.offset + panel_pnp_id_size != lfp_data_size)
+		return false;
+
+	/* make sure the table entries have uniform size */
+	for (i = 1; i < 16; i++) {
+		if (ptrs->ptr[i].fp_timing.table_size != fp_timing_size ||
+		    ptrs->ptr[i].dvo_timing.table_size != dvo_timing_size ||
+		    ptrs->ptr[i].panel_pnp_id.table_size != panel_pnp_id_size)
+			return false;
+
+		if (ptrs->ptr[i].fp_timing.offset - ptrs->ptr[i-1].fp_timing.offset != lfp_data_size ||
+		    ptrs->ptr[i].dvo_timing.offset - ptrs->ptr[i-1].dvo_timing.offset != lfp_data_size ||
+		    ptrs->ptr[i].panel_pnp_id.offset - ptrs->ptr[i-1].panel_pnp_id.offset != lfp_data_size)
+			return false;
+	}
+
+	/* make sure the tables fit inside the data block */
+	for (i = 0; i < 16; i++) {
+		if (ptrs->ptr[i].fp_timing.offset + fp_timing_size > data_block_size ||
+		    ptrs->ptr[i].dvo_timing.offset + dvo_timing_size > data_block_size ||
+		    ptrs->ptr[i].panel_pnp_id.offset + panel_pnp_id_size > data_block_size)
+			return false;
+	}
+
+	return true;
+}
+
 /* make the data table offsets relative to the data block */
 static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 {
@@ -211,7 +291,7 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 		ptrs->ptr[i].panel_pnp_id.offset -= offset;
 	}
 
-	return true;
+	return validate_lfp_data_ptrs(bdb, ptrs);
 }
 
 static void
-- 
2.35.1

