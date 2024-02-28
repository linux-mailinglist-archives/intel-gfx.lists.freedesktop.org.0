Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 319BA86A974
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 09:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9649210E765;
	Wed, 28 Feb 2024 08:02:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/v4cB4U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE6210E5AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 08:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709107337; x=1740643337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tQ8GNLaqnghthgrBj2/T0hNI2CRG2UObGSbk/UUh2gc=;
 b=P/v4cB4UOAiYO9Q6v5ixWMcmRR4el8LaUqxPu4Gbc9B/54GvHtVnrUXW
 1qfhYdqhoI+TkwzQOFWupD7chKZDHj+jPcOpoDvuOBL+5ac29MpW3Ygs9
 dCeJEKDa7FTFZvlL5bxKOzQHOMFPfl770aXPqsyr6AfxF0rN6Vxsumfit
 o6O8aWqQECi3G4IV5qeZ1v6QWGXr4JLyGoS+yl9wjFVx5PV65cYVSeX+R
 K/XkPbgkLTeyUusxI/i6anSpiBvE5vc+nWCsrLHnW0/okuSsSaNlFjDww
 fR9WukI1Yp4e/k6olngv9+rPfH7O9BrH3UM2Kt+hNbYZJHut1G/Dcf8LO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14205675"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="14205675"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:02:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7220646"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa007.fm.intel.com with ESMTP; 28 Feb 2024 00:02:15 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/2] drm/i915: Update mbus in intel_dbuf_mbus_update and do it
 properly
Date: Wed, 28 Feb 2024 10:02:12 +0200
Message-Id: <20240228080213.17441-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240228080213.17441-1-stanislav.lisovskiy@intel.com>
References: <20240228080213.17441-1-stanislav.lisovskiy@intel.com>
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

According to BSpec we need to do correspondent MBUS updates before
or after DBUF reallocation, depending on whether we are reducing
or increasing amount of pipes(typical scenario is swithing between
multiple and single displays).

As of BSpec 49213 if we are swithing from multiple to single display
MBUS registers should be updated with correspondent values _before_
Dbuf reallocation happens, however if we are switching from single
display to multiple then it should happen _after_ DDB reallocation(i.e
plane programming).

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index c6b9be80d83c4..606b7ba9db9ce 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3534,7 +3534,7 @@ int intel_dbuf_init(struct drm_i915_private *i915)
  * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
  * update the request state of all DBUS slices.
  */
-static void update_mbus_pre_enable(struct intel_atomic_state *state)
+static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	u32 mbus_ctl, dbuf_min_tracker_val;
@@ -3584,7 +3584,10 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	update_mbus_pre_enable(state);
+	if ((hweight8(new_dbuf_state->active_pipes) <= hweight8(old_dbuf_state->active_pipes))
+	    || (old_dbuf_state->active_pipes == 0))
+		intel_dbuf_mbus_update(state);
+
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
 				new_dbuf_state->enabled_slices);
@@ -3605,6 +3608,9 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
+	if (hweight8(new_dbuf_state->active_pipes) > hweight8(old_dbuf_state->active_pipes))
+		intel_dbuf_mbus_update(state);
+
 	gen9_dbuf_slices_update(i915,
 				new_dbuf_state->enabled_slices);
 }
-- 
2.37.3

