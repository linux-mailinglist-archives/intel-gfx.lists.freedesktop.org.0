Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9860B8B0812
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 13:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BBA0113A4F;
	Wed, 24 Apr 2024 11:11:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0NZ9fVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B13113A4F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 11:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713957073; x=1745493073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J+ue6yD2Xuc/EtbDsMj/4in2VbKA8Z4eZt1CK3F/LmE=;
 b=X0NZ9fVd/AXFpXLIEsOSe5Qkj9+8J+NIsbh56+ljiab0XyKuxDFG36Yu
 6TLjMKRCCyP9VWBM6lQQSgIWZ6d7CqTM41Zz33MedDd8s/ULZWMFHFmeX
 c/ZXhW175DBxhJ8RZMtJNx1ZZ3Il/9tUoz0EYLCL4eM13+z6PVp6kEryU
 vbbIJ53MIYBLokeCYy9Ks+lxxse1noB/jFQZx7rKrYtp/PSXZMZRqpqBU
 /ymFk3idrLCYgz8IluIT/oN+Is7JshMXfkFQrstDH8oGdrSfzrP4fGcO6
 bpWNWgmKxd0sTkvw6h/dnI6rH7bqaC+52saIYalEa7sNgqbs9xmS+7URw g==;
X-CSE-ConnectionGUID: EpAF3JZYSX+6eNKb9lecvg==
X-CSE-MsgGUID: rKbQNMLaQ8GaEOiZ9s1dTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9412237"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; 
   d="scan'208";a="9412237"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:11:12 -0700
X-CSE-ConnectionGUID: GBRK2EUJSL28aRh6gFqK9Q==
X-CSE-MsgGUID: OGrxdxS+Sx2bCsFygWBqvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="24564822"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.49])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:11:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/4] drm/i915/bios: return proper error codes instead of magic
 -1
Date: Wed, 24 Apr 2024 14:10:59 +0300
Message-Id: <20240424111101.1152824-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424111101.1152824-1-jani.nikula@intel.com>
References: <20240424111101.1152824-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Use proper negative error codes intead of magic -1. Don't set a bad
example, as -1 is -EPERM.

-1 might be fine for "invalid index" for a function that returns
indices, but e.g. opregion_get_panel_type() already returns negative
error codes so all the other code needs to cope with them anyway.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 661842a3c2e6..e1d9e6891ebb 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -631,13 +631,13 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
 
 	lvds_options = bdb_find_section(i915, BDB_LVDS_OPTIONS);
 	if (!lvds_options)
-		return -1;
+		return -ENOENT;
 
 	if (lvds_options->panel_type > 0xf &&
 	    lvds_options->panel_type != 0xff) {
 		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
 			    lvds_options->panel_type);
-		return -1;
+		return -EINVAL;
 	}
 
 	if (devdata && devdata->child.handle == DEVICE_HANDLE_LFP2)
@@ -656,10 +656,10 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
 	struct drm_edid_product_id product_id, product_id_nodate;
 	struct drm_printer p;
-	int i, best = -1;
+	int i, best = -ENOENT;
 
 	if (!drm_edid)
-		return -1;
+		return -EINVAL;
 
 	drm_edid_get_product_id(drm_edid, &product_id);
 
@@ -672,11 +672,11 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 
 	ptrs = bdb_find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
-		return -1;
+		return -ENOENT;
 
 	data = bdb_find_section(i915, BDB_LVDS_LFP_DATA);
 	if (!data)
-		return -1;
+		return -ENOENT;
 
 	for (i = 0; i < 16; i++) {
 		const struct drm_edid_product_id *vbt_id =
@@ -702,7 +702,7 @@ static int fallback_get_panel_type(struct drm_i915_private *i915,
 				   const struct intel_bios_encoder_data *devdata,
 				   const struct drm_edid *drm_edid, bool use_fallback)
 {
-	return use_fallback ? 0 : -1;
+	return use_fallback ? 0 : -ENOENT;
 }
 
 enum panel_type {
@@ -2568,12 +2568,12 @@ intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
 	return devdata && HAS_LSPCON(devdata->i915) && devdata->child.lspcon;
 }
 
-/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
+/* This is an index in the HDMI/DVI DDI buffer translation table, or -ERANGE */
 int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 158 ||
 	    DISPLAY_VER(devdata->i915) >= 14)
-		return -1;
+		return -ERANGE;
 
 	return devdata->child.hdmi_level_shifter_value;
 }
-- 
2.39.2

