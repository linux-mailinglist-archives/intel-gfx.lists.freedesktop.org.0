Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 024CB838BEC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 11:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C195D10F130;
	Tue, 23 Jan 2024 10:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755FF10F032;
 Tue, 23 Jan 2024 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706005733; x=1737541733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m5Y6EeaDiHzOZKHfHQp/B8hgDQ2X70S5iRxAkneS8xk=;
 b=LXJZy8lmySVOq7epmNudfb7fnQO94/AgHpl+1I/J0+mrfP8pAXT1TjPE
 s7JusH5xhDNAs8MlVOCQWrhLpxkwSZQxsDsvevtgZOv6HhhksL5kRqaYK
 hPuQr9kT+VdwERK6G3+2V+th9nt150YfI2H0VL9dDkKrDfMUlMYuX0koG
 PsjsvZL0FPnkfkXo8Bga8LE+sw9WQ6i4XIl06JkI2vNXZJIWc34jNS15s
 jlOGQ9/L+Z4XBW7RBaDsk1ffBPUpQprZxgCn62tEWwTj9s7o0Si95FuXe
 jH+bK/zT7WajDYdpHctEFFWtVIHtzuaXE7vLpBcTTrid4KRBkPUsljk44 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="401134209"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="401134209"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 02:28:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="856283413"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="856283413"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 02:28:52 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/19] drm/i915/dp: Add DP tunnel atomic state and check BW
 limit
Date: Tue, 23 Jan 2024 12:28:43 +0200
Message-Id: <20240123102850.390126-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240123102850.390126-1-imre.deak@intel.com>
References: <20240123102850.390126-1-imre.deak@intel.com>
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the atomic state during a modeset required to enable the DP tunnel
BW allocation mode on links where such a tunnel was detected.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c  |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_link_bw.c |  5 +++++
 3 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 96ab37e158995..4236740ede9ed 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -260,6 +260,10 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	if (crtc_state->post_csc_lut)
 		drm_property_blob_get(crtc_state->post_csc_lut);
 
+	if (crtc_state->dp_tunnel_ref.tunnel)
+		drm_dp_tunnel_ref_get(old_crtc_state->dp_tunnel_ref.tunnel,
+					&crtc_state->dp_tunnel_ref);
+
 	crtc_state->update_pipe = false;
 	crtc_state->update_m_n = false;
 	crtc_state->update_lrr = false;
@@ -311,6 +315,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
+	if (crtc_state->dp_tunnel_ref.tunnel)
+		drm_dp_tunnel_ref_put(&crtc_state->dp_tunnel_ref);
 	kfree(crtc_state);
 }
 
@@ -346,6 +352,8 @@ void intel_atomic_state_clear(struct drm_atomic_state *s)
 	/* state->internal not reset on purpose */
 
 	state->dpll_set = state->modeset = false;
+
+	intel_dp_tunnel_atomic_cleanup_inherited_state(state);
 }
 
 struct intel_crtc_state *
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b9f985a5e705b..46b27a32c8640 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -33,6 +33,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/display/drm_dp_helper.h>
+#include <drm/display/drm_dp_tunnel.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
@@ -73,6 +74,7 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
+#include "intel_dp_tunnel.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
 #include "intel_dpt.h"
@@ -4490,6 +4492,8 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
 
 	intel_crtc_free_hw_state(slave_crtc_state);
+	if (slave_crtc_state->dp_tunnel_ref.tunnel)
+		drm_dp_tunnel_ref_put(&slave_crtc_state->dp_tunnel_ref);
 	memcpy(slave_crtc_state, saved_state, sizeof(*slave_crtc_state));
 	kfree(saved_state);
 
@@ -4505,6 +4509,10 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 		      &master_crtc_state->hw.adjusted_mode);
 	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
 
+	if (master_crtc_state->dp_tunnel_ref.tunnel)
+		drm_dp_tunnel_ref_get(master_crtc_state->dp_tunnel_ref.tunnel,
+					&slave_crtc_state->dp_tunnel_ref);
+
 	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
 
 	slave_crtc_state->uapi.mode_changed = master_crtc_state->uapi.mode_changed;
@@ -4533,6 +4541,13 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 	/* free the old crtc_state->hw members */
 	intel_crtc_free_hw_state(crtc_state);
 
+	if (crtc_state->dp_tunnel_ref.tunnel) {
+		drm_dp_tunnel_atomic_set_stream_bw(&state->base,
+						   crtc_state->dp_tunnel_ref.tunnel,
+						   crtc->pipe, 0);
+		drm_dp_tunnel_ref_put(&crtc_state->dp_tunnel_ref);
+	}
+
 	/* FIXME: before the switch to atomic started, a new pipe_config was
 	 * kzalloc'd. Code that depends on any field being zero should be
 	 * fixed, so that the crtc_state can be safely duplicated. For now,
@@ -5374,6 +5389,10 @@ static int intel_modeset_pipe(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	ret = intel_dp_tunnel_atomic_add_state_for_crtc(state, crtc);
+	if (ret)
+		return ret;
+
 	ret = intel_dp_mst_add_topology_state_for_crtc(state, crtc);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index 9c6d35a405a18..5b539ba996ddf 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -8,6 +8,7 @@
 #include "intel_atomic.h"
 #include "intel_display_types.h"
 #include "intel_dp_mst.h"
+#include "intel_dp_tunnel.h"
 #include "intel_fdi.h"
 #include "intel_link_bw.h"
 
@@ -149,6 +150,10 @@ static int check_all_link_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	ret = intel_dp_tunnel_atomic_check_link(state, limits);
+	if (ret)
+		return ret;
+
 	ret = intel_fdi_atomic_check_link(state, limits);
 	if (ret)
 		return ret;
-- 
2.39.2

