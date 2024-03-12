Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDEF879913
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:37:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E448112F0F;
	Tue, 12 Mar 2024 16:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WaCzR5LC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5E4112542;
 Tue, 12 Mar 2024 16:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261426; x=1741797426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j+tXq9ROjA4UYaqqgLtr593YMy7s0LZEMqZp1HjYufM=;
 b=WaCzR5LCOuZpQHkZJRxMJCpIDFAn/onAmcUlbOqmuGn7AsqC/4xy+ueO
 v2R4vOWvjqtAk8N5+yGr/c0yzoYPC47RTd6d7sUe8FDLrzdoK6h+xjvAo
 rs9Dl7N4pnx0JWfmHpvELSbj57LObHXZEEkGK1I8yAU0TMSXk+kEQs5LM
 u/rt1Me1SQXPTevRMCys+qpFYsa10o7VfqiSSbiF/jsNqoQmuXYlOnju4
 ycAzIT72LjW/BcD7oYyBGxOIGrfPbaw0Q4ngMcK1uM9iXVAfEaStOMnMb
 KQu1mDCxlc+LraplrKtqgqpgIa3nFEk1WXPrIsvifdMJUO6zFQ7WpJaFA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="27458076"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="27458076"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16245830"
Received: from ticela-or-524.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:05 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 gustavo.sousa@intel.com
Subject: [PATCH v2 4/8] drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
Date: Tue, 12 Mar 2024 13:36:35 -0300
Message-ID: <20240312163639.172321-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
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
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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

