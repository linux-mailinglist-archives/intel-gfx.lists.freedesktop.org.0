Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBA9555056
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE5510F6B4;
	Wed, 22 Jun 2022 15:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A22210FA4E
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913307; x=1687449307;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nQBUNNwHltrYM/KeRZggYUwwOvS+wWQ+ro39Bvrz6hw=;
 b=j8YgeD1rsnNq7djFeuoAIQuP9ERC7rLaeniZs3WDQP9SBXhkEqUjIwBc
 ViQy4rahX2vPYGvDQ4utqC0/ZiDu5yoCnQZknZPAG+qi4s+d9zIj/B7v7
 peN/C3BHM14UMwyTKpsSQ7brcIlyLT5cSKsb5KpDautiwJbuoyglgN793
 gjbmG4ujYtNjuNNB8IUocCsqoCq7SFCUB+W3feBw+fFyC9AQ4r+DmI9ip
 gmNybHOdsFdNrwZ3sJjTTHy3d+benX3HJa+gVKXTB99lQES8Unolun0Nw
 QiyElYrsXIwDPESQutNvG8U4Qb+lSm64LwJ4B3bQ8f5UftVpHpPWcjyIO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="344448288"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="344448288"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="563067084"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga006.jf.intel.com with SMTP; 22 Jun 2022 08:55:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:55:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:47 +0300
Message-Id: <20220622155452.32587-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915: Simplify up vlv watermark
 sanitation
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

We can simplify the vlv watermark sanitation by reusing the
second half of vlv_compute_pipe_wm() to convert the sanitized
raw watermarks into the proper form to be used as the
optimal/intermediate watermarks.

Also to be consistent with normal watermark computation the sanitized
watermarks should be all 0 for any disabled plane. Previously we
zeroed out the watermarks only up to the level (ie. PM2/5/DVDFS)
that was enabled.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 556fcdfb75f1..45ec00e2e3c4 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7100,30 +7100,27 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
-		struct vlv_wm_state *wm_state = &crtc_state->wm.vlv.optimal;
-		const struct vlv_fifo_state *fifo_state =
-			&crtc_state->wm.vlv.fifo_state;
 		enum plane_id plane_id = plane->id;
-		int level;
+		int level, num_levels = intel_wm_num_levels(dev_priv);
 
 		if (plane_state->uapi.visible)
 			continue;
 
-		for (level = 0; level < wm_state->num_levels; level++) {
+		for (level = 0; level < num_levels; level++) {
 			struct g4x_pipe_wm *raw =
 				&crtc_state->wm.vlv.raw[level];
 
 			raw->plane[plane_id] = 0;
-
-			wm_state->wm[level].plane[plane_id] =
-				vlv_invert_wm_value(raw->plane[plane_id],
-						    fifo_state->plane[plane_id]);
 		}
 	}
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
+		int ret;
+
+		ret = _vlv_compute_pipe_wm(crtc_state);
+		drm_WARN_ON(&dev_priv->drm, ret);
 
 		crtc_state->wm.vlv.intermediate =
 			crtc_state->wm.vlv.optimal;
-- 
2.35.1

