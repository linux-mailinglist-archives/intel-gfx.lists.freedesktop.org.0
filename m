Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6694BB2A3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 07:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCEFD10EA8F;
	Fri, 18 Feb 2022 06:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D052210EB4F
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 06:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645166449; x=1676702449;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SKb8u8AFC4xdRkpdlCya0x/FajE/QbHu+Jdi2/UHI0Q=;
 b=n92S1PWqnjT3wct5TXbSXWBeSnvJoADUQqFWMY15RoNxo4TMpHgbMhZt
 dTYImv/wEzfQVzuYYN3Ug9NVY91/QVmadfORMYhgJTB1JlKIo0YOWCqlV
 Ynau+1+EuYSHbKBCGLJsFHEi5cIfMwDCvPXos+aUVQa5T08FZCBsMCr3o
 NGz0QHiGYsQE8po3BU/T30g4XN+J3PUbnOkDenFuvE/riOQCP1YU9dRdz
 hP1k4lbJvZnUtC/D1WpLmssP5CpZ1cbBCB9P3laVbTehOw61pg59JTFhs
 QKzgzoXLU6DXsJdDQOb72xhuivlmJyEZMVsmIMYf+dIdVLqggQx/PgOTK Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="251264537"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="251264537"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 22:40:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="504912664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 17 Feb 2022 22:40:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 08:40:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 08:40:35 +0200
Message-Id: <20220218064039.12834-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
References: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/6] drm/i915: Fix bw atomic check when
 switching between SAGV vs. no SAGV
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

If the only thing that is changing is SAGV vs. no SAGV but
the number of active planes and the total data rates end up
unchanged we currently bail out of intel_bw_atomic_check()
early and forget to actually compute the new WGV point
mask and thus won't actually enable/disable SAGV as requested.
This ends up poorly if we end up running with SAGV enabled
when we shouldn't. Usually ends up in underruns.

To fix this let's go through the QGV point mask computation
if either the data rates/number of planes, or the state
of SAGV is changing.

v2: Check more carefully if things are changing to avoid
    the extra calculations/debugs from introducing unwanted
    overhead

Cc: stable@vger.kernel.org
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> #v1
Fixes: 20f505f22531 ("drm/i915: Restrict qgv points which don't have enough bandwidth.")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 7bbe0dc5926b..1fd1d2182d8f 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -830,6 +830,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	unsigned int max_bw_point = 0, max_bw = 0;
 	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
 	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
+	bool changed = false;
 	u32 mask = 0;
 
 	/* FIXME earlier gens need some checks too */
@@ -873,6 +874,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 		new_bw_state->data_rate[crtc->pipe] = new_data_rate;
 		new_bw_state->num_active_planes[crtc->pipe] = new_active_planes;
 
+		changed = true;
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "pipe %c data rate %u num active planes %u\n",
 			    pipe_name(crtc->pipe),
@@ -880,7 +883,19 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 			    new_bw_state->num_active_planes[crtc->pipe]);
 	}
 
-	if (!new_bw_state)
+	old_bw_state = intel_atomic_get_old_bw_state(state);
+	new_bw_state = intel_atomic_get_new_bw_state(state);
+
+	if (new_bw_state &&
+	    intel_can_enable_sagv(dev_priv, old_bw_state) !=
+	    intel_can_enable_sagv(dev_priv, new_bw_state))
+		changed = true;
+
+	/*
+	 * If none of our inputs (data rates, number of active
+	 * planes, SAGV yes/no) changed then nothing to do here.
+	 */
+	if (!changed)
 		return 0;
 
 	ret = intel_atomic_lock_global_state(&new_bw_state->base);
@@ -966,7 +981,6 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	 */
 	new_bw_state->qgv_points_mask = ~allowed_points & mask;
 
-	old_bw_state = intel_atomic_get_old_bw_state(state);
 	/*
 	 * If the actual mask had changed we need to make sure that
 	 * the commits are serialized(in case this is a nomodeset, nonblocking)
-- 
2.34.1

