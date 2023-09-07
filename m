Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 993447974BA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F7310E843;
	Thu,  7 Sep 2023 15:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2793E10E818;
 Thu,  7 Sep 2023 15:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101209; x=1725637209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AssikX67Dy4A+aoEXSq9fSPghpAPBhmX4ysYH4Tib8A=;
 b=BkNPKaQU3CqYdFUEHFFu9u+IYrDwDcyYsiN+BXnhURKw6WF3zknZlV1F
 I1tji54kdsd1aKGEp7lc9sZw2Z4l9chYhMZdAOazE51LKaUJGk2QGCT1L
 c1FAZVr1/GixYqZSSaZnumf8VVbqXC1DcO41FX5Tf2lLUk3lJ3LflB5z7
 mLDxRmW7csWBtkJdeJVMf1IIEOr31cFm2CiYJzoGa/MFAnaH5OdBeS6YU
 NC0JIrsUwKYJYf0YNM4zEsSIX7pNL7BhZptcLICk+YG513r0oYYNaxymP
 ysOzoXbMP9uRxkU+XGrK7J+sdYpoi/+msiz9yJw1tzO6P+RlTJQYCS2vm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445817"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445817"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930328"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930328"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:57 -0700
Message-Id: <20230907153757.2249452-28-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 27/27] drm/i915/xe2lpd: Update mbus on post
 plane updates
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

According to BSpec we need to write the MBUS CTL and DBUF CTL both for
increasing CDCLK case (pre plane) and for decreasing CDCLK case (post
plane). Make sure those updates are in place for Xe2-LPD.

Since the mbus update is not only on pre-enable anymore, also rename the
function accordingly.

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1fefb02876c8..955a8fb7ba19 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3486,7 +3486,7 @@ static int get_mbus_mdclk_cdclk_ratio(struct drm_i915_private *i915,
  * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
  * update the request state of all DBUS slices.
  */
-static void update_mbus_pre_enable(struct intel_atomic_state *state)
+static void update_mbus(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	u32 mbus_ctl, dbuf_min_tracker_val;
@@ -3545,7 +3545,7 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	update_mbus_pre_enable(state);
+	update_mbus(state);
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
 				new_dbuf_state->enabled_slices);
@@ -3567,6 +3567,9 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
+	if (DISPLAY_VER(i915) >= 20)
+		update_mbus(state);
+
 	gen9_dbuf_slices_update(i915,
 				new_dbuf_state->enabled_slices);
 }
-- 
2.40.1

