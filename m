Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 266404B4579
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 10:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A0310E2C1;
	Mon, 14 Feb 2022 09:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA7810E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 09:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644830314; x=1676366314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Szo9JENyK1N1jQPL4hiqDiq4oVmQVpfe93WbALbsbFI=;
 b=PYYwM8RgfY9TJPyY0v/TApKQaCMES7sfySrPz59AbA03VZZB//KzP/Lg
 AuDzrCYWXeJ4UuE2jNgssi+MjFwA1kQjf3G1VztJyufNtV5TVBReHSHma
 QsHEOKZ2wD8wAZEmB10wxk3QxcLZHFT8elmGIb7cye2mpWS3x9Sw7sjAG
 aNL8dsqTB5+aeVXGiD/rOnvUFxbclXZ1zJShRgldLv8aMS4KdWrnSGA7y
 cIWTJlz6aVUKAF4Ac21GnPD4Qv8L8f51Eg0p0HRUwGFaVdad1BIXKG8zW
 Q7TcfVXH57QP2MJAB4bBX4hF5j79a72pZAJwKKRy6vvl2gnRLeR8pXWbD A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="248882433"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="248882433"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 01:18:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="538483521"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 14 Feb 2022 01:18:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 11:18:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 11:18:11 +0200
Message-Id: <20220214091811.13725-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Pimp icl+ sagv pre/post update
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

Add some debugs on what exactly we're doing to the QGV point mask
in the icl+ sagv pre/post plane update hooks. Currently we're just
guessing.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 37 ++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8b70cdc3b58b..5d1f1a9988bb 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3818,26 +3818,22 @@ static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_bw_state(state);
 	const struct intel_bw_state *new_bw_state =
 		intel_atomic_get_new_bw_state(state);
-	u32 new_mask;
+	u32 old_mask, new_mask;
 
 	if (!new_bw_state)
 		return;
 
-	/*
-	 * Nothing to mask
-	 */
-	if (new_bw_state->qgv_points_mask == old_bw_state->qgv_points_mask)
-		return;
-
+	old_mask = old_bw_state->qgv_points_mask;
 	new_mask = old_bw_state->qgv_points_mask | new_bw_state->qgv_points_mask;
 
-	/*
-	 * If new mask is zero - means there is nothing to mask,
-	 * we can only unmask, which should be done in unmask.
-	 */
-	if (!new_mask)
+	if (old_mask == new_mask)
 		return;
 
+	WARN_ON(!new_bw_state->base.changed);
+
+	drm_dbg_kms(&dev_priv->drm, "Restricting QGV points: 0x%x -> 0x%x\n",
+		    old_mask, new_mask);
+
 	/*
 	 * Restrict required qgv points before updating the configuration.
 	 * According to BSpec we can't mask and unmask qgv points at the same
@@ -3854,19 +3850,22 @@ static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_bw_state(state);
 	const struct intel_bw_state *new_bw_state =
 		intel_atomic_get_new_bw_state(state);
-	u32 new_mask = 0;
+	u32 old_mask, new_mask;
 
 	if (!new_bw_state)
 		return;
 
-	/*
-	 * Nothing to unmask
-	 */
-	if (new_bw_state->qgv_points_mask == old_bw_state->qgv_points_mask)
-		return;
-
+	old_mask = old_bw_state->qgv_points_mask | new_bw_state->qgv_points_mask;
 	new_mask = new_bw_state->qgv_points_mask;
 
+	if (old_mask == new_mask)
+		return;
+
+	WARN_ON(!new_bw_state->base.changed);
+
+	drm_dbg_kms(&dev_priv->drm, "Relaxing QGV points: 0x%x -> 0x%x\n",
+		    old_mask, new_mask);
+
 	/*
 	 * Allow required qgv points after updating the configuration.
 	 * According to BSpec we can't mask and unmask qgv points at the same
-- 
2.34.1

