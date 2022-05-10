Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9FF521279
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B013910E080;
	Tue, 10 May 2022 10:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B31B10E080
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179414; x=1683715414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c5VEhETkw7RGNhf2Zh9Sn09FgdWira5V9BVJTBOLtLc=;
 b=Zn7fnENBGXmcLBxzA8UuGt+LAIWomnqEwPyYwcjRiSUbw9bNotXNTLJg
 N6YZgQmY0oqOyIbcStMjIzi5vj01JTJl/39ByHh17C/sGidszLNn/J5zi
 +jvfGb2MCauTROQXbiRS/7DcFHdO/51AFNTkpK3Kwn150sl5Fh0fKLa8C
 FkyrJ831tL+P9TgLmogBSSI7ceU3fNkbvCi46JkWxkgDARikISDTSh37q
 /QPe50M7A+FFzzqA+koXfXU1G2HEYevEY1dnzusDcZ1Fk1gat0CRK6KF+
 i3t369doEQxWCRQOgsrAYSHp0UDO/jU2sTYWkZ3roZ9P7XoCgj4apXemx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="329928651"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="329928651"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="710968633"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 10 May 2022 03:43:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:42 +0300
Message-Id: <20220510104242.6099-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] drm/i915/bios: Dump PNPID and panel name
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Dump the panel PNPID and name from the VBT.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 24 +++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a6d59b320888..f6a7ab703244 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -25,6 +25,7 @@
  *
  */
 
+#include <drm/drm_edid.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_dsc_helper.h>
 
@@ -603,6 +604,19 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 		return NULL;
 }
 
+static void dump_pnp_id(struct drm_i915_private *i915,
+			const struct lvds_pnp_id *pnp_id,
+			const char *name)
+{
+	u16 mfg_name = be16_to_cpu((__force __be16)pnp_id->mfg_name);
+	char vend[4];
+
+	drm_dbg_kms(&i915->drm, "%s PNPID mfg: %s (0x%x), prod: %u, serial: %u, week: %d, year: %d\n",
+		    name, drm_edid_decode_mfg_id(mfg_name, vend),
+		    pnp_id->mfg_name, pnp_id->product_code, pnp_id->serial,
+		    pnp_id->mfg_week, pnp_id->mfg_year + 1990);
+}
+
 static int opregion_get_panel_type(struct drm_i915_private *i915,
 				   const struct edid *edid)
 {
@@ -646,6 +660,8 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 	edid_id_nodate.mfg_week = 0;
 	edid_id_nodate.mfg_year = 0;
 
+	dump_pnp_id(i915, edid_id, "EDID");
+
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
 		return -1;
@@ -836,6 +852,7 @@ parse_lfp_data(struct drm_i915_private *i915,
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	const struct lvds_pnp_id *pnp_id;
 	int panel_type = panel->vbt.panel_type;
 
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
@@ -849,10 +866,17 @@ parse_lfp_data(struct drm_i915_private *i915,
 	if (!panel->vbt.lfp_lvds_vbt_mode)
 		parse_lfp_panel_dtd(i915, panel, data, ptrs);
 
+	pnp_id = get_lvds_pnp_id(data, ptrs, panel_type);
+	dump_pnp_id(i915, pnp_id, "Panel");
+
 	tail = get_lfp_data_tail(data, ptrs);
 	if (!tail)
 		return;
 
+	drm_dbg_kms(&i915->drm, "Panel name: %.*s\n",
+		    (int)sizeof(tail->panel_name[0].name),
+		    tail->panel_name[panel_type].name);
+
 	if (i915->vbt.version >= 188) {
 		panel->vbt.seamless_drrs_min_refresh_rate =
 			tail->seamless_drrs_min_refresh_rate[panel_type];
-- 
2.35.1

