Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 458C24F3CE2
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621C810ED94;
	Tue,  5 Apr 2022 17:34:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0848510ED94
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180063; x=1680716063;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CpNbzM9zo4GJbBlPA1ZU1Yvc+NT2eQxa48t+BOvlllE=;
 b=LIEOphc4SeUH83GrMULOwj/1xZ76uaiDhV1iieKJcWFUY5FE3dNwCtWG
 SzTcQWDkL3rkEaRz9/mZHgsy95nhO/pJJ8K6B/8o0jhRVh3Qa9uqWAOLO
 uF+61i5wJ4YwvW1MuKnp52RCyDjmBgEH1oVJ6yXHaWJLYs9YqJVP3/qHv
 q8yaK4d+lSdmK+Ivyj82g9Xe9h1mymRjHR9Wrn3ZVVBL+9Wh1kZhe0KuD
 +nXaIyXRzLmLHQDq6W3N8l6SgDselRp3Tub3120VLmHg0RNud1b9uPDHc
 e0ZShGJZMWxPPUsi6a3dGHUlfzDwuj+woOYqYjNDlHgRdDub5hwXDCZU2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="260994147"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="260994147"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="570006784"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 05 Apr 2022 10:34:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:33:51 +0300
Message-Id: <20220405173410.11436-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/22] drm/i915/bios: Use the copy of the LFP
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
 drivers/gpu/drm/i915/display/intel_bios.c | 41 +++++++++++++++++++----
 1 file changed, 34 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2e9f639d092e..000544280c35 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -191,6 +191,29 @@ static const struct {
 	  .min_size = sizeof(struct bdb_generic_dtd), },
 };
 
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
 static void
 init_bdb_block(struct drm_i915_private *i915,
 	       const void *bdb, enum bdb_block_id section_id,
@@ -217,6 +240,13 @@ init_bdb_block(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "Found BDB block %d (size %zu, min size %zu)\n",
 		    section_id, block_size, min_size);
 
+	if (section_id == BDB_LVDS_LFP_DATA_PTRS &&
+	    !fixup_lfp_data_ptrs(bdb, entry->data + 3)) {
+		drm_err(&i915->drm, "VBT has malformed LFP data table pointers\n");
+		kfree(entry);
+		return;
+	}
+
 	list_add_tail(&entry->node, &i915->vbt.bdb_blocks);
 }
 
@@ -312,22 +342,19 @@ get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *lvds_lfp_data,
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
@@ -426,7 +453,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 		    "Found panel mode in BIOS VBT legacy lfp table: " DRM_MODE_FMT "\n",
 		    DRM_MODE_ARG(panel_fixed_mode));
 
-	fp_timing = get_lvds_fp_timing(bdb, lvds_lfp_data,
+	fp_timing = get_lvds_fp_timing(lvds_lfp_data,
 				       lvds_lfp_data_ptrs,
 				       panel_type);
 	if (fp_timing) {
-- 
2.35.1

