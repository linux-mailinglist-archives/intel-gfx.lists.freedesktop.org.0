Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D51D4DCC39
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F0110E626;
	Thu, 17 Mar 2022 17:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236BF10E601
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537604; x=1679073604;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/S+DrFfPc0l+OY0y/9bEW8OMe2iwRTUfkr1uPMQLgWc=;
 b=INujcDJux/kBI4Pt6n4QCvXJYPawshKrMlKR4PgsqjY0UtZ/IPPrkfXy
 Dx79Lj41gYwj7SuLpH2q0AZ3/Xrp7WTLWonTBzeoB6mCuQ+dE25VXgsjX
 auiaLHAhnVV9rqEqclhgW2WlCaBXHY+pgxsLta+cPwb/icXqR9zztdK76
 ekIcD9XyYtZenqsmm/AumjGMCD8mm5cZKmL8m6t345l/kuyqpiEagoP9a
 mI2S96KahhAFCXCTk4fAEu8d6V5lCWWvCNaKX68Mk/QWSfXyCWZ//KyrY
 srmPpR+TJbojhA2m+KrEy5cD708To5sUWBUC7PZtjeY7uhP4hTXUeqEcL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343359118"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343359118"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="635434482"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 17 Mar 2022 10:20:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:20:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:41 +0200
Message-Id: <20220317171948.10400-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/11] drm/i915/bios: Validate LFP data table
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
table entries, evetything points correctly into the data block,
etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 82 ++++++++++++++++++++++-
 1 file changed, 81 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 777339f5dd79..29953996a474 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -153,6 +153,86 @@ static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
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
@@ -173,7 +253,7 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 		ptrs->ptr[i].panel_pnp_id.offset -= offset;
 	}
 
-	return true;
+	return validate_lfp_data_ptrs(bdb, ptrs);
 }
 
 static const void *
-- 
2.34.1

