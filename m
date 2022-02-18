Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C39854BB2A5
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 07:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A804710EC2D;
	Fri, 18 Feb 2022 06:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBF310EC2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 06:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645166455; x=1676702455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=08PmiHBNCZaTTILoMRqX7ZbJniX7Rn6LJfQ6n3r4gkk=;
 b=cDQ4VWomoUtwH+LjCpAaNmkJUS5pPrHGdcyiJsfeWGQhqaeWtUn9S7aB
 A+8iIWWXJDoVGL08plx2vhIh42xkeu7Jcqlkkpfybbj8pv0gg4xhEjLRg
 W5MJipsoeq2ejTvl/SDd/kMrbYFNSaYWYxgpbkn958gHw33XEDqmITa2u
 IHIWBQnn8zeFFnnuJE7u12fGNfS3/geXv74FpgysxQ9l0XQEi4H19k7Vt
 9NQeHFqXPIK2akRF0sKwPULrQcE89VOkSB5nPafM0U+19JPQhhiUhupdO
 xeijE6Zvd+Sx5xRdYeEcqqX3GMAyofdhuQOlzfgujJ/PuV1brTCps5HkC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="234596135"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="234596135"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 22:40:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="503889022"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 17 Feb 2022 22:40:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 08:40:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 08:40:37 +0200
Message-Id: <20220218064039.12834-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
References: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/6] drm/i915: Pimp icl+ sagv pre/post update
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
index bf8cf71f5b07..ea7a4bb079d3 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3815,26 +3815,22 @@ static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
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
@@ -3851,19 +3847,22 @@ static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
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

