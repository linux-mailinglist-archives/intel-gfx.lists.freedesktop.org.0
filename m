Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3254F3CF8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D7710EDD8;
	Tue,  5 Apr 2022 17:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75BAA10EDCB
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180131; x=1680716131;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tA1AXKR7/9ZX3lkQ+JJEY+67vVAQ6ehMiTyqE7uBlWU=;
 b=Ev5UHpbBgrgzcrE7/E/zs0tO4iHysLCQSlK6LJI8fMqdiF1qwYUPn0LK
 k32QSil6R446T4UJGGLRIiWCaq9bZAOi3O36pNCenXD9Ot14RuOlYj/lm
 G7fcP8W2I2LCYCF69uHC2XdCqKUV0IpOMIp2EmlSlcKUbHvCpuOEoCcKk
 lqxSP9RktlU8dLxNuP1LQAMDQAhbnWJHso8segSj5Q7I6zDmq5uooEn03
 FJJqep+6j32rV6SW30+vZUEr6BAkXm9/Lx8RxvAkrXUMyyENk/9HMQrHW
 bmaTjRzf6spoJhKk3Ra2akEmflM6FwD9+sKQaoBAoIC8VjG8zFiUD03ok A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="321513796"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="321513796"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:35:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="697022269"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 05 Apr 2022 10:35:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:35:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:10 +0300
Message-Id: <20220405173410.11436-23-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 22/22] drm/i915/bios: Dump PNPID and panel
 name
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

Dump the panel PNPID and name from the VBT.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 24 +++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d561551d6324..953526a7dc5d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -25,6 +25,7 @@
  *
  */
 
+#include <drm/drm_edid.h>
 #include <drm/dp/drm_dp_helper.h>
 
 #include "display/intel_display.h"
@@ -597,6 +598,19 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
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
 static int pnp_id_panel_type(struct drm_i915_private *i915,
 			     const struct edid *edid)
 {
@@ -615,6 +629,8 @@ static int pnp_id_panel_type(struct drm_i915_private *i915,
 	edid_id_nodate.mfg_week = 0;
 	edid_id_nodate.mfg_year = 0;
 
+	dump_pnp_id(i915, edid_id, "EDID");
+
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
 		return -1;
@@ -802,6 +818,7 @@ parse_lfp_data(struct drm_i915_private *i915)
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	const struct lvds_pnp_id *pnp_id;
 	int panel_type = i915->vbt.panel_type;
 
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
@@ -815,10 +832,17 @@ parse_lfp_data(struct drm_i915_private *i915)
 	if (!i915->vbt.lfp_lvds_vbt_mode)
 		parse_lfp_panel_dtd(i915, data, ptrs);
 
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
 		i915->vbt.seamless_drrs_min_refresh_rate =
 			tail->seamless_drrs_min_refresh_rate[panel_type];
-- 
2.35.1

