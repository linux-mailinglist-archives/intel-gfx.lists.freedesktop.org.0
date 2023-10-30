Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0F17DBD25
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0787410E30D;
	Mon, 30 Oct 2023 15:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C3910E31A
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681518; x=1730217518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k+pIbFoaiIRtA+SvqYdDMvlL2MyxcG/gyxP1HC842so=;
 b=iY6Hq7WY9r2WRFp+34dQOJ9JJxgm4inKUnOpjuAVf85hqYP7t8oW8ARW
 RX/EWitJ9ldYRlc1rkfzEG7cUE3uWH/4J+hsBQPfJxMh8JLAR0jy3mKb+
 Jd6c1t3rEK3R19YkjENmSKMFNKK3c3QmgjlIQZUk585glc4sQiMKbe72M
 bfssj7YFgY7YPNAg7D8IY/lFd3luVLfkS7kf5jicHJ8Le37cJISsItfCO
 6aB7aO4K0jniawYT/BgWMgHbZJBQU40x5ysAdl5msz6Ahou/9sYZwzmNY
 cwphmbZzIu1kgBpYQ36Cc60fyNTUrG9MFPS6lW7qa2dQXQPL8dfmAQNTQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974472"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974472"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789493992"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789493992"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:27 +0200
Message-Id: <20231030155843.2251023-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 14/30] drm/i915/dp_mst: Add atomic state for
 all streams on pre-tgl platforms
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

If an MST stream is modeset, its state must be checked along all the
other streams on the same MST link, for instance to resolve a BW
overallocation of a non-sink MST port or to make sure that the FEC is
enabled/disabled the same way for all these streams.

To prepare for that this patch adds all the stream CRTCs to the atomic
state and marks them for modeset similarly to tgl+ platforms. (If the
state computation doesn't change the state the CRTC is switched back to
fastset mode.)

So far on tgl+ this was required because all streams in the topology
shared the master transcoder. For older platforms this didn't apply but
adding all the state is required now on all platforms based on the
above.

v2:
- Add code and commit log comment clarifying the requirements on old/new
  platforms. (Stan)
- Rename the function based on the new semantic. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 05b2d5d547c85..5e7aab2b23f2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -541,19 +541,23 @@ static int intel_dp_mst_compute_config_late(struct intel_encoder *encoder,
  * that shares the same MST stream as mode changed,
  * intel_modeset_pipe_config()+intel_crtc_check_fastset() will take care to do
  * a fastset when possible.
+ *
+ * On TGL+ this is required since each stream go through a master transcoder,
+ * so if the master transcoder needs modeset, all other streams in the
+ * topology need a modeset. All platforms need to add the atomic state
+ * for all streams in the topology, since a modeset on one may require
+ * changing the MST link BW usage of the others, which in turn needs a
+ * recomputation of the corresponding CRTC states.
  */
 static int
-intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
-				       struct intel_atomic_state *state)
+intel_dp_mst_atomic_topology_check(struct intel_connector *connector,
+				   struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct drm_connector_list_iter connector_list_iter;
 	struct intel_connector *connector_iter;
 	int ret = 0;
 
-	if (DISPLAY_VER(dev_priv) < 12)
-		return  0;
-
 	if (!intel_connector_needs_modeset(state, &connector->base))
 		return 0;
 
@@ -607,7 +611,7 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
 	if (ret)
 		return ret;
 
-	ret = intel_dp_mst_atomic_master_trans_check(intel_connector, state);
+	ret = intel_dp_mst_atomic_topology_check(intel_connector, state);
 	if (ret)
 		return ret;
 
-- 
2.39.2

