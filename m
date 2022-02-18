Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F584BB2A8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 07:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCA810EC2F;
	Fri, 18 Feb 2022 06:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E1310F014
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 06:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645166463; x=1676702463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f0Fj3FXK+QQZ5lqyy37GLl3P99nL8BqNQ4t0325KwvY=;
 b=aCQi8oXfeHWborBBq9aFAvObe8CnHu7fMdpfqpfksK0NIzUvbmL0Iv+3
 eepeZGMh6unHKlgpBdy1PAfKbBo1HMqgQDGgNkNKBz2VqCWlXtdI7z+mH
 QM4E99D6h4kBKeoGv7p9ru6BboIzbkHFe+ahnpCa9qnvqax2bLXEMQxkq
 6A9UGkWT9Xo7SX6ktp71//ABv0GeSofx71iS0J1S20iNm9eByAATqJd6W
 0bqPVIHwrNsRcK811VtdoD17/2aom+LchvN+x0SPf/2Yx0QnOXI9uHYtz
 L1d0rajgZGqnrfCeVuezL59i7BFBS76AQ0S1RflzAuUqEzGcl6Ar0c67i g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="314330341"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="314330341"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 22:41:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="590104039"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 17 Feb 2022 22:40:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 08:40:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 08:40:39 +0200
Message-Id: <20220218064039.12834-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
References: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915: Extract
 intel_bw_check_data_rate()
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

Extract the data rate calculation loop out from
intel_bw_atomic_check() to make it a bit less confusing.

v2: Deal with 'bool changed'

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 55 +++++++++++++++----------
 1 file changed, 34 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6637da75f878..ad1564ca7269 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -836,25 +836,12 @@ static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 	return mask;
 }
 
-int intel_bw_atomic_check(struct intel_atomic_state *state)
+static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *changed)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
-	struct intel_bw_state *new_bw_state = NULL;
-	const struct intel_bw_state *old_bw_state = NULL;
-	unsigned int data_rate;
-	unsigned int num_active_planes;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	int i, ret;
-	u32 allowed_points = 0;
-	unsigned int max_bw_point = 0, max_bw = 0;
-	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
-	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
-	bool changed = false;
-
-	/* FIXME earlier gens need some checks too */
-	if (DISPLAY_VER(dev_priv) < 11)
-		return 0;
+	int i;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
@@ -866,6 +853,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 			intel_bw_crtc_num_active_planes(old_crtc_state);
 		unsigned int new_active_planes =
 			intel_bw_crtc_num_active_planes(new_crtc_state);
+		struct intel_bw_state *new_bw_state;
 
 		/*
 		 * Avoid locking the bw state when
@@ -882,15 +870,40 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 		new_bw_state->data_rate[crtc->pipe] = new_data_rate;
 		new_bw_state->num_active_planes[crtc->pipe] = new_active_planes;
 
-		changed = true;
+		*changed = true;
 
-		drm_dbg_kms(&dev_priv->drm,
-			    "pipe %c data rate %u num active planes %u\n",
-			    pipe_name(crtc->pipe),
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] data rate %u num active planes %u\n",
+			    crtc->base.base.id, crtc->base.name,
 			    new_bw_state->data_rate[crtc->pipe],
 			    new_bw_state->num_active_planes[crtc->pipe]);
 	}
 
+	return 0;
+}
+
+int intel_bw_atomic_check(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_bw_state *old_bw_state;
+	struct intel_bw_state *new_bw_state;
+	unsigned int data_rate;
+	unsigned int num_active_planes;
+	int i, ret;
+	u32 allowed_points = 0;
+	unsigned int max_bw_point = 0, max_bw = 0;
+	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
+	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
+	bool changed = false;
+
+	/* FIXME earlier gens need some checks too */
+	if (DISPLAY_VER(dev_priv) < 11)
+		return 0;
+
+	ret = intel_bw_check_data_rate(state, &changed);
+	if (ret)
+		return ret;
+
 	old_bw_state = intel_atomic_get_old_bw_state(state);
 	new_bw_state = intel_atomic_get_new_bw_state(state);
 
-- 
2.34.1

