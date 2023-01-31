Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6296830C8
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:06:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3BDE10E378;
	Tue, 31 Jan 2023 15:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170A910E376
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675177562; x=1706713562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0o/gfYUm452G5Yv9yxKnTYvr9pzqdXJ8W+MBbpswruc=;
 b=cbBGdvoRNuLKK24QBl9Bw+HVOOS7XnOISXLJUEXPMkzgje8g3b8OsO78
 ZfWJWVeIoPAdzU2AeyTZe7D9tknNspNjYoLgtrgjwccptrsJXIRxbtUSJ
 mI0ZL8lum7TcAnfv+9q+Vc2XDft3vOaQWGLGR1Lfcp6YeFutrTdjjzOep
 4ASQGm/Ad6F1bOgkv79Bwm4dj+9SHNcYmouOuLFpya3EuKKkQhyxegiyc
 wBIP4nMZzrNtnuUREngSPKktS3YAJ3fdsgIckLmXGklkHYpk+BHAiZwh3
 HyDgk25MCJNoshy6pcG0B6OBqJ19dlS7QbmSsnf0CLKmpbZWdiAyzuU7L A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308205546"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308205546"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:06:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="807155299"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807155299"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:06:00 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 17:05:37 +0200
Message-Id: <20230131150548.1614458-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230131150548.1614458-1-imre.deak@intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/17] drm/display/dp_mst: Sanitize payload
 iteration in drm_dp_mst_dump_topology()
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

Simplify the loop iterating the payloads by using a helper to get a
payload by its VCPI (keeping the list VCPI sorted). This also removes
the assumption that the biggest VCPI matches the number of payloads
(even though this holds now).

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 45 ++++++++++++-------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 8787df19f428b..0c04b96ae614c 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -4737,6 +4737,18 @@ static void fetch_monitor_name(struct drm_dp_mst_topology_mgr *mgr,
 	kfree(mst_edid);
 }
 
+static struct drm_dp_mst_atomic_payload *
+get_payload_by_vcpi(struct drm_dp_mst_topology_state *mst_state, int vcpi)
+{
+	struct drm_dp_mst_atomic_payload *payload;
+
+	list_for_each_entry(payload, &mst_state->payloads, next)
+		if (payload->vcpi == vcpi)
+			return payload;
+
+	return NULL;
+}
+
 /**
  * drm_dp_mst_dump_topology(): dump topology to seq file.
  * @m: seq_file to dump output to
@@ -4748,7 +4760,6 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
 			      struct drm_dp_mst_topology_mgr *mgr)
 {
 	struct drm_dp_mst_topology_state *state;
-	struct drm_dp_mst_atomic_payload *payload;
 	int i, ret;
 
 	mutex_lock(&mgr->lock);
@@ -4768,24 +4779,24 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
 		   state->payload_mask, mgr->max_payloads, state->start_slot, state->pbn_div);
 
 	seq_printf(m, "\n| idx | port | vcpi | slots | pbn | dsc |     sink name     |\n");
-	for (i = 0; i < mgr->max_payloads; i++) {
-		list_for_each_entry(payload, &state->payloads, next) {
-			char name[14];
+	for_each_set_bit(i, (unsigned long *)&state->payload_mask,
+			 BITS_PER_TYPE(state->payload_mask)) {
+		const struct drm_dp_mst_atomic_payload *payload = get_payload_by_vcpi(state, i + 1);
+		char name[14];
 
-			if (payload->vcpi != i + 1 || payload->delete)
-				continue;
+		if (payload->delete)
+			continue;
 
-			fetch_monitor_name(mgr, payload->port, name, sizeof(name));
-			seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
-				   i,
-				   payload->port->port_num,
-				   payload->vcpi,
-				   payload->vc_start_slot,
-				   payload->vc_start_slot + payload->time_slots - 1,
-				   payload->pbn,
-				   payload->dsc_enabled ? "Y" : "N",
-				   (*name != 0) ? name : "Unknown");
-		}
+		fetch_monitor_name(mgr, payload->port, name, sizeof(name));
+		seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
+			   i,
+			   payload->port->port_num,
+			   payload->vcpi,
+			   payload->vc_start_slot,
+			   payload->vc_start_slot + payload->time_slots - 1,
+			   payload->pbn,
+			   payload->dsc_enabled ? "Y" : "N",
+			   (*name != 0) ? name : "Unknown");
 	}
 
 	seq_printf(m, "\n*** DPCD Info ***\n");
-- 
2.37.1

