Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7815411BD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 21:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35E010F1C6;
	Tue,  7 Jun 2022 19:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B841C10F1AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 19:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654630990;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ry+Do5p0Z2Fq3avGe3uuDZzy4Slnc+zvOAvGwzxGbmM=;
 b=X2rFqaD5XZvFOKjmlci1UcwLxzwvqhFB0W75UEvx1mlnppiwE5C7hW5FsejWNUUb19iL1x
 nZ/RsrxyaNP4oHow2CizmZP6icK2PTVeUY+KHq1oZBuoVouNeC3cK2bXzvbb6Uxj+tZ74J
 opqRBcEq4yZJgo74lh0kSUWMK38BxDg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-99-V6ccdGHqPw-_JT0tBwEoaA-1; Tue, 07 Jun 2022 15:43:09 -0400
X-MC-Unique: V6ccdGHqPw-_JT0tBwEoaA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 182E08026B1;
 Tue,  7 Jun 2022 19:38:56 +0000 (UTC)
Received: from emerald.redhat.com (unknown [10.22.9.252])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 06D1A2BFF527;
 Tue,  7 Jun 2022 19:37:51 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Date: Tue,  7 Jun 2022 15:29:33 -0400
Message-Id: <20220607192933.1333228-19-lyude@redhat.com>
In-Reply-To: <20220607192933.1333228-1-lyude@redhat.com>
References: <20220607192933.1333228-1-lyude@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Subject: [Intel-gfx] [RESEND RFC 18/18] drm/display/dp_mst: Move all payload
 info into the atomic state
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
Cc: Ian Chen <ian.chen@amd.com>, Simon Ser <contact@emersion.fr>,
 Karol Herbst <kherbst@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 open list <linux-kernel@vger.kernel.org>, Jun Lei <jun.lei@amd.com>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Javier Martinez Canillas <javierm@redhat.com>, Hersen Wu <hersenwu@amd.com>,
 Leo Li <sunpeng.li@amd.com>, Fangzhi Zuo <Jerry.Zuo@amd.com>,
 Michael Strauss <michael.strauss@amd.com>, Ben Skeggs <bskeggs@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jani Nikula <jani.nikula@intel.com>,
 "open list:INTEL DRM DRIVERS" <intel-gfx@lists.freedesktop.org>,
 Luo Jiaxing <luojiaxing@huawei.com>, Wenjing Liu <wenjing.liu@amd.com>,
 Sean Paul <seanpaul@chromium.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Leo \(Hanghong\) Ma" <hanghong.ma@amd.com>,
 Mikita Lipski <mikita.lipski@amd.com>, He Ying <heying24@huawei.com>,
 Jude Shih <shenshih@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Roman Li <Roman.Li@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Wayne Lin <Wayne.Lin@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Colin Ian King <colin.king@intel.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
 Fernando Ramos <greenfoo@u92.eu>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we've finally gotten rid of the non-atomic MST users leftover in
the kernel, we can finally get rid of all of the legacy payload code we
have and move as much as possible into the MST atomic state structs. The
main purpose of this is to make the MST code a lot less confusing to work
on, as there's a lot of duplicated logic that doesn't really need to be
here. As well, this should make introducing features like fallback link
retraining and DSC support far easier.

Since the old payload code was pretty gnarly and there's a Lot of changes
here, I expect this might be a bit difficult to review. So to make things
as easy as possible for reviewers, I'll sum up how both the old and new
code worked here (it took me a while to figure this out too!).

The old MST code basically worked by maintaining two different payload
tables - proposed_vcpis, and payloads. proposed_vcpis would hold the
modified payload we wanted to push to the topology, while payloads held the
payload table that was currently programmed in hardware. Modifications to
proposed_vcpis would be handled through drm_dp_allocate_vcpi(),
drm_dp_mst_deallocate_vcpi(), and drm_dp_mst_reset_vcpi_slots(). Then, they
would be pushed via drm_dp_mst_update_payload_step1() and
drm_dp_mst_update_payload_step2().

Furthermore, it's important to note how adding and removing VC payloads
actually worked with drm_dp_mst_update_payload_step1(). When a VC payload
is removed from the VC table, all VC payloads which come after the removed
VC payload's slots must have their time slots shifted towards the start of
the table. The old code handles this by looping through the entire payload
table and recomputing the start slot for every payload in the topology from
scratch. While very much overkill, this ends up doing the right thing
because we always order the VCPIs for payloads from first to last starting
timeslot.

It's important to also note that drm_dp_mst_update_payload_step2() isn't
actually limited to updating a single payload - the driver can use it to
queue up multiple payload changes so that as many of them can be sent as
possible before waiting for the ACT.

drm_dp_mst_update_payload_step2() is pretty self explanatory and basically
the same between the old and new code, save for the fact we don't have a
second step for deleting payloads anymore -and thus rename it to
drm_dp_mst_add_payload_step2().

The new payload code stores all of the current payload info within the MST
atomic state and computes as much of the state as possible ahead of time.
This has the one exception of the starting timeslots for payloads, which
can't be determined at atomic check time since the starting time slots will
vary depending on what order CRTCs are enabled in the atomic state - which
varies from driver to driver. These are still stored in the atomic MST
state, but are only copied from the old MST state during atomic commit
time. Likewise, this is when new start slots are determined.

Adding/removing payloads now works much more closely to how things are
described in the spec. When we delete a payload, we loop through the
current list of payloads and update the start slots for any payloads whose
time slots came after the payload we just deleted. Determining the starting
time slots for new payloads being added is done by simply keeping track of
where the end of the VC table is in
drm_dp_mst_topology_mgr->next_start_slot. Additionally, it's worth noting
that we no longer have a single update_payload() function. Instead, we now
have drm_dp_mst_add_payload_step1|2() and drm_dp_mst_remove_payload(). As
such, it's now left it up to the driver to figure out when to add or remove
payloads. The driver already knows when it's disabling/enabling CRTCs, so
it also already knows when payloads should be added or removed. And, this
doesn't interfere with the ability to queue up multiple payload changes
before waiting for the ACT.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Cc: Wayne Lin <Wayne.Lin@amd.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Fangzhi Zuo <Jerry.Zuo@amd.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Sean Paul <sean@poorly.run>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  56 +-
 .../amd/display/amdgpu_dm/amdgpu_dm_helpers.c | 107 +--
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  85 +--
 .../amd/display/include/link_service_types.h  |   7 +
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 699 ++++++------------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  64 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  24 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c       | 163 ++--
 include/drm/display/drm_dp_mst_helper.h       | 178 ++---
 9 files changed, 536 insertions(+), 847 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index ac8648e3c1c9..93d572ea3c48 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -7378,6 +7378,7 @@ static int dm_encoder_helper_atomic_check(struct drm_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
 	struct drm_dp_mst_topology_mgr *mst_mgr;
 	struct drm_dp_mst_port *mst_port;
+	struct drm_dp_mst_topology_state *mst_state;
 	enum dc_color_depth color_depth;
 	int clock, bpp = 0;
 	bool is_y420 = false;
@@ -7391,6 +7392,13 @@ static int dm_encoder_helper_atomic_check(struct drm_encoder *encoder,
 	if (!crtc_state->connectors_changed && !crtc_state->mode_changed)
 		return 0;
 
+	mst_state = drm_atomic_get_mst_topology_state(state, mst_mgr);
+	if (IS_ERR(mst_state))
+		return PTR_ERR(mst_state);
+
+	if (!mst_state->pbn_div)
+		mst_state->pbn_div = dm_mst_get_pbn_divider(aconnector->mst_port->dc_link);
+
 	if (!state->duplicated) {
 		int max_bpc = conn_state->max_requested_bpc;
 		is_y420 = drm_mode_is_420_also(&connector->display_info, adjusted_mode) &&
@@ -7402,11 +7410,10 @@ static int dm_encoder_helper_atomic_check(struct drm_encoder *encoder,
 		clock = adjusted_mode->clock;
 		dm_new_connector_state->pbn = drm_dp_calc_pbn_mode(clock, bpp, false);
 	}
-	dm_new_connector_state->vcpi_slots = drm_dp_atomic_find_time_slots(state,
-									   mst_mgr,
-									   mst_port,
-									   dm_new_connector_state->pbn,
-									   dm_mst_get_pbn_divider(aconnector->dc_link));
+
+	dm_new_connector_state->vcpi_slots =
+		drm_dp_atomic_find_time_slots(state, mst_mgr, mst_port,
+					      dm_new_connector_state->pbn);
 	if (dm_new_connector_state->vcpi_slots < 0) {
 		DRM_DEBUG_ATOMIC("failed finding vcpi slots: %d\n", (int)dm_new_connector_state->vcpi_slots);
 		return dm_new_connector_state->vcpi_slots;
@@ -7476,18 +7483,12 @@ static int dm_update_mst_vcpi_slots_for_dsc(struct drm_atomic_state *state,
 			dm_conn_state->pbn = pbn;
 			dm_conn_state->vcpi_slots = slot_num;
 
-			drm_dp_mst_atomic_enable_dsc(state,
-						     aconnector->port,
-						     dm_conn_state->pbn,
-						     0,
+			drm_dp_mst_atomic_enable_dsc(state, aconnector->port, dm_conn_state->pbn,
 						     false);
 			continue;
 		}
 
-		vcpi = drm_dp_mst_atomic_enable_dsc(state,
-						    aconnector->port,
-						    pbn, pbn_div,
-						    true);
+		vcpi = drm_dp_mst_atomic_enable_dsc(state, aconnector->port, pbn, true);
 		if (vcpi < 0)
 			return vcpi;
 
@@ -10943,8 +10944,6 @@ static int amdgpu_dm_atomic_check(struct drm_device *dev,
 	struct dm_crtc_state *dm_old_crtc_state, *dm_new_crtc_state;
 #if defined(CONFIG_DRM_AMD_DC_DCN)
 	struct dsc_mst_fairness_vars vars[MAX_PIPES];
-	struct drm_dp_mst_topology_state *mst_state;
-	struct drm_dp_mst_topology_mgr *mgr;
 #endif
 
 	trace_amdgpu_dm_atomic_check_begin(state);
@@ -11180,33 +11179,6 @@ static int amdgpu_dm_atomic_check(struct drm_device *dev,
 		lock_and_validation_needed = true;
 	}
 
-#if defined(CONFIG_DRM_AMD_DC_DCN)
-	/* set the slot info for each mst_state based on the link encoding format */
-	for_each_new_mst_mgr_in_state(state, mgr, mst_state, i) {
-		struct amdgpu_dm_connector *aconnector;
-		struct drm_connector *connector;
-		struct drm_connector_list_iter iter;
-		u8 link_coding_cap;
-
-		if (!mgr->mst_state )
-			continue;
-
-		drm_connector_list_iter_begin(dev, &iter);
-		drm_for_each_connector_iter(connector, &iter) {
-			int id = connector->index;
-
-			if (id == mst_state->mgr->conn_base_id) {
-				aconnector = to_amdgpu_dm_connector(connector);
-				link_coding_cap = dc_link_dp_mst_decide_link_encoding_format(aconnector->dc_link);
-				drm_dp_mst_update_slots(mst_state, link_coding_cap);
-
-				break;
-			}
-		}
-		drm_connector_list_iter_end(&iter);
-
-	}
-#endif
 	/**
 	 * Streams and planes are reset when there are changes that affect
 	 * bandwidth. Anything that affects bandwidth needs to go through
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
index 1eaacab0334b..f843fd86787f 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c
@@ -27,6 +27,7 @@
 #include <linux/acpi.h>
 #include <linux/i2c.h>
 
+#include <drm/drm_atomic.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/amdgpu_drm.h>
 #include <drm/drm_edid.h>
@@ -154,40 +155,32 @@ enum dc_edid_status dm_helpers_parse_edid_caps(
 }
 
 static void
-fill_dc_mst_payload_table_from_drm(struct amdgpu_dm_connector *aconnector,
-				   struct dc_dp_mst_stream_allocation_table *proposed_table)
+fill_dc_mst_payload_table_from_drm(struct drm_dp_mst_topology_state *mst_state,
+				   struct amdgpu_dm_connector *aconnector,
+				   struct dc_dp_mst_stream_allocation_table *table)
 {
+	struct dc_dp_mst_stream_allocation_table new_table = { 0 };
+	struct dc_dp_mst_stream_allocation *sa;
+	struct drm_dp_mst_atomic_payload *payload;
 	int i;
-	struct drm_dp_mst_topology_mgr *mst_mgr =
-			&aconnector->mst_port->mst_mgr;
 
-	mutex_lock(&mst_mgr->payload_lock);
-
-	proposed_table->stream_count = 0;
-
-	/* number of active streams */
-	for (i = 0; i < mst_mgr->max_payloads; i++) {
-		if (mst_mgr->payloads[i].num_slots == 0)
-			break; /* end of vcp_id table */
-
-		ASSERT(mst_mgr->payloads[i].payload_state !=
-				DP_PAYLOAD_DELETE_LOCAL);
-
-		if (mst_mgr->payloads[i].payload_state == DP_PAYLOAD_LOCAL ||
-			mst_mgr->payloads[i].payload_state ==
-					DP_PAYLOAD_REMOTE) {
-
-			struct dc_dp_mst_stream_allocation *sa =
-					&proposed_table->stream_allocations[
-						proposed_table->stream_count];
-
-			sa->slot_count = mst_mgr->payloads[i].num_slots;
-			sa->vcp_id = mst_mgr->proposed_vcpis[i]->vcpi;
-			proposed_table->stream_count++;
-		}
+	/* Copy over payloads */
+	list_for_each_entry(payload, &mst_state->payloads, next) {
+		if (payload->delete)
+			continue;
+
+		sa = &new_table.stream_allocations[new_table.stream_count];
+		sa->slot_count = payload->time_slots;
+		sa->vcp_id = payload->vcpi;
+		sa->port = payload->port;
+		drm_dp_mst_get_port_malloc(sa->port);
+		new_table.stream_count++;
 	}
 
-	mutex_unlock(&mst_mgr->payload_lock);
+	/* Release the old table, and copy over the new one */
+	for (i = 0; i < table->stream_count; i++)
+		drm_dp_mst_put_port_malloc(table->stream_allocations[i].port);
+	*table = new_table;
 }
 
 void dm_helpers_dp_update_branch_info(
@@ -205,11 +198,9 @@ bool dm_helpers_dp_mst_write_payload_allocation_table(
 		bool enable)
 {
 	struct amdgpu_dm_connector *aconnector;
-	struct dm_connector_state *dm_conn_state;
+	struct drm_dp_mst_topology_state *mst_state;
+	struct drm_dp_mst_atomic_payload *payload;
 	struct drm_dp_mst_topology_mgr *mst_mgr;
-	struct drm_dp_mst_port *mst_port;
-	bool ret;
-	u8 link_coding_cap = DP_8b_10b_ENCODING;
 
 	aconnector = (struct amdgpu_dm_connector *)stream->dm_stream_context;
 	/* Accessing the connector state is required for vcpi_slots allocation
@@ -220,40 +211,21 @@ bool dm_helpers_dp_mst_write_payload_allocation_table(
 	if (!aconnector || !aconnector->mst_port)
 		return false;
 
-	dm_conn_state = to_dm_connector_state(aconnector->base.state);
-
 	mst_mgr = &aconnector->mst_port->mst_mgr;
-
-	if (!mst_mgr->mst_state)
-		return false;
-
-	mst_port = aconnector->port;
-
-#if defined(CONFIG_DRM_AMD_DC_DCN)
-	link_coding_cap = dc_link_dp_mst_decide_link_encoding_format(aconnector->dc_link);
-#endif
-
-	if (enable) {
-
-		ret = drm_dp_mst_allocate_vcpi(mst_mgr, mst_port,
-					       dm_conn_state->pbn,
-					       dm_conn_state->vcpi_slots);
-		if (!ret)
-			return false;
-
-	} else {
-		drm_dp_mst_reset_vcpi_slots(mst_mgr, mst_port);
-	}
+	mst_state = to_drm_dp_mst_topology_state(mst_mgr->base.state);
 
 	/* It's OK for this to fail */
-	drm_dp_update_payload_part1(mst_mgr, (link_coding_cap == DP_CAP_ANSI_128B132B) ? 0:1);
+	payload = drm_atomic_get_mst_payload_state(mst_state, aconnector->port);
+	if (enable)
+		drm_dp_add_payload_part1(mst_mgr, mst_state, payload);
+	else
+		drm_dp_remove_payload(mst_mgr, mst_state, payload);
 
 	/* mst_mgr->->payloads are VC payload notify MST branch using DPCD or
 	 * AUX message. The sequence is slot 1-63 allocated sequence for each
 	 * stream. AMD ASIC stream slot allocation should follow the same
 	 * sequence. copy DRM MST allocation to dc */
-
-	fill_dc_mst_payload_table_from_drm(aconnector, proposed_table);
+	fill_dc_mst_payload_table_from_drm(mst_state, aconnector, proposed_table);
 
 	return true;
 }
@@ -310,26 +282,23 @@ bool dm_helpers_dp_mst_send_payload_allocation(
 		bool enable)
 {
 	struct amdgpu_dm_connector *aconnector;
+	struct drm_dp_mst_topology_state *mst_state;
 	struct drm_dp_mst_topology_mgr *mst_mgr;
-	struct drm_dp_mst_port *mst_port;
+	struct drm_dp_mst_atomic_payload *payload;
 
 	aconnector = (struct amdgpu_dm_connector *)stream->dm_stream_context;
 
 	if (!aconnector || !aconnector->mst_port)
 		return false;
 
-	mst_port = aconnector->port;
-
 	mst_mgr = &aconnector->mst_port->mst_mgr;
-
-	if (!mst_mgr->mst_state)
-		return false;
+	mst_state = to_drm_dp_mst_topology_state(mst_mgr->base.state);
 
 	/* It's OK for this to fail */
-	drm_dp_update_payload_part2(mst_mgr);
-
-	if (!enable)
-		drm_dp_mst_deallocate_vcpi(mst_mgr, mst_port);
+	if (enable) {
+		payload = drm_atomic_get_mst_payload_state(mst_state, aconnector->port);
+		drm_dp_add_payload_part2(mst_mgr, mst_state->base.state, payload);
+	}
 
 	return true;
 }
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index b447c453b58d..18de4a98df40 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -501,15 +501,8 @@ void amdgpu_dm_initialize_dp_connector(struct amdgpu_display_manager *dm,
 
 	dc_link_dp_get_max_link_enc_cap(aconnector->dc_link, &max_link_enc_cap);
 	aconnector->mst_mgr.cbs = &dm_mst_cbs;
-	drm_dp_mst_topology_mgr_init(
-		&aconnector->mst_mgr,
-		adev_to_drm(dm->adev),
-		&aconnector->dm_dp_aux.aux,
-		16,
-		4,
-		max_link_enc_cap.lane_count,
-		drm_dp_bw_code_to_link_rate(max_link_enc_cap.link_rate),
-		aconnector->connector_id);
+	drm_dp_mst_topology_mgr_init(&aconnector->mst_mgr, adev_to_drm(dm->adev),
+				     &aconnector->dm_dp_aux.aux, 16, 4, aconnector->connector_id);
 
 	drm_connector_attach_dp_subconnector_property(&aconnector->base);
 }
@@ -614,6 +607,7 @@ static int bpp_x16_from_pbn(struct dsc_mst_fairness_params param, int pbn)
 }
 
 static void increase_dsc_bpp(struct drm_atomic_state *state,
+			     struct drm_dp_mst_topology_state *mst_state,
 			     struct dc_link *dc_link,
 			     struct dsc_mst_fairness_params *params,
 			     struct dsc_mst_fairness_vars *vars,
@@ -626,12 +620,9 @@ static void increase_dsc_bpp(struct drm_atomic_state *state,
 	int min_initial_slack;
 	int next_index;
 	int remaining_to_increase = 0;
-	int pbn_per_timeslot;
 	int link_timeslots_used;
 	int fair_pbn_alloc;
 
-	pbn_per_timeslot = dm_mst_get_pbn_divider(dc_link);
-
 	for (i = 0; i < count; i++) {
 		if (vars[i + k].dsc_enabled) {
 			initial_slack[i] =
@@ -662,17 +653,17 @@ static void increase_dsc_bpp(struct drm_atomic_state *state,
 		link_timeslots_used = 0;
 
 		for (i = 0; i < count; i++)
-			link_timeslots_used += DIV_ROUND_UP(vars[i + k].pbn, pbn_per_timeslot);
+			link_timeslots_used += DIV_ROUND_UP(vars[i + k].pbn, mst_state->pbn_div);
 
-		fair_pbn_alloc = (63 - link_timeslots_used) / remaining_to_increase * pbn_per_timeslot;
+		fair_pbn_alloc =
+			(63 - link_timeslots_used) / remaining_to_increase * mst_state->pbn_div;
 
 		if (initial_slack[next_index] > fair_pbn_alloc) {
 			vars[next_index].pbn += fair_pbn_alloc;
 			if (drm_dp_atomic_find_time_slots(state,
 							  params[next_index].port->mgr,
 							  params[next_index].port,
-							  vars[next_index].pbn,
-							  pbn_per_timeslot) < 0)
+							  vars[next_index].pbn) < 0)
 				return;
 			if (!drm_dp_mst_atomic_check(state)) {
 				vars[next_index].bpp_x16 = bpp_x16_from_pbn(params[next_index], vars[next_index].pbn);
@@ -681,8 +672,7 @@ static void increase_dsc_bpp(struct drm_atomic_state *state,
 				if (drm_dp_atomic_find_time_slots(state,
 								  params[next_index].port->mgr,
 								  params[next_index].port,
-								  vars[next_index].pbn,
-								  pbn_per_timeslot) < 0)
+								  vars[next_index].pbn) < 0)
 					return;
 			}
 		} else {
@@ -690,8 +680,7 @@ static void increase_dsc_bpp(struct drm_atomic_state *state,
 			if (drm_dp_atomic_find_time_slots(state,
 							  params[next_index].port->mgr,
 							  params[next_index].port,
-							  vars[next_index].pbn,
-							  pbn_per_timeslot) < 0)
+							  vars[next_index].pbn) < 0)
 				return;
 			if (!drm_dp_mst_atomic_check(state)) {
 				vars[next_index].bpp_x16 = params[next_index].bw_range.max_target_bpp_x16;
@@ -700,8 +689,7 @@ static void increase_dsc_bpp(struct drm_atomic_state *state,
 				if (drm_dp_atomic_find_time_slots(state,
 								  params[next_index].port->mgr,
 								  params[next_index].port,
-								  vars[next_index].pbn,
-								  pbn_per_timeslot) < 0)
+								  vars[next_index].pbn) < 0)
 					return;
 			}
 		}
@@ -757,8 +745,7 @@ static void try_disable_dsc(struct drm_atomic_state *state,
 		if (drm_dp_atomic_find_time_slots(state,
 						  params[next_index].port->mgr,
 						  params[next_index].port,
-						  vars[next_index].pbn,
-						  dm_mst_get_pbn_divider(dc_link)) < 0)
+						  vars[next_index].pbn) < 0)
 			return;
 
 		if (!drm_dp_mst_atomic_check(state)) {
@@ -769,8 +756,7 @@ static void try_disable_dsc(struct drm_atomic_state *state,
 			if (drm_dp_atomic_find_time_slots(state,
 							  params[next_index].port->mgr,
 							  params[next_index].port,
-							  vars[next_index].pbn,
-							  dm_mst_get_pbn_divider(dc_link)) < 0)
+							  vars[next_index].pbn) < 0)
 				return;
 		}
 
@@ -783,17 +769,27 @@ static bool compute_mst_dsc_configs_for_link(struct drm_atomic_state *state,
 					     struct dc_state *dc_state,
 					     struct dc_link *dc_link,
 					     struct dsc_mst_fairness_vars *vars,
+					     struct drm_dp_mst_topology_mgr *mgr,
 					     int *link_vars_start_index)
 {
-	int i, k;
 	struct dc_stream_state *stream;
 	struct dsc_mst_fairness_params params[MAX_PIPES];
 	struct amdgpu_dm_connector *aconnector;
+	struct drm_dp_mst_topology_state *mst_state = drm_atomic_get_mst_topology_state(state, mgr);
 	int count = 0;
+	int i, k;
 	bool debugfs_overwrite = false;
 
 	memset(params, 0, sizeof(params));
 
+	if (IS_ERR(mst_state))
+		return false;
+
+	mst_state->pbn_div = dm_mst_get_pbn_divider(dc_link);
+#if defined(CONFIG_DRM_AMD_DC_DCN)
+	drm_dp_mst_update_slots(mst_state, dc_link_dp_mst_decide_link_encoding_format(dc_link));
+#endif
+
 	/* Set up params */
 	for (i = 0; i < dc_state->stream_count; i++) {
 		struct dc_dsc_policy dsc_policy = {0};
@@ -852,11 +848,8 @@ static bool compute_mst_dsc_configs_for_link(struct drm_atomic_state *state,
 		vars[i + k].pbn = kbps_to_peak_pbn(params[i].bw_range.stream_kbps);
 		vars[i + k].dsc_enabled = false;
 		vars[i + k].bpp_x16 = 0;
-		if (drm_dp_atomic_find_time_slots(state,
-						  params[i].port->mgr,
-						  params[i].port,
-						  vars[i + k].pbn,
-						  dm_mst_get_pbn_divider(dc_link)) < 0)
+		if (drm_dp_atomic_find_time_slots(state, params[i].port->mgr, params[i].port,
+						  vars[i + k].pbn) < 0)
 			return false;
 	}
 	if (!drm_dp_mst_atomic_check(state) && !debugfs_overwrite) {
@@ -870,21 +863,15 @@ static bool compute_mst_dsc_configs_for_link(struct drm_atomic_state *state,
 			vars[i + k].pbn = kbps_to_peak_pbn(params[i].bw_range.min_kbps);
 			vars[i + k].dsc_enabled = true;
 			vars[i + k].bpp_x16 = params[i].bw_range.min_target_bpp_x16;
-			if (drm_dp_atomic_find_time_slots(state,
-							  params[i].port->mgr,
-							  params[i].port,
-							  vars[i + k].pbn,
-							  dm_mst_get_pbn_divider(dc_link)) < 0)
+			if (drm_dp_atomic_find_time_slots(state, params[i].port->mgr,
+							  params[i].port, vars[i + k].pbn) < 0)
 				return false;
 		} else {
 			vars[i + k].pbn = kbps_to_peak_pbn(params[i].bw_range.stream_kbps);
 			vars[i + k].dsc_enabled = false;
 			vars[i + k].bpp_x16 = 0;
-			if (drm_dp_atomic_find_time_slots(state,
-							  params[i].port->mgr,
-							  params[i].port,
-							  vars[i + k].pbn,
-							  dm_mst_get_pbn_divider(dc_link)) < 0)
+			if (drm_dp_atomic_find_time_slots(state, params[i].port->mgr,
+							  params[i].port, vars[i + k].pbn) < 0)
 				return false;
 		}
 	}
@@ -892,7 +879,7 @@ static bool compute_mst_dsc_configs_for_link(struct drm_atomic_state *state,
 		return false;
 
 	/* Optimize degree of compression */
-	increase_dsc_bpp(state, dc_link, params, vars, count, k);
+	increase_dsc_bpp(state, mst_state, dc_link, params, vars, count, k);
 
 	try_disable_dsc(state, dc_link, params, vars, count, k);
 
@@ -1036,9 +1023,9 @@ bool compute_mst_dsc_configs_for_state(struct drm_atomic_state *state,
 			continue;
 
 		mutex_lock(&aconnector->mst_mgr.lock);
-		if (!compute_mst_dsc_configs_for_link(state, dc_state, stream->link,
-			vars, &link_vars_start_index)) {
-			mutex_unlock(&aconnector->mst_mgr.lock);
+		if (!compute_mst_dsc_configs_for_link(state, dc_state, stream->link, vars,
+						      &aconnector->mst_mgr,
+						      &link_vars_start_index)) {
 			return false;
 		}
 		mutex_unlock(&aconnector->mst_mgr.lock);
@@ -1095,10 +1082,8 @@ static bool
 			continue;
 
 		mutex_lock(&aconnector->mst_mgr.lock);
-		if (!compute_mst_dsc_configs_for_link(state,
-						      dc_state,
-						      stream->link,
-						      vars,
+		if (!compute_mst_dsc_configs_for_link(state, dc_state, stream->link, vars,
+						      &aconnector->mst_mgr,
 						      &link_vars_start_index)) {
 			mutex_unlock(&aconnector->mst_mgr.lock);
 			return false;
diff --git a/drivers/gpu/drm/amd/display/include/link_service_types.h b/drivers/gpu/drm/amd/display/include/link_service_types.h
index 91bffc5bf52c..143baab54b41 100644
--- a/drivers/gpu/drm/amd/display/include/link_service_types.h
+++ b/drivers/gpu/drm/amd/display/include/link_service_types.h
@@ -250,12 +250,19 @@ union dpcd_training_lane_set {
  * _ONLY_ be filled out from DM and then passed to DC, do NOT use these for _any_ kind of atomic
  * state calculations in DM, or you will break something.
  */
+
+struct drm_dp_mst_port;
+
 /* DP MST stream allocation (payload bandwidth number) */
 struct dc_dp_mst_stream_allocation {
 	uint8_t vcp_id;
 	/* number of slots required for the DP stream in
 	 * transport packet */
 	uint8_t slot_count;
+	/* The MST port this is on, this is used to associate DC MST payloads with their
+	 * respective DRM payloads allocations, and can be ignored on non-Linux.
+	 */
+	struct drm_dp_mst_port *port;
 };
 
 /* DP MST stream allocation table */
diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 10d26a7e028c..d8e32269585b 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -67,8 +67,7 @@ static bool dump_dp_payload_table(struct drm_dp_mst_topology_mgr *mgr,
 static void drm_dp_mst_topology_put_port(struct drm_dp_mst_port *port);
 
 static int drm_dp_dpcd_write_payload(struct drm_dp_mst_topology_mgr *mgr,
-				     int id,
-				     struct drm_dp_payload *payload);
+				     int id, u8 start_slot, u8 num_slots);
 
 static int drm_dp_send_dpcd_read(struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_dp_mst_port *port,
@@ -1234,57 +1233,6 @@ build_query_stream_enc_status(struct drm_dp_sideband_msg_tx *msg, u8 stream_id,
 	return 0;
 }
 
-static int drm_dp_mst_assign_payload_id(struct drm_dp_mst_topology_mgr *mgr,
-					struct drm_dp_vcpi *vcpi)
-{
-	int ret, vcpi_ret;
-
-	mutex_lock(&mgr->payload_lock);
-	ret = find_first_zero_bit(&mgr->payload_mask, mgr->max_payloads + 1);
-	if (ret > mgr->max_payloads) {
-		ret = -EINVAL;
-		drm_dbg_kms(mgr->dev, "out of payload ids %d\n", ret);
-		goto out_unlock;
-	}
-
-	vcpi_ret = find_first_zero_bit(&mgr->vcpi_mask, mgr->max_payloads + 1);
-	if (vcpi_ret > mgr->max_payloads) {
-		ret = -EINVAL;
-		drm_dbg_kms(mgr->dev, "out of vcpi ids %d\n", ret);
-		goto out_unlock;
-	}
-
-	set_bit(ret, &mgr->payload_mask);
-	set_bit(vcpi_ret, &mgr->vcpi_mask);
-	vcpi->vcpi = vcpi_ret + 1;
-	mgr->proposed_vcpis[ret - 1] = vcpi;
-out_unlock:
-	mutex_unlock(&mgr->payload_lock);
-	return ret;
-}
-
-static void drm_dp_mst_put_payload_id(struct drm_dp_mst_topology_mgr *mgr,
-				      int vcpi)
-{
-	int i;
-
-	if (vcpi == 0)
-		return;
-
-	mutex_lock(&mgr->payload_lock);
-	drm_dbg_kms(mgr->dev, "putting payload %d\n", vcpi);
-	clear_bit(vcpi - 1, &mgr->vcpi_mask);
-
-	for (i = 0; i < mgr->max_payloads; i++) {
-		if (mgr->proposed_vcpis[i] &&
-		    mgr->proposed_vcpis[i]->vcpi == vcpi) {
-			mgr->proposed_vcpis[i] = NULL;
-			clear_bit(i + 1, &mgr->payload_mask);
-		}
-	}
-	mutex_unlock(&mgr->payload_lock);
-}
-
 static bool check_txmsg_state(struct drm_dp_mst_topology_mgr *mgr,
 			      struct drm_dp_sideband_msg_tx *txmsg)
 {
@@ -1737,7 +1685,7 @@ drm_dp_mst_dump_port_topology_history(struct drm_dp_mst_port *port) {}
 #define save_port_topology_ref(port, type)
 #endif
 
-static struct drm_dp_mst_atomic_payload *
+struct drm_dp_mst_atomic_payload *
 drm_atomic_get_mst_payload_state(struct drm_dp_mst_topology_state *state,
 				 struct drm_dp_mst_port *port)
 {
@@ -1749,6 +1697,7 @@ drm_atomic_get_mst_payload_state(struct drm_dp_mst_topology_state *state,
 
 	return NULL;
 }
+EXPORT_SYMBOL(drm_atomic_get_mst_payload_state);
 
 static void drm_dp_destroy_mst_branch_device(struct kref *kref)
 {
@@ -3272,6 +3221,8 @@ int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
 		struct drm_dp_mst_port *port,
 		struct drm_dp_query_stream_enc_status_ack_reply *status)
 {
+	struct drm_dp_mst_topology_state *state;
+	struct drm_dp_mst_atomic_payload *payload;
 	struct drm_dp_sideband_msg_tx *txmsg;
 	u8 nonce[7];
 	int ret;
@@ -3288,6 +3239,10 @@ int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
 
 	get_random_bytes(nonce, sizeof(nonce));
 
+	drm_modeset_lock(&mgr->base.lock, NULL);
+	state = to_drm_dp_mst_topology_state(mgr->base.state);
+	payload = drm_atomic_get_mst_payload_state(state, port);
+
 	/*
 	 * "Source device targets the QUERY_STREAM_ENCRYPTION_STATUS message
 	 *  transaction at the MST Branch device directly connected to the
@@ -3295,7 +3250,7 @@ int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
 	 */
 	txmsg->dst = mgr->mst_primary;
 
-	build_query_stream_enc_status(txmsg, port->vcpi.vcpi, nonce);
+	build_query_stream_enc_status(txmsg, payload->vcpi, nonce);
 
 	drm_dp_queue_down_tx(mgr, txmsg);
 
@@ -3312,6 +3267,7 @@ int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
 	memcpy(status, &txmsg->reply.u.enc_status, sizeof(*status));
 
 out:
+	drm_modeset_unlock(&mgr->base.lock);
 	drm_dp_mst_topology_put_port(port);
 out_get_port:
 	kfree(txmsg);
@@ -3320,219 +3276,161 @@ int drm_dp_send_query_stream_enc_status(struct drm_dp_mst_topology_mgr *mgr,
 EXPORT_SYMBOL(drm_dp_send_query_stream_enc_status);
 
 static int drm_dp_create_payload_step1(struct drm_dp_mst_topology_mgr *mgr,
-				       int id,
-				       struct drm_dp_payload *payload)
+				       struct drm_dp_mst_atomic_payload *payload)
 {
-	int ret;
-
-	ret = drm_dp_dpcd_write_payload(mgr, id, payload);
-	if (ret < 0) {
-		payload->payload_state = 0;
-		return ret;
-	}
-	payload->payload_state = DP_PAYLOAD_LOCAL;
-	return 0;
+	return drm_dp_dpcd_write_payload(mgr, payload->vcpi, payload->vc_start_slot,
+					 payload->time_slots);
 }
 
 static int drm_dp_create_payload_step2(struct drm_dp_mst_topology_mgr *mgr,
-				       struct drm_dp_mst_port *port,
-				       int id,
-				       struct drm_dp_payload *payload)
+				       struct drm_dp_mst_atomic_payload *payload)
 {
 	int ret;
+	struct drm_dp_mst_port *port = drm_dp_mst_topology_get_port_validated(mgr, payload->port);
 
-	ret = drm_dp_payload_send_msg(mgr, port, id, port->vcpi.pbn);
-	if (ret < 0)
-		return ret;
-	payload->payload_state = DP_PAYLOAD_REMOTE;
+	if (!port)
+		return -EIO;
+
+	ret = drm_dp_payload_send_msg(mgr, port, payload->vcpi, payload->pbn);
+	drm_dp_mst_topology_put_port(port);
 	return ret;
 }
 
 static int drm_dp_destroy_payload_step1(struct drm_dp_mst_topology_mgr *mgr,
-					struct drm_dp_mst_port *port,
-					int id,
-					struct drm_dp_payload *payload)
+					struct drm_dp_mst_topology_state *mst_state,
+					struct drm_dp_mst_atomic_payload *payload)
 {
+
 	drm_dbg_kms(mgr->dev, "\n");
-	/* it's okay for these to fail */
-	if (port) {
-		drm_dp_payload_send_msg(mgr, port, id, 0);
-	}
 
-	drm_dp_dpcd_write_payload(mgr, id, payload);
-	payload->payload_state = DP_PAYLOAD_DELETE_LOCAL;
-	return 0;
-}
+	/* it's okay for these to fail */
+	drm_dp_payload_send_msg(mgr, payload->port, payload->vcpi, 0);
+	drm_dp_dpcd_write_payload(mgr, payload->vcpi, payload->vc_start_slot, 0);
 
-static int drm_dp_destroy_payload_step2(struct drm_dp_mst_topology_mgr *mgr,
-					int id,
-					struct drm_dp_payload *payload)
-{
-	payload->payload_state = 0;
 	return 0;
 }
 
 /**
- * drm_dp_update_payload_part1() - Execute payload update part 1
- * @mgr: manager to use.
- * @start_slot: this is the cur slot
+ * drm_dp_add_payload_part1() - Execute payload update part 1
+ * @mgr: Manager to use.
+ * @mst_state: The MST atomic state
+ * @payload: The payload to write
  *
- * NOTE: start_slot is a temporary workaround for non-atomic drivers,
- * this will be removed when non-atomic mst helpers are moved out of the helper
+ * Determines the starting time slot for the given payload, and programs the VCPI for this payload
+ * into hardware.
  *
- * This iterates over all proposed virtual channels, and tries to
- * allocate space in the link for them. For 0->slots transitions,
- * this step just writes the VCPI to the MST device. For slots->0
- * transitions, this writes the updated VCPIs and removes the
- * remote VC payloads.
+ * After calling this, the driver should generate ACT and payload packets. Note that the driver may
+ * generate ACT once per payload change, or only once after all new payloads in a given atomic state
+ * have been added.
  *
- * after calling this the driver should generate ACT and payload
- * packets.
+ * Returns: 0 on success, error code on failure. In the event that this fails,
+ * @payload.vc_start_slot will also be set to -1.
  */
-int drm_dp_update_payload_part1(struct drm_dp_mst_topology_mgr *mgr, int start_slot)
+int drm_dp_add_payload_part1(struct drm_dp_mst_topology_mgr *mgr,
+			     struct drm_dp_mst_topology_state *mst_state,
+			     struct drm_dp_mst_atomic_payload *payload)
 {
-	struct drm_dp_payload req_payload;
 	struct drm_dp_mst_port *port;
-	int i, j;
-	int cur_slots = start_slot;
-
-	mutex_lock(&mgr->payload_lock);
-	for (i = 0; i < mgr->max_payloads; i++) {
-		struct drm_dp_vcpi *vcpi = mgr->proposed_vcpis[i];
-		struct drm_dp_payload *payload = &mgr->payloads[i];
-		bool put_port = false;
-
-		/* solve the current payloads - compare to the hw ones
-		   - update the hw view */
-		req_payload.start_slot = cur_slots;
-		if (vcpi) {
-			port = container_of(vcpi, struct drm_dp_mst_port,
-					    vcpi);
-
-			/* Validated ports don't matter if we're releasing
-			 * VCPI
-			 */
-			if (vcpi->num_slots) {
-				port = drm_dp_mst_topology_get_port_validated(
-				    mgr, port);
-				if (!port) {
-					if (vcpi->num_slots == payload->num_slots) {
-						cur_slots += vcpi->num_slots;
-						payload->start_slot = req_payload.start_slot;
-						continue;
-					} else {
-						drm_dbg_kms(mgr->dev,
-							    "Fail:set payload to invalid sink");
-						mutex_unlock(&mgr->payload_lock);
-						return -EINVAL;
-					}
-				}
-				put_port = true;
-			}
+	int ret;
 
-			req_payload.num_slots = vcpi->num_slots;
-			req_payload.vcpi = vcpi->vcpi;
-		} else {
-			port = NULL;
-			req_payload.num_slots = 0;
-		}
+	port = drm_dp_mst_topology_get_port_validated(mgr, payload->port);
+	if (!port)
+		return 0;
 
-		payload->start_slot = req_payload.start_slot;
-		/* work out what is required to happen with this payload */
-		if (payload->num_slots != req_payload.num_slots) {
-
-			/* need to push an update for this payload */
-			if (req_payload.num_slots) {
-				drm_dp_create_payload_step1(mgr, vcpi->vcpi,
-							    &req_payload);
-				payload->num_slots = req_payload.num_slots;
-				payload->vcpi = req_payload.vcpi;
-
-			} else if (payload->num_slots) {
-				payload->num_slots = 0;
-				drm_dp_destroy_payload_step1(mgr, port,
-							     payload->vcpi,
-							     payload);
-				req_payload.payload_state =
-					payload->payload_state;
-				payload->start_slot = 0;
-			}
-			payload->payload_state = req_payload.payload_state;
-		}
-		cur_slots += req_payload.num_slots;
+	if (mgr->payload_count == 0)
+		mgr->next_start_slot = mst_state->start_slot;
 
-		if (put_port)
-			drm_dp_mst_topology_put_port(port);
+	payload->vc_start_slot = mgr->next_start_slot;
+	ret = drm_dp_create_payload_step1(mgr, payload);
+	drm_dp_mst_topology_put_port(port);
+	if (ret < 0) {
+		drm_warn(mgr->dev, "Failed to create MST payload for port %p: %d\n",
+			 payload->port, ret);
+		payload->vc_start_slot = -1;
+		return ret;
 	}
 
-	for (i = 0; i < mgr->max_payloads; /* do nothing */) {
-		if (mgr->payloads[i].payload_state != DP_PAYLOAD_DELETE_LOCAL) {
-			i++;
-			continue;
-		}
+	mgr->payload_count++;
+	mgr->next_start_slot += payload->time_slots;
 
-		drm_dbg_kms(mgr->dev, "removing payload %d\n", i);
-		for (j = i; j < mgr->max_payloads - 1; j++) {
-			mgr->payloads[j] = mgr->payloads[j + 1];
-			mgr->proposed_vcpis[j] = mgr->proposed_vcpis[j + 1];
+	return 0;
+}
+EXPORT_SYMBOL(drm_dp_add_payload_part1);
 
-			if (mgr->proposed_vcpis[j] &&
-			    mgr->proposed_vcpis[j]->num_slots) {
-				set_bit(j + 1, &mgr->payload_mask);
-			} else {
-				clear_bit(j + 1, &mgr->payload_mask);
-			}
-		}
+/**
+ * drm_dp_remove_payload() - Remove an MST payload
+ * @mgr: Manager to use.
+ * @mst_state: The MST atomic state
+ * @payload: The payload to write
+ *
+ * Removes a payload from an MST topology if it was successfully assigned a start slot. Also updates
+ * the starting time slots of all other payloads which would have been shifted towards the start of
+ * the VC table as a result.
+ *
+ * After calling this, the driver should generate ACT and payload packets. Note that the driver may
+ * generate ACT once per payload change, or only once after all payloads for a given atomic state
+ * have been removed.
+ */
+void drm_dp_remove_payload(struct drm_dp_mst_topology_mgr *mgr,
+			   struct drm_dp_mst_topology_state *mst_state,
+			   struct drm_dp_mst_atomic_payload *payload)
+{
+	struct drm_dp_mst_atomic_payload *pos;
 
-		memset(&mgr->payloads[mgr->max_payloads - 1], 0,
-		       sizeof(struct drm_dp_payload));
-		mgr->proposed_vcpis[mgr->max_payloads - 1] = NULL;
-		clear_bit(mgr->max_payloads, &mgr->payload_mask);
+	/* We failed to make the payload, so nothing to do */
+	if (payload->vc_start_slot == -1)
+		return;
+
+	drm_dp_destroy_payload_step1(mgr, mst_state, payload);
+
+	list_for_each_entry(pos, &mst_state->payloads, next) {
+		if (pos != payload && pos->vc_start_slot > payload->vc_start_slot)
+			pos->vc_start_slot -= payload->time_slots;
 	}
-	mutex_unlock(&mgr->payload_lock);
+	payload->vc_start_slot = -1;
 
-	return 0;
+	mgr->payload_count--;
+	mgr->next_start_slot -= payload->time_slots;
 }
-EXPORT_SYMBOL(drm_dp_update_payload_part1);
+EXPORT_SYMBOL(drm_dp_remove_payload);
 
 /**
- * drm_dp_update_payload_part2() - Execute payload update part 2
- * @mgr: manager to use.
+ * drm_dp_add_payload_part2() - Execute payload update part 2
+ * @mgr: Manager to use.
+ * @state: The global atomic state
+ * @payload: The payload to update
+ *
+ * If @payload was successfully assigned a starting time slot by drm_dp_add_payload_part1(), this
+ * function will send the sideband messages to finish allocating this payload.
  *
- * This iterates over all proposed virtual channels, and tries to
- * allocate space in the link for them. For 0->slots transitions,
- * this step writes the remote VC payload commands. For slots->0
- * this just resets some internal state.
+ * Returns: 0 on success, negative error code on failure.
  */
-int drm_dp_update_payload_part2(struct drm_dp_mst_topology_mgr *mgr)
+int drm_dp_add_payload_part2(struct drm_dp_mst_topology_mgr *mgr,
+			     struct drm_atomic_state *state,
+			     struct drm_dp_mst_atomic_payload *payload)
 {
-	struct drm_dp_mst_port *port;
-	int i;
 	int ret = 0;
 
-	mutex_lock(&mgr->payload_lock);
-	for (i = 0; i < mgr->max_payloads; i++) {
-
-		if (!mgr->proposed_vcpis[i])
-			continue;
-
-		port = container_of(mgr->proposed_vcpis[i], struct drm_dp_mst_port, vcpi);
+	/* Skip failed payloads */
+	if (payload->vc_start_slot == -1) {
+		drm_dbg_kms(state->dev, "Part 1 of payload creation for %s failed, skipping part 2\n",
+			    payload->port->connector->name);
+		return -EIO;
+	}
 
-		drm_dbg_kms(mgr->dev, "payload %d %d\n", i, mgr->payloads[i].payload_state);
-		if (mgr->payloads[i].payload_state == DP_PAYLOAD_LOCAL) {
-			ret = drm_dp_create_payload_step2(mgr, port, mgr->proposed_vcpis[i]->vcpi, &mgr->payloads[i]);
-		} else if (mgr->payloads[i].payload_state == DP_PAYLOAD_DELETE_LOCAL) {
-			ret = drm_dp_destroy_payload_step2(mgr, mgr->proposed_vcpis[i]->vcpi, &mgr->payloads[i]);
-		}
-		if (ret) {
-			mutex_unlock(&mgr->payload_lock);
-			return ret;
-		}
+	ret = drm_dp_create_payload_step2(mgr, payload);
+	if (ret < 0) {
+		if (!payload->delete)
+			drm_err(mgr->dev, "Step 2 of creating MST payload for %p failed: %d\n",
+				payload->port, ret);
+		else
+			drm_dbg_kms(mgr->dev, "Step 2 of removing MST payload for %p failed: %d\n",
+				    payload->port, ret);
 	}
-	mutex_unlock(&mgr->payload_lock);
-	return 0;
+
+	return ret;
 }
-EXPORT_SYMBOL(drm_dp_update_payload_part2);
+EXPORT_SYMBOL(drm_dp_add_payload_part2);
 
 static int drm_dp_send_dpcd_read(struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_dp_mst_port *port,
@@ -3712,7 +3610,6 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
 	int ret = 0;
 	struct drm_dp_mst_branch *mstb = NULL;
 
-	mutex_lock(&mgr->payload_lock);
 	mutex_lock(&mgr->lock);
 	if (mst_state == mgr->mst_state)
 		goto out_unlock;
@@ -3720,10 +3617,6 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
 	mgr->mst_state = mst_state;
 	/* set the device into MST mode */
 	if (mst_state) {
-		struct drm_dp_payload reset_pay;
-		int lane_count;
-		int link_rate;
-
 		WARN_ON(mgr->mst_primary);
 
 		/* get dpcd info */
@@ -3734,16 +3627,6 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
 			goto out_unlock;
 		}
 
-		lane_count = min_t(int, mgr->dpcd[2] & DP_MAX_LANE_COUNT_MASK, mgr->max_lane_count);
-		link_rate = min_t(int, drm_dp_bw_code_to_link_rate(mgr->dpcd[1]), mgr->max_link_rate);
-		mgr->pbn_div = drm_dp_get_vc_payload_bw(mgr,
-							link_rate,
-							lane_count);
-		if (mgr->pbn_div == 0) {
-			ret = -EINVAL;
-			goto out_unlock;
-		}
-
 		/* add initial branch device at LCT 1 */
 		mstb = drm_dp_add_mst_branch_device(1, NULL);
 		if (mstb == NULL) {
@@ -3763,9 +3646,8 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
 		if (ret < 0)
 			goto out_unlock;
 
-		reset_pay.start_slot = 0;
-		reset_pay.num_slots = 0x3f;
-		drm_dp_dpcd_write_payload(mgr, 0, &reset_pay);
+		/* Write reset payload */
+		drm_dp_dpcd_write_payload(mgr, 0, 0, 0x3f);
 
 		queue_work(system_long_wq, &mgr->work);
 
@@ -3777,19 +3659,11 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
 		/* this can fail if the device is gone */
 		drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL, 0);
 		ret = 0;
-		memset(mgr->payloads, 0,
-		       mgr->max_payloads * sizeof(mgr->payloads[0]));
-		memset(mgr->proposed_vcpis, 0,
-		       mgr->max_payloads * sizeof(mgr->proposed_vcpis[0]));
-		mgr->payload_mask = 0;
-		set_bit(0, &mgr->payload_mask);
-		mgr->vcpi_mask = 0;
 		mgr->payload_id_table_cleared = false;
 	}
 
 out_unlock:
 	mutex_unlock(&mgr->lock);
-	mutex_unlock(&mgr->payload_lock);
 	if (mstb)
 		drm_dp_mst_topology_put_mstb(mstb);
 	return ret;
@@ -4310,62 +4184,18 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_
 }
 EXPORT_SYMBOL(drm_dp_mst_get_edid);
 
-/**
- * drm_dp_find_vcpi_slots() - Find time slots for this PBN value
- * @mgr: manager to use
- * @pbn: payload bandwidth to convert into slots.
- *
- * Calculate the number of time slots that will be required for the given PBN
- * value. This function is deprecated, and should not be used in atomic
- * drivers.
- *
- * RETURNS:
- * The total slots required for this port, or error.
- */
-int drm_dp_find_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr,
-			   int pbn)
-{
-	int num_slots;
-
-	num_slots = DIV_ROUND_UP(pbn, mgr->pbn_div);
-
-	/* max. time slots - one slot for MTP header */
-	if (num_slots > 63)
-		return -ENOSPC;
-	return num_slots;
-}
-EXPORT_SYMBOL(drm_dp_find_vcpi_slots);
-
-static int drm_dp_init_vcpi(struct drm_dp_mst_topology_mgr *mgr,
-			    struct drm_dp_vcpi *vcpi, int pbn, int slots)
-{
-	int ret;
-
-	vcpi->pbn = pbn;
-	vcpi->aligned_pbn = slots * mgr->pbn_div;
-	vcpi->num_slots = slots;
-
-	ret = drm_dp_mst_assign_payload_id(mgr, vcpi);
-	if (ret < 0)
-		return ret;
-	return 0;
-}
-
 /**
  * drm_dp_atomic_find_time_slots() - Find and add time slots to the state
  * @state: global atomic state
  * @mgr: MST topology manager for the port
  * @port: port to find time slots for
  * @pbn: bandwidth required for the mode in PBN
- * @pbn_div: divider for DSC mode that takes FEC into account
  *
- * Allocates time slots to @port, replacing any previous timeslot allocations it
- * may have had. Any atomic drivers which support MST must call this function
- * in their &drm_encoder_helper_funcs.atomic_check() callback to change the
- * current timeslot allocation for the new state, but only when
- * &drm_crtc_state.mode_changed or &drm_crtc_state.connectors_changed is set
- * to ensure compatibility with userspace applications that still use the
- * legacy modesetting UAPI.
+ * Allocates time slots to @port, replacing any previous time slot allocations it may
+ * have had. Any atomic drivers which support MST must call this function in
+ * their &drm_encoder_helper_funcs.atomic_check() callback unconditionally to
+ * change the current time slot allocation for the new state, and ensure the MST
+ * atomic state is added whenever the state of payloads in the topology changes.
  *
  * Allocations set by this function are not checked against the bandwidth
  * restraints of @mgr until the driver calls drm_dp_mst_atomic_check().
@@ -4384,8 +4214,7 @@ static int drm_dp_init_vcpi(struct drm_dp_mst_topology_mgr *mgr,
  */
 int drm_dp_atomic_find_time_slots(struct drm_atomic_state *state,
 				  struct drm_dp_mst_topology_mgr *mgr,
-				  struct drm_dp_mst_port *port, int pbn,
-				  int pbn_div)
+				  struct drm_dp_mst_port *port, int pbn)
 {
 	struct drm_dp_mst_topology_state *topology_state;
 	struct drm_dp_mst_atomic_payload *payload = NULL;
@@ -4418,10 +4247,7 @@ int drm_dp_atomic_find_time_slots(struct drm_atomic_state *state,
 		}
 	}
 
-	if (pbn_div <= 0)
-		pbn_div = mgr->pbn_div;
-
-	req_slots = DIV_ROUND_UP(pbn, pbn_div);
+	req_slots = DIV_ROUND_UP(pbn, topology_state->pbn_div);
 
 	drm_dbg_atomic(mgr->dev, "[CONNECTOR:%d:%s] [MST PORT:%p] TU %d -> %d\n",
 		       port->connector->base.id, port->connector->name,
@@ -4430,7 +4256,7 @@ int drm_dp_atomic_find_time_slots(struct drm_atomic_state *state,
 		       port->connector->base.id, port->connector->name,
 		       port, prev_bw, pbn);
 
-	/* Add the new allocation to the state */
+	/* Add the new allocation to the state, note the VCPI isn't assigned until the end */
 	if (!payload) {
 		payload = kzalloc(sizeof(*payload), GFP_KERNEL);
 		if (!payload)
@@ -4438,6 +4264,7 @@ int drm_dp_atomic_find_time_slots(struct drm_atomic_state *state,
 
 		drm_dp_mst_get_port_malloc(port);
 		payload->port = port;
+		payload->vc_start_slot = -1;
 		list_add(&payload->next, &topology_state->payloads);
 	}
 	payload->time_slots = req_slots;
@@ -4454,10 +4281,12 @@ EXPORT_SYMBOL(drm_dp_atomic_find_time_slots);
  * @port: The port to release the time slots from
  *
  * Releases any time slots that have been allocated to a port in the atomic
- * state. Any atomic drivers which support MST must call this function in
- * their &drm_connector_helper_funcs.atomic_check() callback when the
- * connector will no longer have VCPI allocated (e.g. because its CRTC was
- * removed) when it had VCPI allocated in the previous atomic state.
+ * state. Any atomic drivers which support MST must call this function
+ * unconditionally in their &drm_connector_helper_funcs.atomic_check() callback.
+ * This helper will check whether time slots would be released by the new state and
+ * respond accordingly, along with ensuring the MST state is always added to the
+ * atomic state whenever a new state would modify the state of payloads on the
+ * topology.
  *
  * It is OK to call this even if @port has been removed from the system.
  * Additionally, it is OK to call this function multiple times on the same
@@ -4519,6 +4348,7 @@ int drm_dp_atomic_release_time_slots(struct drm_atomic_state *state,
 		drm_dp_mst_put_port_malloc(port);
 		payload->pbn = 0;
 		payload->delete = true;
+		topology_state->payload_mask &= ~BIT(payload->vcpi - 1);
 	}
 
 	return 0;
@@ -4569,7 +4399,8 @@ int drm_dp_mst_atomic_setup_commit(struct drm_atomic_state *state)
 EXPORT_SYMBOL(drm_dp_mst_atomic_setup_commit);
 
 /**
- * drm_dp_mst_atomic_wait_for_dependencies() - Wait for all pending commits on MST topologies
+ * drm_dp_mst_atomic_wait_for_dependencies() - Wait for all pending commits on MST topologies,
+ * prepare new MST state for commit
  * @state: global atomic state
  *
  * Goes through any MST topologies in this atomic state, and waits for any pending commits which
@@ -4587,17 +4418,30 @@ EXPORT_SYMBOL(drm_dp_mst_atomic_setup_commit);
  */
 void drm_dp_mst_atomic_wait_for_dependencies(struct drm_atomic_state *state)
 {
-	struct drm_dp_mst_topology_state *old_mst_state;
+	struct drm_dp_mst_topology_state *old_mst_state, *new_mst_state;
 	struct drm_dp_mst_topology_mgr *mgr;
+	struct drm_dp_mst_atomic_payload *old_payload, *new_payload;
 	int i, j, ret;
 
-	for_each_old_mst_mgr_in_state(state, mgr, old_mst_state, i) {
+	for_each_oldnew_mst_mgr_in_state(state, mgr, old_mst_state, new_mst_state, i) {
 		for (j = 0; j < old_mst_state->num_commit_deps; j++) {
 			ret = drm_crtc_commit_wait(old_mst_state->commit_deps[j]);
 			if (ret < 0)
 				drm_err(state->dev, "Failed to wait for %s: %d\n",
 					old_mst_state->commit_deps[j]->crtc->name, ret);
 		}
+
+		/* Now that previous state is committed, it's safe to copy over the start slot
+		 * assignments
+		 */
+		list_for_each_entry(old_payload, &old_mst_state->payloads, next) {
+			if (old_payload->delete)
+				continue;
+
+			new_payload = drm_atomic_get_mst_payload_state(new_mst_state,
+								       old_payload->port);
+			new_payload->vc_start_slot = old_payload->vc_start_slot;
+		}
 	}
 }
 EXPORT_SYMBOL(drm_dp_mst_atomic_wait_for_dependencies);
@@ -4682,110 +4526,8 @@ void drm_dp_mst_update_slots(struct drm_dp_mst_topology_state *mst_state, uint8_
 }
 EXPORT_SYMBOL(drm_dp_mst_update_slots);
 
-/**
- * drm_dp_mst_allocate_vcpi() - Allocate a virtual channel
- * @mgr: manager for this port
- * @port: port to allocate a virtual channel for.
- * @pbn: payload bandwidth number to request
- * @slots: returned number of slots for this PBN.
- */
-bool drm_dp_mst_allocate_vcpi(struct drm_dp_mst_topology_mgr *mgr,
-			      struct drm_dp_mst_port *port, int pbn, int slots)
-{
-	int ret;
-
-	if (slots < 0)
-		return false;
-
-	port = drm_dp_mst_topology_get_port_validated(mgr, port);
-	if (!port)
-		return false;
-
-	if (port->vcpi.vcpi > 0) {
-		drm_dbg_kms(mgr->dev,
-			    "payload: vcpi %d already allocated for pbn %d - requested pbn %d\n",
-			    port->vcpi.vcpi, port->vcpi.pbn, pbn);
-		if (pbn == port->vcpi.pbn) {
-			drm_dp_mst_topology_put_port(port);
-			return true;
-		}
-	}
-
-	ret = drm_dp_init_vcpi(mgr, &port->vcpi, pbn, slots);
-	if (ret) {
-		drm_dbg_kms(mgr->dev, "failed to init time slots=%d ret=%d\n",
-			    DIV_ROUND_UP(pbn, mgr->pbn_div), ret);
-		drm_dp_mst_topology_put_port(port);
-		goto out;
-	}
-	drm_dbg_kms(mgr->dev, "initing vcpi for pbn=%d slots=%d\n", pbn, port->vcpi.num_slots);
-
-	/* Keep port allocated until its payload has been removed */
-	drm_dp_mst_get_port_malloc(port);
-	drm_dp_mst_topology_put_port(port);
-	return true;
-out:
-	return false;
-}
-EXPORT_SYMBOL(drm_dp_mst_allocate_vcpi);
-
-int drm_dp_mst_get_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
-{
-	int slots = 0;
-
-	port = drm_dp_mst_topology_get_port_validated(mgr, port);
-	if (!port)
-		return slots;
-
-	slots = port->vcpi.num_slots;
-	drm_dp_mst_topology_put_port(port);
-	return slots;
-}
-EXPORT_SYMBOL(drm_dp_mst_get_vcpi_slots);
-
-/**
- * drm_dp_mst_reset_vcpi_slots() - Reset number of slots to 0 for VCPI
- * @mgr: manager for this port
- * @port: unverified pointer to a port.
- *
- * This just resets the number of slots for the ports VCPI for later programming.
- */
-void drm_dp_mst_reset_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
-{
-	/*
-	 * A port with VCPI will remain allocated until its VCPI is
-	 * released, no verified ref needed
-	 */
-
-	port->vcpi.num_slots = 0;
-}
-EXPORT_SYMBOL(drm_dp_mst_reset_vcpi_slots);
-
-/**
- * drm_dp_mst_deallocate_vcpi() - deallocate a VCPI
- * @mgr: manager for this port
- * @port: port to deallocate vcpi for
- *
- * This can be called unconditionally, regardless of whether
- * drm_dp_mst_allocate_vcpi() succeeded or not.
- */
-void drm_dp_mst_deallocate_vcpi(struct drm_dp_mst_topology_mgr *mgr,
-				struct drm_dp_mst_port *port)
-{
-	if (!port->vcpi.vcpi)
-		return;
-
-	drm_dp_mst_put_payload_id(mgr, port->vcpi.vcpi);
-	port->vcpi.num_slots = 0;
-	port->vcpi.pbn = 0;
-	port->vcpi.aligned_pbn = 0;
-	port->vcpi.vcpi = 0;
-	drm_dp_mst_put_port_malloc(port);
-}
-EXPORT_SYMBOL(drm_dp_mst_deallocate_vcpi);
-
 static int drm_dp_dpcd_write_payload(struct drm_dp_mst_topology_mgr *mgr,
-				     int id, struct drm_dp_payload *payload)
+				     int id, u8 start_slot, u8 num_slots)
 {
 	u8 payload_alloc[3], status;
 	int ret;
@@ -4795,8 +4537,8 @@ static int drm_dp_dpcd_write_payload(struct drm_dp_mst_topology_mgr *mgr,
 			   DP_PAYLOAD_TABLE_UPDATED);
 
 	payload_alloc[0] = id;
-	payload_alloc[1] = payload->start_slot;
-	payload_alloc[2] = payload->num_slots;
+	payload_alloc[1] = start_slot;
+	payload_alloc[2] = num_slots;
 
 	ret = drm_dp_dpcd_write(mgr->aux, DP_PAYLOAD_ALLOCATE_SET, payload_alloc, 3);
 	if (ret != 3) {
@@ -5011,8 +4753,9 @@ static void fetch_monitor_name(struct drm_dp_mst_topology_mgr *mgr,
 void drm_dp_mst_dump_topology(struct seq_file *m,
 			      struct drm_dp_mst_topology_mgr *mgr)
 {
-	int i;
-	struct drm_dp_mst_port *port;
+	struct drm_dp_mst_topology_state *state;
+	struct drm_dp_mst_atomic_payload *payload;
+	int i, ret;
 
 	mutex_lock(&mgr->lock);
 	if (mgr->mst_primary)
@@ -5021,36 +4764,35 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
 	/* dump VCPIs */
 	mutex_unlock(&mgr->lock);
 
-	mutex_lock(&mgr->payload_lock);
-	seq_printf(m, "\n*** VCPI Info ***\n");
-	seq_printf(m, "payload_mask: %lx, vcpi_mask: %lx, max_payloads: %d\n", mgr->payload_mask, mgr->vcpi_mask, mgr->max_payloads);
+	ret = drm_modeset_lock_single_interruptible(&mgr->base.lock);
+	if (ret < 0)
+		return;
+
+	state = to_drm_dp_mst_topology_state(mgr->base.state);
+	seq_printf(m, "\n*** Atomic state info ***\n");
+	seq_printf(m, "payload_mask: %x, max_payloads: %d, start_slot: %u, pbn_div: %d\n",
+		   state->payload_mask, mgr->max_payloads, state->start_slot, state->pbn_div);
 
-	seq_printf(m, "\n|   idx   |  port # |  vcp_id | # slots |     sink name     |\n");
+	seq_printf(m, "\n| idx | port | vcpi | slots | pbn | dsc |     sink name     |\n");
 	for (i = 0; i < mgr->max_payloads; i++) {
-		if (mgr->proposed_vcpis[i]) {
+		list_for_each_entry(payload, &state->payloads, next) {
 			char name[14];
 
-			port = container_of(mgr->proposed_vcpis[i], struct drm_dp_mst_port, vcpi);
-			fetch_monitor_name(mgr, port, name, sizeof(name));
-			seq_printf(m, "%10d%10d%10d%10d%20s\n",
+			if (payload->vcpi != i || payload->delete)
+				continue;
+
+			fetch_monitor_name(mgr, payload->port, name, sizeof(name));
+			seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
 				   i,
-				   port->port_num,
-				   port->vcpi.vcpi,
-				   port->vcpi.num_slots,
+				   payload->port->port_num,
+				   payload->vcpi,
+				   payload->vc_start_slot,
+				   payload->vc_start_slot + payload->time_slots - 1,
+				   payload->pbn,
+				   payload->dsc_enabled ? "Y" : "N",
 				   (*name != 0) ? name : "Unknown");
-		} else
-			seq_printf(m, "%6d - Unused\n", i);
-	}
-	seq_printf(m, "\n*** Payload Info ***\n");
-	seq_printf(m, "|   idx   |  state  |  start slot  | # slots |\n");
-	for (i = 0; i < mgr->max_payloads; i++) {
-		seq_printf(m, "%10d%10d%15d%10d\n",
-			   i,
-			   mgr->payloads[i].payload_state,
-			   mgr->payloads[i].start_slot,
-			   mgr->payloads[i].num_slots);
+		}
 	}
-	mutex_unlock(&mgr->payload_lock);
 
 	seq_printf(m, "\n*** DPCD Info ***\n");
 	mutex_lock(&mgr->lock);
@@ -5097,7 +4839,7 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
 
 out:
 	mutex_unlock(&mgr->lock);
-
+	drm_modeset_unlock(&mgr->base.lock);
 }
 EXPORT_SYMBOL(drm_dp_mst_dump_topology);
 
@@ -5418,9 +5160,22 @@ drm_dp_mst_atomic_check_payload_alloc_limits(struct drm_dp_mst_topology_mgr *mgr
 				       mgr, mst_state, mgr->max_payloads);
 			return -EINVAL;
 		}
+
+		/* Assign a VCPI */
+		if (!payload->vcpi) {
+			payload->vcpi = ffz(mst_state->payload_mask) + 1;
+			drm_dbg_atomic(mgr->dev, "[MST PORT:%p] assigned VCPI #%d\n",
+				       payload->port, payload->vcpi);
+			mst_state->payload_mask |= BIT(payload->vcpi - 1);
+		}
 	}
-	drm_dbg_atomic(mgr->dev, "[MST MGR:%p] mst state %p TU avail=%d used=%d\n",
-		       mgr, mst_state, avail_slots, mst_state->total_avail_slots - avail_slots);
+
+	if (!payload_count)
+		mst_state->pbn_div = 0;
+
+	drm_dbg_atomic(mgr->dev, "[MST MGR:%p] mst state %p TU pbn_div=%d avail=%d used=%d\n",
+		       mgr, mst_state, mst_state->pbn_div, avail_slots,
+		       mst_state->total_avail_slots - avail_slots);
 
 	return 0;
 }
@@ -5491,7 +5246,6 @@ EXPORT_SYMBOL(drm_dp_mst_add_affected_dsc_crtcs);
  * @state: Pointer to the new drm_atomic_state
  * @port: Pointer to the affected MST Port
  * @pbn: Newly recalculated bw required for link with DSC enabled
- * @pbn_div: Divider to calculate correct number of pbn per slot
  * @enable: Boolean flag to enable or disable DSC on the port
  *
  * This function enables DSC on the given Port
@@ -5502,8 +5256,7 @@ EXPORT_SYMBOL(drm_dp_mst_add_affected_dsc_crtcs);
  */
 int drm_dp_mst_atomic_enable_dsc(struct drm_atomic_state *state,
 				 struct drm_dp_mst_port *port,
-				 int pbn, int pbn_div,
-				 bool enable)
+				 int pbn, bool enable)
 {
 	struct drm_dp_mst_topology_state *mst_state;
 	struct drm_dp_mst_atomic_payload *payload;
@@ -5529,7 +5282,7 @@ int drm_dp_mst_atomic_enable_dsc(struct drm_atomic_state *state,
 	}
 
 	if (enable) {
-		time_slots = drm_dp_atomic_find_time_slots(state, port->mgr, port, pbn, pbn_div);
+		time_slots = drm_dp_atomic_find_time_slots(state, port->mgr, port, pbn);
 		drm_dbg_atomic(state->dev,
 			       "[MST PORT:%p] Enabling DSC flag, reallocating %d time slots on the port\n",
 			       port, time_slots);
@@ -5542,6 +5295,7 @@ int drm_dp_mst_atomic_enable_dsc(struct drm_atomic_state *state,
 	return time_slots;
 }
 EXPORT_SYMBOL(drm_dp_mst_atomic_enable_dsc);
+
 /**
  * drm_dp_mst_atomic_check - Check that the new state of an MST topology in an
  * atomic update is valid
@@ -5599,7 +5353,6 @@ EXPORT_SYMBOL(drm_dp_mst_topology_state_funcs);
 
 /**
  * drm_atomic_get_mst_topology_state: get MST topology state
- *
  * @state: global atomic state
  * @mgr: MST topology manager, also the private object in this case
  *
@@ -5619,6 +5372,31 @@ struct drm_dp_mst_topology_state *drm_atomic_get_mst_topology_state(struct drm_a
 }
 EXPORT_SYMBOL(drm_atomic_get_mst_topology_state);
 
+/**
+ * drm_atomic_get_new_mst_topology_state: get new MST topology state in atomic state, if any
+ * @state: global atomic state
+ * @mgr: MST topology manager, also the private object in this case
+ *
+ * This function wraps drm_atomic_get_priv_obj_state() passing in the MST atomic
+ * state vtable so that the private object state returned is that of a MST
+ * topology object.
+ *
+ * Returns:
+ *
+ * The MST topology state, or NULL if there's no topology state for this MST mgr
+ * in the global atomic state
+ */
+struct drm_dp_mst_topology_state *
+drm_atomic_get_new_mst_topology_state(struct drm_atomic_state *state,
+				      struct drm_dp_mst_topology_mgr *mgr)
+{
+	struct drm_private_state *priv_state =
+		drm_atomic_get_new_private_obj_state(state, &mgr->base);
+
+	return priv_state ? to_dp_mst_topology_state(priv_state) : NULL;
+}
+EXPORT_SYMBOL(drm_atomic_get_new_mst_topology_state);
+
 /**
  * drm_dp_mst_topology_mgr_init - initialise a topology manager
  * @mgr: manager struct to initialise
@@ -5626,8 +5404,6 @@ EXPORT_SYMBOL(drm_atomic_get_mst_topology_state);
  * @aux: DP helper aux channel to talk to this device
  * @max_dpcd_transaction_bytes: hw specific DPCD transaction limit
  * @max_payloads: maximum number of payloads this GPU can source
- * @max_lane_count: maximum number of lanes this GPU supports
- * @max_link_rate: maximum link rate per lane this GPU supports in kHz
  * @conn_base_id: the connector object ID the MST device is connected to.
  *
  * Return 0 for success, or negative error code on failure
@@ -5635,14 +5411,12 @@ EXPORT_SYMBOL(drm_atomic_get_mst_topology_state);
 int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_device *dev, struct drm_dp_aux *aux,
 				 int max_dpcd_transaction_bytes, int max_payloads,
-				 int max_lane_count, int max_link_rate,
 				 int conn_base_id)
 {
 	struct drm_dp_mst_topology_state *mst_state;
 
 	mutex_init(&mgr->lock);
 	mutex_init(&mgr->qlock);
-	mutex_init(&mgr->payload_lock);
 	mutex_init(&mgr->delayed_destroy_lock);
 	mutex_init(&mgr->up_req_lock);
 	mutex_init(&mgr->probe_lock);
@@ -5672,19 +5446,7 @@ int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 	mgr->aux = aux;
 	mgr->max_dpcd_transaction_bytes = max_dpcd_transaction_bytes;
 	mgr->max_payloads = max_payloads;
-	mgr->max_lane_count = max_lane_count;
-	mgr->max_link_rate = max_link_rate;
 	mgr->conn_base_id = conn_base_id;
-	if (max_payloads + 1 > sizeof(mgr->payload_mask) * 8 ||
-	    max_payloads + 1 > sizeof(mgr->vcpi_mask) * 8)
-		return -EINVAL;
-	mgr->payloads = kcalloc(max_payloads, sizeof(struct drm_dp_payload), GFP_KERNEL);
-	if (!mgr->payloads)
-		return -ENOMEM;
-	mgr->proposed_vcpis = kcalloc(max_payloads, sizeof(struct drm_dp_vcpi *), GFP_KERNEL);
-	if (!mgr->proposed_vcpis)
-		return -ENOMEM;
-	set_bit(0, &mgr->payload_mask);
 
 	mst_state = kzalloc(sizeof(*mst_state), GFP_KERNEL);
 	if (mst_state == NULL)
@@ -5717,19 +5479,12 @@ void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr)
 		destroy_workqueue(mgr->delayed_destroy_wq);
 		mgr->delayed_destroy_wq = NULL;
 	}
-	mutex_lock(&mgr->payload_lock);
-	kfree(mgr->payloads);
-	mgr->payloads = NULL;
-	kfree(mgr->proposed_vcpis);
-	mgr->proposed_vcpis = NULL;
-	mutex_unlock(&mgr->payload_lock);
 	mgr->dev = NULL;
 	mgr->aux = NULL;
 	drm_atomic_private_obj_fini(&mgr->base);
 	mgr->funcs = NULL;
 
 	mutex_destroy(&mgr->delayed_destroy_lock);
-	mutex_destroy(&mgr->payload_lock);
 	mutex_destroy(&mgr->qlock);
 	mutex_destroy(&mgr->lock);
 	mutex_destroy(&mgr->up_req_lock);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4b0af3c26176..ec389e3caf24 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -52,6 +52,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	struct drm_atomic_state *state = crtc_state->uapi.state;
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	struct drm_dp_mst_topology_state *mst_state;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -60,22 +61,28 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int bpp, slots = -EINVAL;
 
+	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
+	if (IS_ERR(mst_state))
+		return PTR_ERR(mst_state);
+
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
+	// TODO: Handle pbn_div changes by adding a new MST helper
+	if (!mst_state->pbn_div) {
+		mst_state->pbn_div = drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
+							      limits->max_rate,
+							      limits->max_lane_count);
+	}
+
 	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
 		crtc_state->pipe_bpp = bpp;
 
 		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
 						       crtc_state->pipe_bpp,
 						       false);
-
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
-						      connector->port,
-						      crtc_state->pbn,
-						      drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
-									       crtc_state->port_clock,
-									       crtc_state->lane_count));
+						      connector->port, crtc_state->pbn);
 		if (slots == -EDEADLK)
 			return slots;
 		if (slots >= 0)
@@ -360,21 +367,17 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
+	struct drm_dp_mst_topology_state *mst_state =
+		drm_atomic_get_mst_topology_state(&state->base, &intel_dp->mst_mgr);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	int start_slot = intel_dp_is_uhbr(old_crtc_state) ? 0 : 1;
-	int ret;
 
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
 	intel_hdcp_disable(intel_mst->connector);
 
-	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
-
-	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
-	if (ret) {
-		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
-	}
+	drm_dp_remove_payload(&intel_dp->mst_mgr, mst_state,
+			      drm_atomic_get_mst_payload_state(mst_state, connector->port));
 
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
 }
@@ -402,8 +405,6 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_disable_transcoder(old_crtc_state);
 
-	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
-
 	clear_act_sent(encoder, old_crtc_state);
 
 	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
@@ -411,8 +412,6 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	wait_for_act_sent(encoder, old_crtc_state);
 
-	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);
-
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 9)
@@ -479,7 +478,8 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	int start_slot = intel_dp_is_uhbr(pipe_config) ? 0 : 1;
+	struct drm_dp_mst_topology_state *mst_state =
+		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
 	int ret;
 	bool first_mst_stream;
 
@@ -505,16 +505,13 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 		dig_port->base.pre_enable(state, &dig_port->base,
 						pipe_config, NULL);
 
-	ret = drm_dp_mst_allocate_vcpi(&intel_dp->mst_mgr,
-				       connector->port,
-				       pipe_config->pbn,
-				       pipe_config->dp_m_n.tu);
-	if (!ret)
-		drm_err(&dev_priv->drm, "failed to allocate vcpi\n");
-
 	intel_dp->active_mst_links++;
 
-	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
+	ret = drm_dp_add_payload_part1(&intel_dp->mst_mgr, mst_state,
+				       drm_atomic_get_mst_payload_state(mst_state, connector->port));
+	if (ret < 0)
+		drm_err(&dev_priv->drm, "Failed to create MST payload for %s: %d\n",
+			connector->base.name, ret);
 
 	/*
 	 * Before Gen 12 this is not done as part of
@@ -537,7 +534,10 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_digital_port *dig_port = intel_mst->primary;
 	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_dp_mst_topology_state *mst_state =
+		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
 	enum transcoder trans = pipe_config->cpu_transcoder;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
@@ -565,7 +565,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	wait_for_act_sent(encoder, pipe_config);
 
-	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
+	drm_dp_add_payload_part2(&intel_dp->mst_mgr, &state->base,
+				 drm_atomic_get_mst_payload_state(mst_state, connector->port));
 
 	if (DISPLAY_VER(dev_priv) >= 12 && pipe_config->fec_enable)
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
@@ -948,8 +949,6 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 	struct intel_dp *intel_dp = &dig_port->dp;
 	enum port port = dig_port->base.port;
 	int ret;
-	int max_source_rate =
-		intel_dp->source_rates[intel_dp->num_source_rates - 1];
 
 	if (!HAS_DP_MST(i915) || intel_dp_is_edp(intel_dp))
 		return 0;
@@ -965,10 +964,7 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 	/* create encoders */
 	intel_dp_create_fake_mst_encoders(dig_port);
 	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, &i915->drm,
-					   &intel_dp->aux, 16, 3,
-					   dig_port->max_lanes,
-					   max_source_rate,
-					   conn_base_id);
+					   &intel_dp->aux, 16, 3, conn_base_id);
 	if (ret) {
 		intel_dp->mst_mgr.cbs = NULL;
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 8ea66a2e1b09..7dbc9f0bb24f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,8 +30,30 @@
 
 static int intel_conn_to_vcpi(struct intel_connector *connector)
 {
+	struct drm_dp_mst_topology_mgr *mgr;
+	struct drm_dp_mst_atomic_payload *payload;
+	struct drm_dp_mst_topology_state *mst_state;
+	int vcpi = 0;
+
 	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
-	return connector->port	? connector->port->vcpi.vcpi : 0;
+	if (!connector->port)
+		return 0;
+	mgr = connector->port->mgr;
+
+	drm_modeset_lock(&mgr->base.lock, NULL);
+	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
+	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
+	if (drm_WARN_ON(mgr->dev, !payload))
+		goto out;
+
+	vcpi = payload->vcpi;
+	if (drm_WARN_ON(mgr->dev, vcpi < 0)) {
+		vcpi = 0;
+		goto out;
+	}
+out:
+	drm_modeset_unlock(&mgr->base.lock);
+	return vcpi;
 }
 
 /*
diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
index 57f74cfcdebf..e8f4c806fa39 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
@@ -937,6 +937,7 @@ struct nv50_msto {
 	struct nv50_head *head;
 	struct nv50_mstc *mstc;
 	bool disabled;
+	bool enabled;
 };
 
 struct nouveau_encoder *nv50_real_outp(struct drm_encoder *encoder)
@@ -952,57 +953,37 @@ struct nouveau_encoder *nv50_real_outp(struct drm_encoder *encoder)
 	return msto->mstc->mstm->outp;
 }
 
-static struct drm_dp_payload *
-nv50_msto_payload(struct nv50_msto *msto)
-{
-	struct nouveau_drm *drm = nouveau_drm(msto->encoder.dev);
-	struct nv50_mstc *mstc = msto->mstc;
-	struct nv50_mstm *mstm = mstc->mstm;
-	int vcpi = mstc->port->vcpi.vcpi, i;
-
-	WARN_ON(!mutex_is_locked(&mstm->mgr.payload_lock));
-
-	NV_ATOMIC(drm, "%s: vcpi %d\n", msto->encoder.name, vcpi);
-	for (i = 0; i < mstm->mgr.max_payloads; i++) {
-		struct drm_dp_payload *payload = &mstm->mgr.payloads[i];
-		NV_ATOMIC(drm, "%s: %d: vcpi %d start 0x%02x slots 0x%02x\n",
-			  mstm->outp->base.base.name, i, payload->vcpi,
-			  payload->start_slot, payload->num_slots);
-	}
-
-	for (i = 0; i < mstm->mgr.max_payloads; i++) {
-		struct drm_dp_payload *payload = &mstm->mgr.payloads[i];
-		if (payload->vcpi == vcpi)
-			return payload;
-	}
-
-	return NULL;
-}
-
 static void
-nv50_msto_cleanup(struct nv50_msto *msto)
+nv50_msto_cleanup(struct drm_atomic_state *state,
+		  struct drm_dp_mst_topology_state *mst_state,
+		  struct drm_dp_mst_topology_mgr *mgr,
+		  struct nv50_msto *msto)
 {
 	struct nouveau_drm *drm = nouveau_drm(msto->encoder.dev);
-	struct nv50_mstc *mstc = msto->mstc;
-	struct nv50_mstm *mstm = mstc->mstm;
-
-	if (!msto->disabled)
-		return;
+	struct drm_dp_mst_atomic_payload *payload =
+		drm_atomic_get_mst_payload_state(mst_state, msto->mstc->port);
 
 	NV_ATOMIC(drm, "%s: msto cleanup\n", msto->encoder.name);
 
-	drm_dp_mst_deallocate_vcpi(&mstm->mgr, mstc->port);
-
-	msto->mstc = NULL;
-	msto->disabled = false;
+	if (msto->disabled) {
+		msto->mstc = NULL;
+		msto->disabled = false;
+	} else if (msto->enabled) {
+		drm_dp_add_payload_part2(mgr, state, payload);
+		msto->enabled = false;
+	}
 }
 
 static void
-nv50_msto_prepare(struct nv50_msto *msto)
+nv50_msto_prepare(struct drm_atomic_state *state,
+		  struct drm_dp_mst_topology_state *mst_state,
+		  struct drm_dp_mst_topology_mgr *mgr,
+		  struct nv50_msto *msto)
 {
 	struct nouveau_drm *drm = nouveau_drm(msto->encoder.dev);
 	struct nv50_mstc *mstc = msto->mstc;
 	struct nv50_mstm *mstm = mstc->mstm;
+	struct drm_dp_mst_atomic_payload *payload;
 	struct {
 		struct nv50_disp_mthd_v1 base;
 		struct nv50_disp_sor_dp_mst_vcpi_v0 vcpi;
@@ -1014,17 +995,21 @@ nv50_msto_prepare(struct nv50_msto *msto)
 			       (0x0100 << msto->head->base.index),
 	};
 
-	mutex_lock(&mstm->mgr.payload_lock);
-
 	NV_ATOMIC(drm, "%s: msto prepare\n", msto->encoder.name);
-	if (mstc->port->vcpi.vcpi > 0) {
-		struct drm_dp_payload *payload = nv50_msto_payload(msto);
-		if (payload) {
-			args.vcpi.start_slot = payload->start_slot;
-			args.vcpi.num_slots = payload->num_slots;
-			args.vcpi.pbn = mstc->port->vcpi.pbn;
-			args.vcpi.aligned_pbn = mstc->port->vcpi.aligned_pbn;
-		}
+
+	payload = drm_atomic_get_mst_payload_state(mst_state, mstc->port);
+
+	// TODO: Figure out if we want to do a better job of handling VCPI allocation failures here?
+	if (msto->disabled) {
+		drm_dp_remove_payload(mgr, mst_state, payload);
+	} else {
+		if (msto->enabled)
+			drm_dp_add_payload_part1(mgr, mst_state, payload);
+
+		args.vcpi.start_slot = payload->vc_start_slot;
+		args.vcpi.num_slots = payload->time_slots;
+		args.vcpi.pbn = payload->pbn;
+		args.vcpi.aligned_pbn = payload->time_slots * mst_state->pbn_div;
 	}
 
 	NV_ATOMIC(drm, "%s: %s: %02x %02x %04x %04x\n",
@@ -1033,7 +1018,6 @@ nv50_msto_prepare(struct nv50_msto *msto)
 		  args.vcpi.pbn, args.vcpi.aligned_pbn);
 
 	nvif_mthd(&drm->display->disp.object, 0, &args, sizeof(args));
-	mutex_unlock(&mstm->mgr.payload_lock);
 }
 
 static int
@@ -1043,6 +1027,7 @@ nv50_msto_atomic_check(struct drm_encoder *encoder,
 {
 	struct drm_atomic_state *state = crtc_state->state;
 	struct drm_connector *connector = conn_state->connector;
+	struct drm_dp_mst_topology_state *mst_state;
 	struct nv50_mstc *mstc = nv50_mstc(connector);
 	struct nv50_mstm *mstm = mstc->mstm;
 	struct nv50_head_atom *asyh = nv50_head_atom(crtc_state);
@@ -1070,8 +1055,18 @@ nv50_msto_atomic_check(struct drm_encoder *encoder,
 						    false);
 	}
 
-	slots = drm_dp_atomic_find_time_slots(state, &mstm->mgr, mstc->port,
-					      asyh->dp.pbn, 0);
+	mst_state = drm_atomic_get_mst_topology_state(state, &mstm->mgr);
+	if (IS_ERR(mst_state))
+		return PTR_ERR(mst_state);
+
+	if (!mst_state->pbn_div) {
+		struct nouveau_encoder *outp = mstc->mstm->outp;
+
+		mst_state->pbn_div = drm_dp_get_vc_payload_bw(&mstm->mgr,
+							      outp->dp.link_bw, outp->dp.link_nr);
+	}
+
+	slots = drm_dp_atomic_find_time_slots(state, &mstm->mgr, mstc->port, asyh->dp.pbn);
 	if (slots < 0)
 		return slots;
 
@@ -1103,7 +1098,6 @@ nv50_msto_atomic_enable(struct drm_encoder *encoder, struct drm_atomic_state *st
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	u8 proto;
-	bool r;
 
 	drm_connector_list_iter_begin(encoder->dev, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
@@ -1118,10 +1112,6 @@ nv50_msto_atomic_enable(struct drm_encoder *encoder, struct drm_atomic_state *st
 	if (WARN_ON(!mstc))
 		return;
 
-	r = drm_dp_mst_allocate_vcpi(&mstm->mgr, mstc->port, asyh->dp.pbn, asyh->dp.tu);
-	if (!r)
-		DRM_DEBUG_KMS("Failed to allocate VCPI\n");
-
 	if (!mstm->links++)
 		nv50_outp_acquire(mstm->outp, false /*XXX: MST audio.*/);
 
@@ -1134,6 +1124,7 @@ nv50_msto_atomic_enable(struct drm_encoder *encoder, struct drm_atomic_state *st
 			   nv50_dp_bpc_to_depth(asyh->or.bpc));
 
 	msto->mstc = mstc;
+	msto->enabled = true;
 	mstm->modified = true;
 }
 
@@ -1144,8 +1135,6 @@ nv50_msto_atomic_disable(struct drm_encoder *encoder, struct drm_atomic_state *s
 	struct nv50_mstc *mstc = msto->mstc;
 	struct nv50_mstm *mstm = mstc->mstm;
 
-	drm_dp_mst_reset_vcpi_slots(&mstm->mgr, mstc->port);
-
 	mstm->outp->update(mstm->outp, msto->head->base.index, NULL, 0, 0);
 	mstm->modified = true;
 	if (!--mstm->links)
@@ -1365,7 +1354,9 @@ nv50_mstc_new(struct nv50_mstm *mstm, struct drm_dp_mst_port *port,
 }
 
 static void
-nv50_mstm_cleanup(struct nv50_mstm *mstm)
+nv50_mstm_cleanup(struct drm_atomic_state *state,
+		  struct drm_dp_mst_topology_state *mst_state,
+		  struct nv50_mstm *mstm)
 {
 	struct nouveau_drm *drm = nouveau_drm(mstm->outp->base.base.dev);
 	struct drm_encoder *encoder;
@@ -1373,14 +1364,12 @@ nv50_mstm_cleanup(struct nv50_mstm *mstm)
 	NV_ATOMIC(drm, "%s: mstm cleanup\n", mstm->outp->base.base.name);
 	drm_dp_check_act_status(&mstm->mgr);
 
-	drm_dp_update_payload_part2(&mstm->mgr);
-
 	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
 		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
 			struct nv50_msto *msto = nv50_msto(encoder);
 			struct nv50_mstc *mstc = msto->mstc;
 			if (mstc && mstc->mstm == mstm)
-				nv50_msto_cleanup(msto);
+				nv50_msto_cleanup(state, mst_state, &mstm->mgr, msto);
 		}
 	}
 
@@ -1388,20 +1377,34 @@ nv50_mstm_cleanup(struct nv50_mstm *mstm)
 }
 
 static void
-nv50_mstm_prepare(struct nv50_mstm *mstm)
+nv50_mstm_prepare(struct drm_atomic_state *state,
+		  struct drm_dp_mst_topology_state *mst_state,
+		  struct nv50_mstm *mstm)
 {
 	struct nouveau_drm *drm = nouveau_drm(mstm->outp->base.base.dev);
 	struct drm_encoder *encoder;
 
 	NV_ATOMIC(drm, "%s: mstm prepare\n", mstm->outp->base.base.name);
-	drm_dp_update_payload_part1(&mstm->mgr, 1);
 
+	/* Disable payloads first */
 	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
 		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
 			struct nv50_msto *msto = nv50_msto(encoder);
 			struct nv50_mstc *mstc = msto->mstc;
-			if (mstc && mstc->mstm == mstm)
-				nv50_msto_prepare(msto);
+			if (mstc && mstc->mstm == mstm && msto->disabled)
+				nv50_msto_prepare(state, mst_state, &mstm->mgr, msto);
+		}
+	}
+
+	/* Add payloads for new heads, while also updating the start slots of any unmodified (but
+	 * active) heads that may have had their VC slots shifted left after the previous step
+	 */
+	drm_for_each_encoder(encoder, mstm->outp->base.base.dev) {
+		if (encoder->encoder_type == DRM_MODE_ENCODER_DPMST) {
+			struct nv50_msto *msto = nv50_msto(encoder);
+			struct nv50_mstc *mstc = msto->mstc;
+			if (mstc && mstc->mstm == mstm && !msto->disabled)
+				nv50_msto_prepare(state, mst_state, &mstm->mgr, msto);
 		}
 	}
 
@@ -1598,9 +1601,7 @@ nv50_mstm_new(struct nouveau_encoder *outp, struct drm_dp_aux *aux, int aux_max,
 	mstm->mgr.cbs = &nv50_mstm;
 
 	ret = drm_dp_mst_topology_mgr_init(&mstm->mgr, dev, aux, aux_max,
-					   max_payloads, outp->dcb->dpconf.link_nr,
-					   drm_dp_bw_code_to_link_rate(outp->dcb->dpconf.link_bw),
-					   conn_base_id);
+					   max_payloads, conn_base_id);
 	if (ret)
 		return ret;
 
@@ -2045,20 +2046,20 @@ nv50_pior_create(struct drm_connector *connector, struct dcb_output *dcbe)
 static void
 nv50_disp_atomic_commit_core(struct drm_atomic_state *state, u32 *interlock)
 {
+	struct drm_dp_mst_topology_mgr *mgr;
+	struct drm_dp_mst_topology_state *mst_state;
 	struct nouveau_drm *drm = nouveau_drm(state->dev);
 	struct nv50_disp *disp = nv50_disp(drm->dev);
 	struct nv50_core *core = disp->core;
 	struct nv50_mstm *mstm;
-	struct drm_encoder *encoder;
+	int i;
 
 	NV_ATOMIC(drm, "commit core %08x\n", interlock[NV50_DISP_INTERLOCK_BASE]);
 
-	drm_for_each_encoder(encoder, drm->dev) {
-		if (encoder->encoder_type != DRM_MODE_ENCODER_DPMST) {
-			mstm = nouveau_encoder(encoder)->dp.mstm;
-			if (mstm && mstm->modified)
-				nv50_mstm_prepare(mstm);
-		}
+	for_each_new_mst_mgr_in_state(state, mgr, mst_state, i) {
+		mstm = nv50_mstm(mgr);
+		if (mstm->modified)
+			nv50_mstm_prepare(state, mst_state, mstm);
 	}
 
 	core->func->ntfy_init(disp->sync, NV50_DISP_CORE_NTFY);
@@ -2067,12 +2068,10 @@ nv50_disp_atomic_commit_core(struct drm_atomic_state *state, u32 *interlock)
 				       disp->core->chan.base.device))
 		NV_ERROR(drm, "core notifier timeout\n");
 
-	drm_for_each_encoder(encoder, drm->dev) {
-		if (encoder->encoder_type != DRM_MODE_ENCODER_DPMST) {
-			mstm = nouveau_encoder(encoder)->dp.mstm;
-			if (mstm && mstm->modified)
-				nv50_mstm_cleanup(mstm);
-		}
+	for_each_new_mst_mgr_in_state(state, mgr, mst_state, i) {
+		mstm = nv50_mstm(mgr);
+		if (mstm->modified)
+			nv50_mstm_cleanup(state, mst_state, mstm);
 	}
 }
 
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index ecd130028337..6317831705ab 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -48,20 +48,6 @@ struct drm_dp_mst_topology_ref_history {
 
 struct drm_dp_mst_branch;
 
-/**
- * struct drm_dp_vcpi - Virtual Channel Payload Identifier
- * @vcpi: Virtual channel ID.
- * @pbn: Payload Bandwidth Number for this channel
- * @aligned_pbn: PBN aligned with slot size
- * @num_slots: number of slots for this PBN
- */
-struct drm_dp_vcpi {
-	int vcpi;
-	int pbn;
-	int aligned_pbn;
-	int num_slots;
-};
-
 /**
  * struct drm_dp_mst_port - MST port
  * @port_num: port number
@@ -142,7 +128,6 @@ struct drm_dp_mst_port {
 	struct drm_dp_aux aux; /* i2c bus for this port? */
 	struct drm_dp_mst_branch *parent;
 
-	struct drm_dp_vcpi vcpi;
 	struct drm_connector *connector;
 	struct drm_dp_mst_topology_mgr *mgr;
 
@@ -527,19 +512,6 @@ struct drm_dp_mst_topology_cbs {
 	void (*poll_hpd_irq)(struct drm_dp_mst_topology_mgr *mgr);
 };
 
-#define DP_MAX_PAYLOAD (sizeof(unsigned long) * 8)
-
-#define DP_PAYLOAD_LOCAL 1
-#define DP_PAYLOAD_REMOTE 2
-#define DP_PAYLOAD_DELETE_LOCAL 3
-
-struct drm_dp_payload {
-	int payload_state;
-	int start_slot;
-	int num_slots;
-	int vcpi;
-};
-
 #define to_dp_mst_topology_state(x) container_of(x, struct drm_dp_mst_topology_state, base)
 
 /**
@@ -551,6 +523,35 @@ struct drm_dp_payload {
 struct drm_dp_mst_atomic_payload {
 	/** @port: The MST port assigned to this payload */
 	struct drm_dp_mst_port *port;
+
+	/**
+	 * @vc_start_slot: The time slot that this payload starts on. Because payload start slots
+	 * can't be determined ahead of time, the contents of this value are UNDEFINED at atomic
+	 * check time. This shouldn't usually matter, as the start slot should never be relevant for
+	 * atomic state computations.
+	 *
+	 * Since this value is determined at commit time instead of check time, this value is
+	 * protected by the MST helpers ensuring that async commits operating on the given topology
+	 * never run in parallel. In the event that a driver does need to read this value (e.g. to
+	 * inform hardware of the starting timeslot for a payload), the driver may either:
+	 *
+	 * * Read this field during the atomic commit after
+	 *   drm_dp_mst_atomic_wait_for_dependencies() has been called, which will ensure the
+	 *   previous MST states payload start slots have been copied over to the new state. Note
+	 *   that a new start slot won't be assigned/removed from this payload until
+	 *   drm_dp_add_payload_part1()/drm_dp_remove_payload() have been called.
+	 * * Acquire the MST modesetting lock, and then wait for any pending MST-related commits to
+	 *   get committed to hardware by calling drm_crtc_commit_wait() on each of the
+	 *   &drm_crtc_commit structs in &drm_dp_mst_topology_state.commit_deps.
+	 *
+	 * If neither of the two above solutions suffice (e.g. the driver needs to read the start
+	 * slot in the middle of an atomic commit without waiting for some reason), then drivers
+	 * should cache this value themselves after changing payloads.
+	 */
+	s8 vc_start_slot;
+
+	/** @vcpi: The Virtual Channel Payload Identifier */
+	u8 vcpi;
 	/** @time_slots: The number of timeslots allocated to this payload */
 	int time_slots;
 	/** @pbn: The payload bandwidth for this payload */
@@ -574,8 +575,6 @@ struct drm_dp_mst_topology_state {
 	/** @base: Base private state for atomic */
 	struct drm_private_state base;
 
-	/** @payloads: The list of payloads being created/destroyed in this state */
-	struct list_head payloads;
 	/** @mgr: The topology manager */
 	struct drm_dp_mst_topology_mgr *mgr;
 
@@ -592,10 +591,21 @@ struct drm_dp_mst_topology_state {
 	/** @num_commit_deps: The number of CRTC commits in @commit_deps */
 	size_t num_commit_deps;
 
+	/** @payload_mask: A bitmask of allocated VCPIs, used for VCPI assignments */
+	u32 payload_mask;
+	/** @payloads: The list of payloads being created/destroyed in this state */
+	struct list_head payloads;
+
 	/** @total_avail_slots: The total number of slots this topology can handle (63 or 64) */
 	u8 total_avail_slots;
 	/** @start_slot: The first usable time slot in this topology (1 or 0) */
 	u8 start_slot;
+
+	/**
+	 * @pbn_div: The current PBN divisor for this topology. The driver is expected to fill this
+	 * out itself.
+	 */
+	int pbn_div;
 };
 
 #define to_dp_mst_topology_mgr(x) container_of(x, struct drm_dp_mst_topology_mgr, base)
@@ -635,14 +645,6 @@ struct drm_dp_mst_topology_mgr {
 	 * @max_payloads: maximum number of payloads the GPU can generate.
 	 */
 	int max_payloads;
-	/**
-	 * @max_lane_count: maximum number of lanes the GPU can drive.
-	 */
-	int max_lane_count;
-	/**
-	 * @max_link_rate: maximum link rate per lane GPU can output, in kHz.
-	 */
-	int max_link_rate;
 	/**
 	 * @conn_base_id: DRM connector ID this mgr is connected to. Only used
 	 * to build the MST connector path value.
@@ -685,6 +687,20 @@ struct drm_dp_mst_topology_mgr {
 	 */
 	bool payload_id_table_cleared : 1;
 
+	/**
+	 * @payload_count: The number of currently active payloads in hardware. This value is only
+	 * intended to be used internally by MST helpers for payload tracking, and is only safe to
+	 * read/write from the atomic commit (not check) context.
+	 */
+	u8 payload_count;
+
+	/**
+	 * @next_start_slot: The starting timeslot to use for new VC payloads. This value is used
+	 * internally by MST helpers for payload tracking, and is only safe to read/write from the
+	 * atomic commit (not check) context.
+	 */
+	u8 next_start_slot;
+
 	/**
 	 * @mst_primary: Pointer to the primary/first branch device.
 	 */
@@ -698,10 +714,6 @@ struct drm_dp_mst_topology_mgr {
 	 * @sink_count: Sink count from DEVICE_SERVICE_IRQ_VECTOR_ESI0.
 	 */
 	u8 sink_count;
-	/**
-	 * @pbn_div: PBN to slots divisor.
-	 */
-	int pbn_div;
 
 	/**
 	 * @funcs: Atomic helper callbacks
@@ -718,32 +730,6 @@ struct drm_dp_mst_topology_mgr {
 	 */
 	struct list_head tx_msg_downq;
 
-	/**
-	 * @payload_lock: Protect payload information.
-	 */
-	struct mutex payload_lock;
-	/**
-	 * @proposed_vcpis: Array of pointers for the new VCPI allocation. The
-	 * VCPI structure itself is &drm_dp_mst_port.vcpi, and the size of
-	 * this array is determined by @max_payloads.
-	 */
-	struct drm_dp_vcpi **proposed_vcpis;
-	/**
-	 * @payloads: Array of payloads. The size of this array is determined
-	 * by @max_payloads.
-	 */
-	struct drm_dp_payload *payloads;
-	/**
-	 * @payload_mask: Elements of @payloads actually in use. Since
-	 * reallocation of active outputs isn't possible gaps can be created by
-	 * disabling outputs out of order compared to how they've been enabled.
-	 */
-	unsigned long payload_mask;
-	/**
-	 * @vcpi_mask: Similar to @payload_mask, but for @proposed_vcpis.
-	 */
-	unsigned long vcpi_mask;
-
 	/**
 	 * @tx_waitq: Wait to queue stall for the tx worker.
 	 */
@@ -815,9 +801,7 @@ struct drm_dp_mst_topology_mgr {
 int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 				 struct drm_device *dev, struct drm_dp_aux *aux,
 				 int max_dpcd_transaction_bytes,
-				 int max_payloads,
-				 int max_lane_count, int max_link_rate,
-				 int conn_base_id);
+				 int max_payloads, int conn_base_id);
 
 void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr);
 
@@ -840,28 +824,17 @@ int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
 
 int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc);
 
-bool drm_dp_mst_allocate_vcpi(struct drm_dp_mst_topology_mgr *mgr,
-			      struct drm_dp_mst_port *port, int pbn, int slots);
-
-int drm_dp_mst_get_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port);
-
-
-void drm_dp_mst_reset_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port);
-
 void drm_dp_mst_update_slots(struct drm_dp_mst_topology_state *mst_state, uint8_t link_encoding_cap);
 
-void drm_dp_mst_deallocate_vcpi(struct drm_dp_mst_topology_mgr *mgr,
-				struct drm_dp_mst_port *port);
-
-
-int drm_dp_find_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr,
-			   int pbn);
-
-
-int drm_dp_update_payload_part1(struct drm_dp_mst_topology_mgr *mgr, int start_slot);
-
-
-int drm_dp_update_payload_part2(struct drm_dp_mst_topology_mgr *mgr);
+int drm_dp_add_payload_part1(struct drm_dp_mst_topology_mgr *mgr,
+			     struct drm_dp_mst_topology_state *mst_state,
+			     struct drm_dp_mst_atomic_payload *payload);
+int drm_dp_add_payload_part2(struct drm_dp_mst_topology_mgr *mgr,
+			     struct drm_atomic_state *state,
+			     struct drm_dp_mst_atomic_payload *payload);
+void drm_dp_remove_payload(struct drm_dp_mst_topology_mgr *mgr,
+			   struct drm_dp_mst_topology_state *mst_state,
+			   struct drm_dp_mst_atomic_payload *payload);
 
 int drm_dp_check_act_status(struct drm_dp_mst_topology_mgr *mgr);
 
@@ -883,17 +856,22 @@ int drm_dp_mst_connector_late_register(struct drm_connector *connector,
 void drm_dp_mst_connector_early_unregister(struct drm_connector *connector,
 					   struct drm_dp_mst_port *port);
 
-struct drm_dp_mst_topology_state *drm_atomic_get_mst_topology_state(struct drm_atomic_state *state,
-								    struct drm_dp_mst_topology_mgr *mgr);
+struct drm_dp_mst_topology_state *
+drm_atomic_get_mst_topology_state(struct drm_atomic_state *state,
+				  struct drm_dp_mst_topology_mgr *mgr);
+struct drm_dp_mst_topology_state *
+drm_atomic_get_new_mst_topology_state(struct drm_atomic_state *state,
+				      struct drm_dp_mst_topology_mgr *mgr);
+struct drm_dp_mst_atomic_payload *
+drm_atomic_get_mst_payload_state(struct drm_dp_mst_topology_state *state,
+				 struct drm_dp_mst_port *port);
 int __must_check
 drm_dp_atomic_find_time_slots(struct drm_atomic_state *state,
 			      struct drm_dp_mst_topology_mgr *mgr,
-			      struct drm_dp_mst_port *port, int pbn,
-			      int pbn_div);
+			      struct drm_dp_mst_port *port, int pbn);
 int drm_dp_mst_atomic_enable_dsc(struct drm_atomic_state *state,
 				 struct drm_dp_mst_port *port,
-				 int pbn, int pbn_div,
-				 bool enable);
+				 int pbn, bool enable);
 int __must_check
 drm_dp_mst_add_affected_dsc_crtcs(struct drm_atomic_state *state,
 				  struct drm_dp_mst_topology_mgr *mgr);
@@ -917,6 +895,12 @@ void drm_dp_mst_put_port_malloc(struct drm_dp_mst_port *port);
 
 struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *port);
 
+static inline struct drm_dp_mst_topology_state *
+to_drm_dp_mst_topology_state(struct drm_private_state *state)
+{
+	return container_of(state, struct drm_dp_mst_topology_state, base);
+}
+
 extern const struct drm_private_state_funcs drm_dp_mst_topology_state_funcs;
 
 /**
-- 
2.35.3

