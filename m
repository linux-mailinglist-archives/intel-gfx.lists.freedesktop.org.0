Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69427510920
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEBCE10E4F0;
	Tue, 26 Apr 2022 19:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45B5C896B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001601; x=1682537601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IwxhH1YE+8j97dnYXEWbOuTODYjVDlJ5m2+OWmIv8eE=;
 b=ZOHhdr2Unc5y4L/68EY7vATTIf30kFFUQxdX4KZpFVNX/9uvj3keRIFk
 CeNbzIcn1DRAQ5UCXbLVeEkEP7c8TGtm0OS4H/vRWyN5XCBNt7JXN8Qtm
 6tLIMPm9Zl4uXMQi28aMmDZa6GBmpmD/u8DBuS9K+dFkuwUQC9Z9vG3Ez
 SrKZch/tQniw/WSH0a+bejKX9AJTtHponUErCIYqT3/ZdI+z0sH6gdrJe
 9aiS69e7+sKopUnReJaYbRnpe5LIHLBqgaNjcrA9PlhAWsdWTcIJiVckk
 oujRuBJBXFoWruAOfeG1Sq9a3Xtd8lcECMQ05uj6H9SkGwN0mSt+jEESy Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="264546202"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="264546202"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:33:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="705201958"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 26 Apr 2022 12:33:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:33:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:22 +0300
Message-Id: <20220426193222.3422-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 18/18] drm/i915/bios: Dump PNPID and panel
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
index f1afc267b5f9..1b08553b22d0 100644
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
@@ -833,6 +849,7 @@ parse_lfp_data(struct drm_i915_private *i915)
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	const struct lvds_pnp_id *pnp_id;
 	int panel_type = i915->vbt.panel_type;
 
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
@@ -846,10 +863,17 @@ parse_lfp_data(struct drm_i915_private *i915)
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

