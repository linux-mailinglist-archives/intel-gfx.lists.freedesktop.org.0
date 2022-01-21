Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 526D6495B8E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 09:06:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9203310E959;
	Fri, 21 Jan 2022 08:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80AD210E959
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 08:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642752376; x=1674288376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/TJ7wEfU2wEg8zbwM2bVp5jilaY/MIETOMNMz94bh0Y=;
 b=cMRAgNr6Z/dESaeAeMY/EvSYxQkIuRFZS4kUeylBkUPQSScIA+QouTAT
 W2shqspMNH783grNoLjUTObqpj7gLHPdEHGAovEy/VIpv+GhrioieHSE+
 LOykc5XB7FbKbivfyB7XMhlhvh65senH9KCTLrzIfEw8M/3V8PA98WXi0
 j+/Xd+QXSoDlDsLhKFmXx/AAVGkXn+FFDoM5dB4nOSZPDAeNa5n9JCPVT
 jP7akPuqS71//VUiqhkv4mhvWtRqkI1P41k8XKT3i0Bp1uDOKPODUiVud
 cCptzGJJGOSZ4dRH1H91JgX2RW3MMobWnYbw44/R9Prwx5wIDWkWsGCCY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="270015056"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="270015056"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:06:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="561783881"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 00:06:14 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 10:06:15 +0200
Message-Id: <20220121080615.9936-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Don't allocate extra ddb during
 async flip for DG2
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

In terms of async flip optimization we don't to allocate
extra ddb space, so lets skip it.

v2: - Extracted min ddb async flip check to separate function
      (Ville Syrjälä)
    - Used this function to prevent false positive WARN
      to be triggered(Ville Syrjälä)

v3: - Renamed dg2_need_min_ddb to need_min_ddb thus making
      it more universal.
    - Also used DISPLAY_VER instead of IS_DG2(Ville Syrjälä)
    - Use rate = 0 instead of just setting extra = 0, thus
      letting other planes to use extra ddb and avoiding WARN
      (Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 5fb022a2a4d7..18fb35c480ef 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5118,6 +5118,12 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
 	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
 }
 
+static bool needs_min_ddb(struct drm_i915_private *i915,
+			  struct intel_crtc_state *crtc_state)
+{
+	return DISPLAY_VER(i915) >= 13 && crtc_state->uapi.async_flip;
+}
+
 static int
 skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
@@ -5225,9 +5231,14 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 			break;
 
 		rate = crtc_state->plane_data_rate[plane_id];
+
+		if (needs_min_ddb(dev_priv, crtc_state))
+			rate = 0;
+
 		extra = min_t(u16, alloc_size,
 			      DIV64_U64_ROUND_UP(alloc_size * rate,
 						 total_data_rate));
+
 		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
 		alloc_size -= extra;
 		total_data_rate -= rate;
@@ -5236,13 +5247,19 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 			break;
 
 		rate = crtc_state->uv_plane_data_rate[plane_id];
+
+		if (needs_min_ddb(dev_priv, crtc_state))
+			rate = 0;
+
 		extra = min_t(u16, alloc_size,
 			      DIV64_U64_ROUND_UP(alloc_size * rate,
 						 total_data_rate));
+
 		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
 		alloc_size -= extra;
 		total_data_rate -= rate;
 	}
+
 	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
 
 	/* Set the actual DDB start/end points for each plane */
-- 
2.24.1.485.gad05a3d8e5

