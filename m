Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446944DCC3D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8386510E630;
	Thu, 17 Mar 2022 17:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C3BC10E61D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647537611; x=1679073611;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0NiAl0yD+5IEInStCZXywkQud14C5ZE7s8DcLBPTE1c=;
 b=bGxvwhIxjlst5jcZchWrYEGkV2GahaZ3AzvQFcFycc+y5/2v2CImSMi9
 hPzPNcTbceC+i5D4ynCWiIk6WoGnpQkWZFUce2posFm2p7mbWAeXglWtB
 tDx9a5LJIIWiShNjUzuOWB78crDZiLuEIw/4ET+WkDh4Q0x/Iyy+IylKa
 EyPBBCpabTNJcqam97io4M33jAKqu/Adbwlm7OviUaP8EUIiOTopvbIbx
 oIUzwRq6tLN1CvxBRlIIwILn+AwR7bR547heaMakvl7H2Ymt6lsrgxqcC
 ImAwyAKEvMkE5wAbbkuKysiSLQwBN0CxFHGjtP1u9G3m+5UWxtVgy4dNa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="239086526"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="239086526"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:19:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="516844964"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 17 Mar 2022 10:19:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:19:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:19:38 +0200
Message-Id: <20220317171948.10400-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915/bios: Extract struct
 lvds_lfp_data_ptr_table
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

All the LFP data table pointers have uniform layout. Turn
that into a struct.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 13 +++++++------
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c7afe19dd44a..31fce7c92a28 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -180,11 +180,11 @@ get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *lvds_lfp_data,
 	 */
 
 	int lfp_data_size =
-		lvds_lfp_data_ptrs->ptr[1].dvo_timing_offset -
-		lvds_lfp_data_ptrs->ptr[0].dvo_timing_offset;
+		lvds_lfp_data_ptrs->ptr[1].dvo_timing.offset -
+		lvds_lfp_data_ptrs->ptr[0].dvo_timing.offset;
 	int dvo_timing_offset =
-		lvds_lfp_data_ptrs->ptr[0].dvo_timing_offset -
-		lvds_lfp_data_ptrs->ptr[0].fp_timing_offset;
+		lvds_lfp_data_ptrs->ptr[0].dvo_timing.offset -
+		lvds_lfp_data_ptrs->ptr[0].fp_timing.offset;
 	char *entry = (char *)lvds_lfp_data->data + lfp_data_size * index;
 
 	return (struct lvds_dvo_timing *)(entry + dvo_timing_offset);
@@ -205,7 +205,7 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
 
 	if (index >= ARRAY_SIZE(ptrs->ptr))
 		return NULL;
-	ofs = ptrs->ptr[index].fp_timing_offset;
+	ofs = ptrs->ptr[index].fp_timing.offset;
 	if (ofs < data_ofs ||
 	    ofs + sizeof(struct lvds_fp_timing) > data_ofs + data_size)
 		return NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index e0508990df48..d727fcd6cdab 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -722,15 +722,16 @@ struct bdb_lvds_options {
 /*
  * Block 41 - LFP Data Table Pointers
  */
+struct lvds_lfp_data_ptr_table {
+	u16 offset; /* offsets are from start of bdb */
+	u8 table_size;
+} __packed;
 
 /* LFP pointer table contains entries to the struct below */
 struct lvds_lfp_data_ptr {
-	u16 fp_timing_offset; /* offsets are from start of bdb */
-	u8 fp_table_size;
-	u16 dvo_timing_offset;
-	u8 dvo_table_size;
-	u16 panel_pnp_id_offset;
-	u8 pnp_table_size;
+	struct lvds_lfp_data_ptr_table fp_timing;
+	struct lvds_lfp_data_ptr_table dvo_timing;
+	struct lvds_lfp_data_ptr_table panel_pnp_id;
 } __packed;
 
 struct bdb_lvds_lfp_data_ptrs {
-- 
2.34.1

