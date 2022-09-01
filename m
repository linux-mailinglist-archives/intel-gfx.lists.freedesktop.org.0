Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE5D5A9CF0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 18:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394E110E090;
	Thu,  1 Sep 2022 16:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4226A10E090
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 16:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662049185; x=1693585185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dTy61SE8wC7C1c0C+IJHADW+M62CwOdllw+yoEsYfKM=;
 b=Xdk0UKfmltOcXWOcHBmMWUsN5EkCfCqJ7lfo2hgiLvXb/G5UYpoOpA2O
 NOeFhxYgF/mOWQG/U48QUuyvQA8UqUxEA71rRqsOI9DG3VpBGtxmxOobl
 n7TLZhDbWN88WirOeZKfLv9pJ5cLbuV++NGlAsH86he33Ce8Vlm87tT7m
 HTTTRma7r+I1yD1dGtEwVGWuO3EtPhNyb9UBoRlwkm8fdqAOv9W88+yHU
 DTAFYVeXZRsdd2iq1/tVzMt5jBo0KpXUYoRIPHA5SzQwzLr4k+7H3NBhV
 vGHPO5zkUN+iAvjCVSltWWWpm2rHBPyT4bZ/XaCRznsaEWBz5vJw82AMC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="321911834"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="321911834"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 09:19:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="673926429"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 09:19:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 19:19:33 +0300
Message-Id: <20220901161933.1004778-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp_mst: Fix mst_mgr lookup during
 atomic check
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

If an MST connector was disabled in the old state during a commit, the
connector's best_encoder will be NULL, so we can't look up mst_mgr via
it. Do the lookup instead via intel_connector->mst_port which always
points to the primary encoder.

This fixes the following:
[   58.922866] BUG: kernel NULL pointer dereference, address: 0000000000000170
[   58.922867] #PF: supervisor read access in kernel mode
[   58.922868] #PF: error_code(0x0000) - not-present page
[   58.922869] PGD 0 P4D 0
[   58.922870] Oops: 0000 [#1] PREEMPT SMP NOPTI
[   58.922872] CPU: 0 PID: 133 Comm: kworker/0:2 Tainted: G     U             6.0.0-rc3-imre+ #560
[   58.922874] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P DDR5 RVP, BIOS ADLPFWI1.R00.3135.A00.2203251419 03/25/2022
[   58.922874] Workqueue: events output_poll_execute [drm_kms_helper]
[   58.922879] RIP: 0010:intel_dp_mst_atomic_check+0xbb/0x1c0 [i915]
[   58.922955] Code: 5b 7b f6 ff 84 c0 75 41 48 8b 44 24 18 65 48 2b 04 25 28 00 00 00 0f 85 ff 00 00 00 48 8b 45 10 48 8b 93 10 07 00 00 4c 89 e7 <48> 8b b0 70 01 00 00 48 83 c4 20 5b 5d 48 81 c6 f0 0c 00 00 41 5c
[   58.922956] RSP: 0018:ffffc90000633a88 EFLAGS: 00010246
[   58.922957] RAX: 0000000000000000 RBX: ffff888117d19000 RCX: ffff888101893308
[   58.922958] RDX: ffff888122981000 RSI: ffffffff82309ecc RDI: ffff888114da6800
[   58.922959] RBP: ffff8881094bab48 R08: 0000000081917436 R09: 0000000068191743
[   58.922960] R10: 0000000000000001 R11: 0000000000000001 R12: ffff888114da6800
[   58.922960] R13: ffff8881143f8000 R14: 0000000000000000 R15: ffff888119bf2000
[   58.922961] FS:  0000000000000000(0000) GS:ffff888496200000(0000) knlGS:0000000000000000
[   58.922962] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   58.922962] CR2: 0000000000000170 CR3: 0000000005612004 CR4: 0000000000770ef0
[   58.922963] PKRU: 55555554
[   58.922963] Call Trace:
[   58.922964]  <TASK>
[   58.922966]  drm_atomic_helper_check_modeset+0x3f8/0xc70 [drm_kms_helper]
[   58.922972]  intel_atomic_check+0xb1/0x3180 [i915]
[   58.923059]  ? find_held_lock+0x2b/0x80
[   58.923064]  drm_atomic_check_only+0x5d3/0xa60 [drm]
[   58.923082]  drm_atomic_commit+0x56/0xc0 [drm]
[   58.923097]  ? drm_plane_get_damage_clips.cold+0x1c/0x1c [drm]
[   58.923114]  drm_client_modeset_commit_atomic+0x235/0x280 [drm]
[   58.923132]  drm_client_modeset_commit_locked+0x5b/0x190 [drm]
[   58.923148]  drm_client_modeset_commit+0x24/0x50 [drm]
[   58.923164]  drm_fb_helper_set_par+0xae/0xe0 [drm_kms_helper]
[   58.923171]  drm_fb_helper_hotplug_event+0xd5/0xf0 [drm_kms_helper]
[   58.923178]  output_poll_execute+0xac/0x200 [drm_kms_helper]
[   58.923187]  process_one_work+0x268/0x580
[   58.923190]  ? process_one_work+0x580/0x580
[   58.923191]  worker_thread+0x52/0x3b0
[   58.923193]  ? process_one_work+0x580/0x580
[   58.923195]  kthread+0xf0/0x120
[   58.923196]  ? kthread_complete_and_exit+0x20/0x20
[   58.923198]  ret_from_fork+0x1f/0x30
[   58.923202]  </TASK>

Fixes: ffac9721939d ("drm/display/dp_mst: Don't open code modeset checks for releasing time slots")
Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 13abe2b2170e7..7713c19042f34 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -315,11 +315,8 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
 			  struct drm_atomic_state *_state)
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
-	struct drm_connector_state *old_conn_state =
-		drm_atomic_get_old_connector_state(&state->base, connector);
 	struct intel_connector *intel_connector =
 		to_intel_connector(connector);
-	struct drm_dp_mst_topology_mgr *mgr;
 	int ret;
 
 	ret = intel_digital_connector_atomic_check(connector, &state->base);
@@ -330,8 +327,9 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
 	if (ret)
 		return ret;
 
-	mgr = &enc_to_mst(to_intel_encoder(old_conn_state->best_encoder))->primary->dp.mst_mgr;
-	return drm_dp_atomic_release_time_slots(&state->base, mgr, intel_connector->port);
+	return drm_dp_atomic_release_time_slots(&state->base,
+						&intel_connector->mst_port->mst_mgr,
+						intel_connector->port);
 }
 
 static void clear_act_sent(struct intel_encoder *encoder,
-- 
2.37.1

