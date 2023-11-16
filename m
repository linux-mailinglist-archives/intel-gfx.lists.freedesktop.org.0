Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3915E7EE156
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA86A10E5DA;
	Thu, 16 Nov 2023 13:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC1B10E5D8;
 Thu, 16 Nov 2023 13:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700140725; x=1731676725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JfV7Uu+OT5A/m9+BJcsKjzT8vpmqyhGWO9tixPjFoYs=;
 b=Bi0ZCQfIk1G/XnGvGkKw0LPtPSrYNoLsVii+Yn8oAdgGarrKwKdYx9BO
 TzOebkFgvXJ+2ShxIOXvLvYE+mfQ7VV/sJlApuiCsRJZv+AdBHKgBXgBB
 kd7zueW+fqDyetkYZ9f9Vvt2a84bHQL5/XJExdpSsaDSNDMLtAVpxCxJF
 LYu50pbvAKKMRk3a1MuGn5J1hePEHEKu/s9/JnnYEShriovJxg1hxvWwA
 OsX+bv9klGGZPobHfpwltSORBRYWfXhRp84oVVqlucme1dnv65NshWx7w
 +c+LLlJcOaKN81qNzPlVEfTEGhe5F+MI78U6JYxOQ1jJHtOlXq6fgFpFm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422177147"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422177147"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="938834328"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="938834328"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:18:42 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 15:18:31 +0200
Message-Id: <20231116131841.1588781-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231116131841.1588781-1-imre.deak@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/11] drm/dp_mst: Store the MST PBN divider
 value in fixed point format
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
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Wayne Lin <wayne.lin@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Harry Wentland <harry.wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On UHBR links the PBN divider is a fractional number, accordingly store
it in fixed point format. For now drm_dp_get_vc_payload_bw() always
returns a whole number and all callers will use only the integer part of
it which should preserve the current behavior. The next patch will fix
drm_dp_get_vc_payload_bw() for UHBR rates returning a fractional number
for those (also accounting for the channel coding efficiency correctly).

Cc: Lyude Paul <lyude@redhat.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: Wayne Lin <wayne.lin@amd.com>
Cc: amd-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  5 +++--
 .../amd/display/amdgpu_dm/amdgpu_dm_helpers.c |  3 ++-
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  5 +++--
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 22 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  3 ++-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  6 +++--
 include/drm/display/drm_dp_mst_helper.h       |  7 +++---
 7 files changed, 33 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 74f9f02abcdec..12346b21d0b05 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -85,6 +85,7 @@
 #include <drm/drm_atomic_uapi.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_blend.h>
+#include <drm/drm_fixed.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_eld.h>
@@ -6909,8 +6910,8 @@ static int dm_encoder_helper_atomic_check(struct drm_encoder *encoder,
 	if (IS_ERR(mst_state))
 		return PTR_ERR(mst_state);
 
-	if (!mst_state->pbn_div)
-		mst_state->pbn_div = dm_mst_get_pbn_divider(aconnector->mst_root->dc_link);
+	if (!mst_state->pbn_div.full)
+		mst_state->pbn_div.full = dfixed_const(dm_mst_get_pbn_divider(aconnector->mst_root->dc_link));
 
 	if (!state->duplicated) {
 		int max_bpc = conn_state->max_requested_bpc;
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
index ed784cf27d396..63024393b516e 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
@@ -31,6 +31,7 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/amdgpu_drm.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_fixed.h>
 
 #include "dm_services.h"
 #include "amdgpu.h"
@@ -210,7 +211,7 @@ static void dm_helpers_construct_old_payload(
 			struct drm_dp_mst_atomic_payload *old_payload)
 {
 	struct drm_dp_mst_atomic_payload *pos;
-	int pbn_per_slot = mst_state->pbn_div;
+	int pbn_per_slot = dfixed_trunc(mst_state->pbn_div);
 	u8 next_payload_vc_start = mgr->next_start_slot;
 	u8 payload_vc_start = new_payload->vc_start_slot;
 	u8 allocated_time_slots;
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index 9a58e1a4c5f49..d1ba3ae228b08 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -27,6 +27,7 @@
 #include <drm/display/drm_dp_mst_helper.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_fixed.h>
 #include "dm_services.h"
 #include "amdgpu.h"
 #include "amdgpu_dm.h"
@@ -941,10 +942,10 @@ static int increase_dsc_bpp(struct drm_atomic_state *state,
 		link_timeslots_used = 0;
 
 		for (i = 0; i < count; i++)
-			link_timeslots_used += DIV_ROUND_UP(vars[i + k].pbn, mst_state->pbn_div);
+			link_timeslots_used += DIV_ROUND_UP(vars[i + k].pbn, dfixed_trunc(mst_state->pbn_div));
 
 		fair_pbn_alloc =
-			(63 - link_timeslots_used) / remaining_to_increase * mst_state->pbn_div;
+			(63 - link_timeslots_used) / remaining_to_increase * dfixed_trunc(mst_state->pbn_div);
 
 		if (initial_slack[next_index] > fair_pbn_alloc) {
 			vars[next_index].pbn += fair_pbn_alloc;
diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 4d72c9a32026e..000d05e80352a 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -43,6 +43,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -3578,16 +3579,22 @@ static int drm_dp_send_up_ack_reply(struct drm_dp_mst_topology_mgr *mgr,
  * value is in units of PBNs/(timeslots/1 MTP). This value can be used to
  * convert the number of PBNs required for a given stream to the number of
  * timeslots this stream requires in each MTP.
+ *
+ * Returns the BW / timeslot value in 20.12 fixed point format.
  */
-int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
-			     int link_rate, int link_lane_count)
+fixed20_12 drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
+				    int link_rate, int link_lane_count)
 {
+	fixed20_12 ret;
+
 	if (link_rate == 0 || link_lane_count == 0)
 		drm_dbg_kms(mgr->dev, "invalid link rate/lane count: (%d / %d)\n",
 			    link_rate, link_lane_count);
 
 	/* See DP v2.0 2.6.4.2, VCPayload_Bandwidth_for_OneTimeSlotPer_MTP_Allocation */
-	return link_rate * link_lane_count / 54000;
+	ret.full = dfixed_const(link_rate * link_lane_count / 54000);
+
+	return ret;
 }
 EXPORT_SYMBOL(drm_dp_get_vc_payload_bw);
 
@@ -4335,7 +4342,7 @@ int drm_dp_atomic_find_time_slots(struct drm_atomic_state *state,
 		}
 	}
 
-	req_slots = DIV_ROUND_UP(pbn, topology_state->pbn_div);
+	req_slots = DIV_ROUND_UP(pbn, dfixed_trunc(topology_state->pbn_div));
 
 	drm_dbg_atomic(mgr->dev, "[CONNECTOR:%d:%s] [MST PORT:%p] TU %d -> %d\n",
 		       port->connector->base.id, port->connector->name,
@@ -4872,7 +4879,8 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
 	state = to_drm_dp_mst_topology_state(mgr->base.state);
 	seq_printf(m, "\n*** Atomic state info ***\n");
 	seq_printf(m, "payload_mask: %x, max_payloads: %d, start_slot: %u, pbn_div: %d\n",
-		   state->payload_mask, mgr->max_payloads, state->start_slot, state->pbn_div);
+		   state->payload_mask, mgr->max_payloads, state->start_slot,
+		   dfixed_trunc(state->pbn_div));
 
 	seq_printf(m, "\n| idx | port | vcpi | slots | pbn | dsc | status |     sink name     |\n");
 	for (i = 0; i < mgr->max_payloads; i++) {
@@ -5330,10 +5338,10 @@ drm_dp_mst_atomic_check_payload_alloc_limits(struct drm_dp_mst_topology_mgr *mgr
 	}
 
 	if (!payload_count)
-		mst_state->pbn_div = 0;
+		mst_state->pbn_div.full = dfixed_const(0);
 
 	drm_dbg_atomic(mgr->dev, "[MST MGR:%p] mst state %p TU pbn_div=%d avail=%d used=%d\n",
-		       mgr, mst_state, mst_state->pbn_div, avail_slots,
+		       mgr, mst_state, dfixed_trunc(mst_state->pbn_div), avail_slots,
 		       mst_state->total_avail_slots - avail_slots);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0cb9405f59eaa..e5d6b811c22ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -26,6 +26,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_fixed.h>
 #include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
@@ -202,7 +203,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		 */
 		drm_WARN_ON(&i915->drm, remote_m_n.tu < crtc_state->dp_m_n.tu);
 		crtc_state->dp_m_n.tu = remote_m_n.tu;
-		crtc_state->pbn = remote_m_n.tu * mst_state->pbn_div;
+		crtc_state->pbn = remote_m_n.tu * dfixed_trunc(mst_state->pbn_div);
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index 493fe4660f651..11fe75b68e95c 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -40,6 +40,7 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_eld.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_fixed.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 
@@ -946,7 +947,8 @@ nv50_msto_prepare(struct drm_atomic_state *state,
 	if (ret == 0) {
 		nvif_outp_dp_mst_vcpi(&mstm->outp->outp, msto->head->base.index,
 				      payload->vc_start_slot, payload->time_slots,
-				      payload->pbn, payload->time_slots * mst_state->pbn_div);
+				      payload->pbn,
+				      payload->time_slots * dfixed_trunc(mst_state->pbn_div));
 	} else {
 		nvif_outp_dp_mst_vcpi(&mstm->outp->outp, msto->head->base.index, 0, 0, 0, 0);
 	}
@@ -990,7 +992,7 @@ nv50_msto_atomic_check(struct drm_encoder *encoder,
 	if (IS_ERR(mst_state))
 		return PTR_ERR(mst_state);
 
-	if (!mst_state->pbn_div) {
+	if (!mst_state->pbn_div.full) {
 		struct nouveau_encoder *outp = mstc->mstm->outp;
 
 		mst_state->pbn_div = drm_dp_get_vc_payload_bw(&mstm->mgr,
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index a4aad6df71f18..9b19d8bd520af 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -25,6 +25,7 @@
 #include <linux/types.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_atomic.h>
+#include <drm/drm_fixed.h>
 
 #if IS_ENABLED(CONFIG_DRM_DEBUG_DP_MST_TOPOLOGY_REFS)
 #include <linux/stackdepot.h>
@@ -617,7 +618,7 @@ struct drm_dp_mst_topology_state {
 	 * @pbn_div: The current PBN divisor for this topology. The driver is expected to fill this
 	 * out itself.
 	 */
-	int pbn_div;
+	fixed20_12 pbn_div;
 };
 
 #define to_dp_mst_topology_mgr(x) container_of(x, struct drm_dp_mst_topology_mgr, base)
@@ -839,8 +840,8 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
 				 struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_dp_mst_port *port);
 
-int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
-			     int link_rate, int link_lane_count);
+fixed20_12 drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
+				    int link_rate, int link_lane_count);
 
 int drm_dp_calc_pbn_mode(int clock, int bpp);
 
-- 
2.39.2

