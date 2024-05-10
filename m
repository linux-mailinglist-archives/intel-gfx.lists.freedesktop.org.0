Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0F18C27A3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F2A110EDBD;
	Fri, 10 May 2024 15:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2/kYD0U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71CDA10EDC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354656; x=1746890656;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=G2UXR5Wn1/QeGyrtdIXwzkKts8zfzUHMo06oSKPPjUo=;
 b=M2/kYD0U7Wu8eIrIaS/U/vTBC5zzr/Zm4c46Nu5Wc7WfkctGH3yhtHPh
 nG/dSv0XSpnn+iLqGnfEHfq1H5Zbfrr99VSeWNorF495bYFYmfldntHXD
 Nwtt4Kjo47BNOdlmmJGwPNGkv57Zq49ip+mZTLrcuCnJuu7D4D+SmJCJf
 +MwSXIHRov8Zte+F5OVcatQ+OXe7zbbGYFALsiCVit2t9xRNbephXcYef
 AUowtsqNPtEN39tlpd8epj2lYxpdBYoBiRFl8Q7cAPZOLUfWmai0x8Nqx
 Syuv9bYQI95OwQERUQ3d5dTxbkIPw0lHqkzzp/Y5YdzKhC9/DixjLXwks w==;
X-CSE-ConnectionGUID: hb18ZkNBQ2S66ZlC+srtmg==
X-CSE-MsgGUID: nWz+qETFSI24xZKM7HGWkQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468874"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468874"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:24:16 -0700
X-CSE-ConnectionGUID: +J7VrfQbSPC2yIDFToLTmg==
X-CSE-MsgGUID: 8cZ68ISvR5WmZ6bo/rzgcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29595048"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:24:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:24:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/16] drm/i915: Extract skl_plane_{wm,ddb}_reg_val()
Date: Fri, 10 May 2024 18:23:27 +0300
Message-ID: <20240510152329.24098-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract helpers to calculate the final wm/ddb register
values for skl+. Will allow me to more cleanly remove the
register write wrappers for these registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 29 +++++++++++++-------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2a2073bf3aca..8a0a26ab8e6a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2365,21 +2365,23 @@ static int skl_build_pipe_wm(struct intel_atomic_state *state,
 	return skl_wm_check_vblank(crtc_state);
 }
 
+static u32 skl_plane_ddb_reg_val(const struct skl_ddb_entry *entry)
+{
+	if (!entry->end)
+		return 0;
+
+	return PLANE_BUF_END(entry->end - 1) |
+		PLANE_BUF_START(entry->start);
+}
+
 static void skl_ddb_entry_write(struct drm_i915_private *i915,
 				i915_reg_t reg,
 				const struct skl_ddb_entry *entry)
 {
-	if (entry->end)
-		intel_de_write_fw(i915, reg,
-				  PLANE_BUF_END(entry->end - 1) |
-				  PLANE_BUF_START(entry->start));
-	else
-		intel_de_write_fw(i915, reg, 0);
+	intel_de_write_fw(i915, reg, skl_plane_ddb_reg_val(entry));
 }
 
-static void skl_write_wm_level(struct drm_i915_private *i915,
-			       i915_reg_t reg,
-			       const struct skl_wm_level *level)
+static u32 skl_plane_wm_reg_val(const struct skl_wm_level *level)
 {
 	u32 val = 0;
 
@@ -2390,7 +2392,14 @@ static void skl_write_wm_level(struct drm_i915_private *i915,
 	val |= REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
 	val |= REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
 
-	intel_de_write_fw(i915, reg, val);
+	return val;
+}
+
+static void skl_write_wm_level(struct drm_i915_private *i915,
+			       i915_reg_t reg,
+			       const struct skl_wm_level *level)
+{
+	intel_de_write_fw(i915, reg, skl_plane_wm_reg_val(level));
 }
 
 void skl_write_plane_wm(struct intel_plane *plane,
-- 
2.43.2

