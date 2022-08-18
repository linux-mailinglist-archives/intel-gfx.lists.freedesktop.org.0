Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A47035A01D8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 21:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE1CC35CC;
	Wed, 24 Aug 2022 19:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8704710E16C
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 19:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660850552; x=1692386552;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QahClYv1pZJbbhECWPINK9GtUPcR6K/6DFHK12jKTfs=;
 b=fbLnDkbQeYojVwUlhMBDtC+0cJDrUY1XbzGJAV7eVGS9fNyg4pJvw8Dg
 gZtZTz2+TROLcHWVW/AOBHk1sBG0Hmo94L16L7pxDu2BovzqqJHHT9vsM
 CzInzjNdtb1iouaJvDwfYIULbRrEMtLkp6fWzxusdEK0hoKjWyYW/VWgt
 y8Xjd8SRuKBtnxWi32KJCyzow3N43y4cvJH4A8iqglXl2TMtSeg0bKRuB
 a37SopusoVZ+hPc5l+a8c0Hv1zvqn/Bgo48H7cDQNHNsObmysIzBLqQtb
 Cn1mJNtkgaKJUwAbWma30VQelaRux4QEDSKL9d+dIdOPaibWckcxO0wFW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="293641942"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="293641942"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 12:22:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="640984459"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by orsmga001.jf.intel.com with SMTP; 18 Aug 2022 12:22:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Aug 2022 22:22:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Aug 2022 22:22:23 +0300
Message-Id: <20220818192223.29881-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
References: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/bios: Use hardcoded fp_timing size
 for generating LFP data pointers
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

The current scheme for generating the LFP data table pointers
(when the block including them is missing from the VBT) expects
the 0xffff sequence to only appear in the fp_timing terminator
entries. However some VBTs also have extra 0xffff sequences
elsewhere in the LFP data. When looking for the terminators
we may end up finding those extra sequeneces insted, which means
we deduce the wrong size for the fp_timing table. The code
then notices the inconsistent looking values and gives up on
the generated data table pointers, preventing us from parsing
the LFP data table entirely.

Let's give up on the "search for the terminators" approach
and instead just hardcode the expected size for the fp_timing
table.

We have enough sanity checks in place to make sure we
shouldn't end up parsing total garbage even if that size
should change in the future (although that seems unlikely
as the fp_timing and dvo_timing tables have been declared
obsolete as of VBT version 229).

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6592
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 46 +++++++++--------------
 1 file changed, 18 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f1f861da9e93..f54a1843924e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -337,18 +337,6 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 	return validate_lfp_data_ptrs(bdb, ptrs);
 }
 
-static const void *find_fp_timing_terminator(const u8 *data, int size)
-{
-	int i;
-
-	for (i = 0; i < size - 1; i++) {
-		if (data[i] == 0xff && data[i+1] == 0xff)
-			return &data[i];
-	}
-
-	return NULL;
-}
-
 static int make_lfp_data_ptr(struct lvds_lfp_data_ptr_table *table,
 			     int table_size, int total_size)
 {
@@ -372,11 +360,22 @@ static void next_lfp_data_ptr(struct lvds_lfp_data_ptr_table *next,
 static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 				    const void *bdb)
 {
-	int i, size, table_size, block_size, offset;
-	const void *t0, *t1, *block;
+	int i, size, table_size, block_size, offset, fp_timing_size;
 	struct bdb_lvds_lfp_data_ptrs *ptrs;
+	const void *block;
 	void *ptrs_block;
 
+	/*
+	 * The hardcoded fp_timing_size is only valid for
+	 * modernish VBTs. All older VBTs definitely should
+	 * include block 41 and thus we don't need to
+	 * generate one.
+	 */
+	if (i915->vbt.version < 155)
+		return NULL;
+
+	fp_timing_size = 38;
+
 	block = find_raw_section(bdb, BDB_LVDS_LFP_DATA);
 	if (!block)
 		return NULL;
@@ -385,17 +384,8 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 
 	block_size = get_blocksize(block);
 
-	size = block_size;
-	t0 = find_fp_timing_terminator(block, size);
-	if (!t0)
-		return NULL;
-
-	size -= t0 - block - 2;
-	t1 = find_fp_timing_terminator(t0 + 2, size);
-	if (!t1)
-		return NULL;
-
-	size = t1 - t0;
+	size = fp_timing_size + sizeof(struct lvds_dvo_timing) +
+		sizeof(struct lvds_pnp_id);
 	if (size * 16 > block_size)
 		return NULL;
 
@@ -413,7 +403,7 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 	table_size = sizeof(struct lvds_dvo_timing);
 	size = make_lfp_data_ptr(&ptrs->ptr[0].dvo_timing, table_size, size);
 
-	table_size = t0 - block + 2;
+	table_size = fp_timing_size;
 	size = make_lfp_data_ptr(&ptrs->ptr[0].fp_timing, table_size, size);
 
 	if (ptrs->ptr[0].fp_timing.table_size)
@@ -428,14 +418,14 @@ static void *generate_lfp_data_ptrs(struct drm_i915_private *i915,
 		return NULL;
 	}
 
-	size = t1 - t0;
+	size = fp_timing_size + sizeof(struct lvds_dvo_timing) +
+		sizeof(struct lvds_pnp_id);
 	for (i = 1; i < 16; i++) {
 		next_lfp_data_ptr(&ptrs->ptr[i].fp_timing, &ptrs->ptr[i-1].fp_timing, size);
 		next_lfp_data_ptr(&ptrs->ptr[i].dvo_timing, &ptrs->ptr[i-1].dvo_timing, size);
 		next_lfp_data_ptr(&ptrs->ptr[i].panel_pnp_id, &ptrs->ptr[i-1].panel_pnp_id, size);
 	}
 
-	size = t1 - t0;
 	table_size = sizeof(struct lvds_lfp_panel_name);
 
 	if (16 * (size + table_size) <= block_size) {
-- 
2.35.1

