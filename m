Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D989870995
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92983112473;
	Mon,  4 Mar 2024 18:31:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yhk8lbp7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3263112476;
 Mon,  4 Mar 2024 18:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709577074; x=1741113074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9yBeyitY5XwANYfA3qQsKbXorp1T5I687K2N/d/QYgM=;
 b=Yhk8lbp7rV3jaocs5+GAHdNDA/SuiQL6ZYMAzD8uCLLy+zsVFa092JJW
 m8pt7bRrFTM4SxRH1TrRwA8hngZtnHLgw/D9yQX5UOjQzH9NBX3n3fg53
 In0Ey9waYgJbuSCzpK5PjYwBQuy9D4bGFMcFea41ffELkk7X6NANUB0NW
 bUrs7xN4jndsBs2UeRfpiCi+nkYrx/OKtiyrwpDsHLQgepRwZzYSduc9r
 9WHpNr540Vgy4l9UzqM+sUN07dmtK6Q5D9uPgllNn2oX7sl4xgTiE8Cfb
 Dj0JKVaxSfV9J9Sjmu3HQgjV4XbBCNPAD7xMcDAOPxlYu2XQm1zt4QDNT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="3943520"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="3943520"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13756474"
Received: from ticela-or-128.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.50])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:31:12 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, vinod.govindapillai@intel.com,
 stanislav.lisovskiy@intel.com, Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 4/8] drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
Date: Mon,  4 Mar 2024 15:30:23 -0300
Message-ID: <20240304183028.195057-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240304183028.195057-1-gustavo.sousa@intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

As of Xe2LPD, it is now possible to select the source of the MDCLK
as either the CD2XCLK or the CDCLK PLL.

Previous display IPs were hardcoded to use the CD2XCLK. For those, the
ratio between MDCLK and CDCLK remained constant, namely 2. For Xe2LPD,
when we select the CDCLK PLL as the source, the ratio will vary
according to the squashing configuration (since the cd2x divisor is
fixed for all supported configurations).

To help the transition to supporting changes in the ratio, extract the
function intel_dbuf_mdclk_cdclk_ratio_update() from the existing logic
and call it using 2 as hardcoded ratio. Upcoming changes will use that
function for updates in the ratio due to CDCLK changes.

Bspec: 50057, 69445, 49213, 68868
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 30 +++++++++++++-------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index c6b9be80d83c..d9e49cd60d3a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3530,6 +3530,21 @@ int intel_dbuf_init(struct drm_i915_private *i915)
 	return 0;
 }
 
+static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
+						u8 ratio,
+						bool joined_mbus)
+{
+	enum dbuf_slice slice;
+
+	if (joined_mbus)
+		ratio *= 2;
+
+	for_each_dbuf_slice(i915, slice)
+		intel_de_rmw(i915, DBUF_CTL_S(slice),
+			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
+			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
+}
+
 /*
  * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
  * update the request state of all DBUS slices.
@@ -3537,8 +3552,7 @@ int intel_dbuf_init(struct drm_i915_private *i915)
 static void update_mbus_pre_enable(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	u32 mbus_ctl, dbuf_min_tracker_val;
-	enum dbuf_slice slice;
+	u32 mbus_ctl;
 	const struct intel_dbuf_state *dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 
@@ -3549,24 +3563,18 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	 * TODO: Implement vblank synchronized MBUS joining changes.
 	 * Must be properly coordinated with dbuf reprogramming.
 	 */
-	if (dbuf_state->joined_mbus) {
+	if (dbuf_state->joined_mbus)
 		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
 			MBUS_JOIN_PIPE_SELECT_NONE;
-		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(3);
-	} else {
+	else
 		mbus_ctl = MBUS_HASHING_MODE_2x2 |
 			MBUS_JOIN_PIPE_SELECT_NONE;
-		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(1);
-	}
 
 	intel_de_rmw(i915, MBUS_CTL,
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
 
-	for_each_dbuf_slice(i915, slice)
-		intel_de_rmw(i915, DBUF_CTL_S(slice),
-			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
-			     dbuf_min_tracker_val);
+	intel_dbuf_mdclk_cdclk_ratio_update(i915, 2, dbuf_state->joined_mbus);
 }
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
-- 
2.44.0

