Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692B568BC05
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 12:49:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F50F10E393;
	Mon,  6 Feb 2023 11:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F8210E38F;
 Mon,  6 Feb 2023 11:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675684144; x=1707220144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C0W+eono4sltvdvYAzCL0vfRerdcTsC/QKstAbrclUc=;
 b=doZkm4Ciw+Kip6r+6xqX9Uj+NPSYFdeSnS0bv2y3XhEJbniHLlgB+1RY
 6n7kS/oKBE3sCeeCKhzFmMH/LKAff9t3HR0pduYMJP/ysQy4lOR/OHU4x
 yK/Jea/ki3FWBbQlDps2mpDPa3bhg2Uo1vi+SGnTmqB3qJIWyfqA+197S
 JloWXaE/tX0mm355KrG1Q8T7tiCDA+e2q5dOJ4KEgThPxC3Njhm0g7BK5
 zp67Yt8pEu+Hy32+/pRlWgRcJocg4OmQyNLtpjjgED6IZGH3J/D8ZtVgb
 i5HcLvc3BsEpieAgJqGPf2psjiMeeofTmRy2F0ave5RpE8hxcBseAkjmv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="308829049"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="308829049"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 03:49:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="696850347"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="696850347"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 03:49:01 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Feb 2023 13:48:54 +0200
Message-Id: <20230206114856.2665066-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230206114856.2665066-1-imre.deak@intel.com>
References: <20230206114856.2665066-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/4] drm/display/dp_mst: Handle old/new payload
 states in drm_dp_remove_payload()
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
Cc: Karol Herbst <kherbst@redhat.com>, dri-devel@lists.freedesktop.org,
 stable@vger.kernel.org, Ben Skeggs <bskeggs@redhat.com>,
 Wayne Lin <Wayne.Lin@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Harry Wentland <harry.wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Atm, drm_dp_remove_payload() uses the same payload state to both get the
vc_start_slot required for the payload removal DPCD message and to
deduct time_slots from vc_start_slot of all payloads after the one being
removed.

The above isn't always correct, as vc_start_slot must be the up-to-date
version contained in the new payload state, but time_slots must be the
one used when the payload was previously added, contained in the old
payload state. The new payload's time_slots can change vs. the old one
if the current atomic commit changes the corresponding mode.

This patch let's drivers pass the old and new payload states to
drm_dp_remove_payload(), but keeps these the same for now in all drivers
not to change the behavior. A follow-up i915 patch will pass in that
driver the correct old and new states to the function.

Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ben Skeggs <bskeggs@redhat.com>
Cc: Karol Herbst <kherbst@redhat.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: Wayne Lin <Wayne.Lin@amd.com>
Cc: stable@vger.kernel.org # 6.1
Cc: dri-devel@lists.freedesktop.org
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../amd/display/amdgpu_dm/amdgpu_dm_helpers.c |  2 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 26 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 ++-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |  2 +-
 include/drm/display/drm_dp_mst_helper.h       |  3 ++-
 5 files changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
index a50319fc42b11..180d3893b68da 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
@@ -208,7 +208,7 @@ bool dm_helpers_dp_mst_write_payload_allocation_table(
 	if (enable)
 		drm_dp_add_payload_part1(mst_mgr, mst_state, payload);
 	else
-		drm_dp_remove_payload(mst_mgr, mst_state, payload);
+		drm_dp_remove_payload(mst_mgr, mst_state, payload, payload);
 
 	/* mst_mgr->->payloads are VC payload notify MST branch using DPCD or
 	 * AUX message. The sequence is slot 1-63 allocated sequence for each
diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 847c10aa2098c..1990ff5dc7ddd 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -3342,7 +3342,8 @@ EXPORT_SYMBOL(drm_dp_add_payload_part1);
  * drm_dp_remove_payload() - Remove an MST payload
  * @mgr: Manager to use.
  * @mst_state: The MST atomic state
- * @payload: The payload to write
+ * @old_payload: The payload with its old state
+ * @new_payload: The payload to write
  *
  * Removes a payload from an MST topology if it was successfully assigned a start slot. Also updates
  * the starting time slots of all other payloads which would have been shifted towards the start of
@@ -3350,36 +3351,37 @@ EXPORT_SYMBOL(drm_dp_add_payload_part1);
  */
 void drm_dp_remove_payload(struct drm_dp_mst_topology_mgr *mgr,
 			   struct drm_dp_mst_topology_state *mst_state,
-			   struct drm_dp_mst_atomic_payload *payload)
+			   const struct drm_dp_mst_atomic_payload *old_payload,
+			   struct drm_dp_mst_atomic_payload *new_payload)
 {
 	struct drm_dp_mst_atomic_payload *pos;
 	bool send_remove = false;
 
 	/* We failed to make the payload, so nothing to do */
-	if (payload->vc_start_slot == -1)
+	if (new_payload->vc_start_slot == -1)
 		return;
 
 	mutex_lock(&mgr->lock);
-	send_remove = drm_dp_mst_port_downstream_of_branch(payload->port, mgr->mst_primary);
+	send_remove = drm_dp_mst_port_downstream_of_branch(new_payload->port, mgr->mst_primary);
 	mutex_unlock(&mgr->lock);
 
 	if (send_remove)
-		drm_dp_destroy_payload_step1(mgr, mst_state, payload);
+		drm_dp_destroy_payload_step1(mgr, mst_state, new_payload);
 	else
 		drm_dbg_kms(mgr->dev, "Payload for VCPI %d not in topology, not sending remove\n",
-			    payload->vcpi);
+			    new_payload->vcpi);
 
 	list_for_each_entry(pos, &mst_state->payloads, next) {
-		if (pos != payload && pos->vc_start_slot > payload->vc_start_slot)
-			pos->vc_start_slot -= payload->time_slots;
+		if (pos != new_payload && pos->vc_start_slot > new_payload->vc_start_slot)
+			pos->vc_start_slot -= old_payload->time_slots;
 	}
-	payload->vc_start_slot = -1;
+	new_payload->vc_start_slot = -1;
 
 	mgr->payload_count--;
-	mgr->next_start_slot -= payload->time_slots;
+	mgr->next_start_slot -= old_payload->time_slots;
 
-	if (payload->delete)
-		drm_dp_mst_put_port_malloc(payload->port);
+	if (new_payload->delete)
+		drm_dp_mst_put_port_malloc(new_payload->port);
 }
 EXPORT_SYMBOL(drm_dp_remove_payload);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f3cb12dcfe0a7..dc4e5ff1dbb31 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -526,6 +526,8 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 		to_intel_connector(old_conn_state->connector);
 	struct drm_dp_mst_topology_state *mst_state =
 		drm_atomic_get_mst_topology_state(&state->base, &intel_dp->mst_mgr);
+	struct drm_dp_mst_atomic_payload *payload =
+		drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	drm_dbg_kms(&i915->drm, "active links %d\n",
@@ -534,7 +536,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	intel_hdcp_disable(intel_mst->connector);
 
 	drm_dp_remove_payload(&intel_dp->mst_mgr, mst_state,
-			      drm_atomic_get_mst_payload_state(mst_state, connector->port));
+			      payload, payload);
 
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
 }
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index edcb2529b4025..ed9d374147b8d 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -885,7 +885,7 @@ nv50_msto_prepare(struct drm_atomic_state *state,
 
 	// TODO: Figure out if we want to do a better job of handling VCPI allocation failures here?
 	if (msto->disabled) {
-		drm_dp_remove_payload(mgr, mst_state, payload);
+		drm_dp_remove_payload(mgr, mst_state, payload, payload);
 
 		nvif_outp_dp_mst_vcpi(&mstm->outp->outp, msto->head->base.index, 0, 0, 0, 0);
 	} else {
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index 41fd8352ab656..f5eb9aa152b14 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -841,7 +841,8 @@ int drm_dp_add_payload_part2(struct drm_dp_mst_topology_mgr *mgr,
 			     struct drm_dp_mst_atomic_payload *payload);
 void drm_dp_remove_payload(struct drm_dp_mst_topology_mgr *mgr,
 			   struct drm_dp_mst_topology_state *mst_state,
-			   struct drm_dp_mst_atomic_payload *payload);
+			   const struct drm_dp_mst_atomic_payload *old_payload,
+			   struct drm_dp_mst_atomic_payload *new_payload);
 
 int drm_dp_check_act_status(struct drm_dp_mst_topology_mgr *mgr);
 
-- 
2.37.1

