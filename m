Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E378498170
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 14:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9D910E7D5;
	Mon, 24 Jan 2022 13:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC2DD10E7D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 13:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643032348; x=1674568348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MUbux6bLGLe2R0MCyjPga3V3kVlVQVtgnWkMJI6Hm9w=;
 b=hOrc7YgcCskG5edCL/Mbrhnwvg1BSkG5IZTMbc2otxpW2aEFhfhj6+o6
 U8N3Dytx1o0dzjlv7AZkar6kfLyw99GvJwKMxFNgjet2A+JfEkVWmlHUS
 K1kdw6KJE/dJO6Ob3JrVZIzmvNJJkcq2txs9phZfA4Odd9k/oBtwK1CF4
 WkWZ8MRBjRbgHE/WS/adUJoCHy2RtgrYQu6If7/jlpY6NRPKnP+Azcqjl
 vNr6Lk6jzDYWTa9QUqflDAxHg+6DY7A8hVBzSeOgG0hqsZ9fnK7ou86a4
 p4Z9YXHDDWt7XEPXBgxLNr2sMND8N0tgXqvJI7nZJylXHlfHIJ2eNg6hS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="226026741"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="226026741"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 05:52:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="519949970"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga007.jf.intel.com with ESMTP; 24 Jan 2022 05:52:26 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 15:52:34 +0200
Message-Id: <20220124135234.12030-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
References: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
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

v4: - Renamed needs_min_ddb as s/needs/use/ to match
      the wm0 counterpart(Ville Syrjälä)
    - Added plane->async_flip check to use_min_ddb(now
      passing plane as a parameter to do that)(Ville Syrjälä)
    - Account for use_min_ddb also when calculating total data rate
      (Ville Syrjälä)

v5:
    - Use for_each_intel_plane_on_crtc instead of for_each_intel_plane_id
      to get plane->async_flip check and account for all planes(Ville Syrjälä)
    - Fix line wrapping(Ville Syrjälä)
    - Set plane data rate conditionally, avoiding on redundant assignment
      (Ville Syrjälä)
    - Removed redundant whitespace(Ville Syrjälä)
    - Handle use_min_ddb case in skl_plane_relative_data_rate instead of
      icl_get_total_relative_data_rate(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0bb4c941f950..bb147e5a77b6 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4906,6 +4906,16 @@ static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes)
 	return active_pipes & BIT(pipe) ? BIT(DBUF_S1) : 0;
 }
 
+static bool use_min_ddb(const struct intel_crtc_state *crtc_state,
+			struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+
+	return DISPLAY_VER(i915) >= 13 &&
+	       crtc_state->uapi.async_flip &&
+	       plane->async_flip;
+}
+
 static bool use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
 				 struct intel_plane *plane)
 {
@@ -4934,6 +4944,14 @@ skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	if (plane->id == PLANE_CURSOR)
 		return 0;
 
+	/*
+	 * We calculate extra ddb based on ratio plane rate/total data rate
+	 * in case, in some cases we should not allocate extra ddb for the plane,
+	 * so do not count its data rate, if this is the case.
+	 */
+	if (use_min_ddb(crtc_state, plane))
+		return 0;
+
 	if (color_plane == 1 &&
 	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		return 0;
-- 
2.24.1.485.gad05a3d8e5

