Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1E34B4CB2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 11:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0998910E516;
	Mon, 14 Feb 2022 10:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44AAF10E516
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 10:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644836156; x=1676372156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1EzmigTbH5GkGY2ZaTymV9ct2+8X8WIBjMVqQ5GsFAQ=;
 b=MpyzIKKEst+sTE/354A39Xm9vqNJoS60FrERQSnszzt5LbhdK5ypdrt9
 SHjxVncTgDuwrqyx3Udq0lwz4wEk6oA4rxirwzhdYLbT6LhauBZMoRjgO
 KlgCM/jEL0VsbZYCCrYHGxcVJfjQ1fMPT4SArFUBthUyVJWmVD1V5DiLk
 pwpIonR5UwY/E3D4olLr3kYv1d88Y1BpNonyWJ1iHmdaezJsjgIt4b3lf
 3L346I4dFvb2eOKlrMjmDBEgywnKzRnHbeHK+1kIOcFFEWDmTk3zCS30k
 jwQ47du2uXxq66KeTaho3OGH+NWoYqrF2Gy63I91LNKiLYP5CPyf2CipU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="248898022"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="248898022"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:55:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="587151537"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 14 Feb 2022 02:55:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 12:55:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 12:55:29 +0200
Message-Id: <20220214105532.13049-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
References: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Don't skip ddb allocation if
 data_rate==0
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

data_rate==0 no longer means a plane is disabled, it could
also mean we want to use the minimum ddb allocation for it.
Hence we can't bail out early during ddb allocation or
else we'll simply forget to allocate any ddb for such planes.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: 6a4d8cc6bbbf ("drm/i915: Don't allocate extra ddb during async flip for DG2")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 30 ++++++++++++------------------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 1179bf31f743..ec2de4f13b5e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5114,12 +5114,15 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
 		       const struct skl_wm_level *wm,
 		       u64 data_rate)
 {
-	u16 extra;
+	u16 extra = 0;
 
-	extra = min_t(u16, iter->size,
-		      DIV64_U64_ROUND_UP(iter->size * data_rate, iter->data_rate));
-	iter->size -= extra;
-	iter->data_rate -= data_rate;
+	if (data_rate) {
+		extra = min_t(u16, iter->size,
+			      DIV64_U64_ROUND_UP(iter->size * data_rate,
+						 iter->data_rate));
+		iter->size -= extra;
+		iter->data_rate -= data_rate;
+	}
 
 	return wm->min_ddb_alloc + extra;
 }
@@ -5162,9 +5165,6 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR],
 			   alloc->end - iter.total[PLANE_CURSOR], alloc->end);
 
-	if (iter.data_rate == 0)
-		return 0;
-
 	/*
 	 * Find the highest watermark level for which we can satisfy the block
 	 * requirement of active planes.
@@ -5203,6 +5203,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		return -EINVAL;
 	}
 
+	/* avoid the WARN later when we don't allocate any extra DDB */
+	if (iter.data_rate == 0)
+		iter.size = 0;
+
 	/*
 	 * Grant each plane the blocks it requires at the highest achievable
 	 * watermark level, plus an extra share of the leftover blocks
@@ -5215,20 +5219,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		if (plane_id == PLANE_CURSOR)
 			continue;
 
-		/*
-		 * We've accounted for all active planes; remaining planes are
-		 * all disabled.
-		 */
-		if (iter.data_rate == 0)
-			break;
-
 		iter.total[plane_id] =
 			skl_allocate_plane_ddb(&iter, &wm->wm[level],
 					       crtc_state->plane_data_rate[plane_id]);
 
-		if (iter.data_rate == 0)
-			break;
-
 		iter.uv_total[plane_id] =
 			skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
 					       crtc_state->uv_plane_data_rate[plane_id]);
-- 
2.34.1

