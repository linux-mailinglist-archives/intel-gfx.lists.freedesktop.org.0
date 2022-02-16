Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C70D4B8F8A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 18:43:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2B310E8C6;
	Wed, 16 Feb 2022 17:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB01710E8EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 17:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645033387; x=1676569387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EloDULM4nIjamfwIuel4mJA4lWBHM3CzEZ38pWeN51s=;
 b=AS4OhCCoGIiil6CFSAcSjSqppYEE5GkcLXBTRTyUw7/G8RmAE9RkHSry
 w/Ig+fA5F/ssd/8L7cTqIRir0Ld2IfX+3KpGD6vxMVXvejANB1NuCo3BJ
 i31QUwG0OOvK/VG3R8O4X0dZ40j0Nj0kB4SVzYbMHFQ06Gz7IvMGt9U8Y
 p7BZdd8SEdUCPUmcoo0GlmqWozkgGqUEtxhBojykTewLEf1zZOK7T+tup
 Jpv6f/zPxk0TZH7gJZ+u4IhpcprPvgJKb0pewpZS1r9er0dyTHaSfH4gx
 tF9fDPfrsyjiQfU+3UqgmrrwlGc5zIAy+dOe4Cuo+3AZ00cem3rusuUpY Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="230642446"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="230642446"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:43:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="545072730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 16 Feb 2022 09:43:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 19:43:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 19:42:48 +0200
Message-Id: <20220216174250.4449-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
References: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: Pimp icl+ sagv pre/post update
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

v2: s/u32/u16/ for consistency with the mask sizes (Stan)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 37 ++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 9e2c339f8d16..f4324c0326cd 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3814,26 +3814,22 @@ static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_bw_state(state);
 	const struct intel_bw_state *new_bw_state =
 		intel_atomic_get_new_bw_state(state);
-	u32 new_mask;
+	u16 old_mask, new_mask;
 
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
@@ -3850,19 +3846,22 @@ static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_bw_state(state);
 	const struct intel_bw_state *new_bw_state =
 		intel_atomic_get_new_bw_state(state);
-	u32 new_mask = 0;
+	u16 old_mask, new_mask;
 
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

