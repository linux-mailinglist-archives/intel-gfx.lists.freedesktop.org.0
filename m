Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B8E8958C2
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFB310FE14;
	Tue,  2 Apr 2024 15:50:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jqG2fJ4r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32FE210FE13
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073042; x=1743609042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QssuWbspnk5imGmb9evLxkuhU3dQwb3qUoXhC31uFxE=;
 b=jqG2fJ4rYSiyO+BVfHUJX6eLScIUxS7GolpLTaizXFVJQJ4lluiMHKVL
 45OKmpq/JSRyJq4wfZBfF7DtjpSoAwXK1L6lnuTxfOpI2XuC1GeWtVqGR
 Pgv1jhomsKCq2WMzNn2bBpBY91/DWCaghntbmDZB0I+mpQHmCJ7RVzXi2
 WyvahjCM/yEOrYjjOijXF+Sg3+8qG3FPLzS83EBMD+0TyZ0R/rcKIgHfR
 c3jU4SLP7Z1O7+znK1aSg2GdErgVm+oRVTiom3gShgCejcL/bYLwE50x7
 ynt9jra/ej88e3nhjJLeA6bZQkogcND0HImWuPEZpEhS5ZGxm0fF3RSt2 w==;
X-CSE-ConnectionGUID: m3ju7uFTT7a7bXJfufqETw==
X-CSE-MsgGUID: Lihl7SNuR4SV2v+U9SEDtQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980842"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980842"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789477"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789477"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 07/14] drm/i915: Extract intel_dbuf_mbus_join_update()
Date: Tue,  2 Apr 2024 18:50:09 +0300
Message-ID: <20240402155016.13733-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

Extact the stuff that writes the joining bits in MBUS_CTL
into its own function. Will help with correctly sequencing
the operations done during mbus programming.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 37 +++++++++++++-------
 1 file changed, 25 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6bd3fec0aa56..f7e03078bd43 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3653,21 +3653,12 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
 			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
 }
 
-/*
- * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
- * update the request state of all DBUS slices.
- */
-static void update_mbus_pre_enable(struct intel_atomic_state *state)
+static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *new_dbuf_state =
+		intel_atomic_get_new_dbuf_state(state);
 	u32 mbus_ctl;
-	const struct intel_dbuf_state *old_dbuf_state =
-		intel_atomic_get_old_dbuf_state(state);
-	const struct intel_dbuf_state *new_dbuf_state =
-		intel_atomic_get_new_dbuf_state(state);
-
-	if (!HAS_MBUS_JOINING(i915))
-		return;
 
 	/*
 	 * TODO: Implement vblank synchronized MBUS joining changes.
@@ -3683,6 +3674,28 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	intel_de_rmw(i915, MBUS_CTL,
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
+}
+
+/*
+ * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
+ * update the request state of all DBUS slices.
+ */
+static void update_mbus_pre_enable(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
+	const struct intel_dbuf_state *new_dbuf_state =
+		intel_atomic_get_new_dbuf_state(state);
+
+	if (!HAS_MBUS_JOINING(i915))
+		return;
+
+	/*
+	 * TODO: Implement vblank synchronized MBUS joining changes.
+	 * Must be properly coordinated with dbuf reprogramming.
+	 */
+	intel_dbuf_mbus_join_update(state);
 
 	if (DISPLAY_VER(i915) >= 20 &&
 	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
-- 
2.43.2

