Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCbgBTzCw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B861F323906
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB2D10E875;
	Wed, 25 Mar 2026 11:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQq+No08";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4464B10E870;
 Wed, 25 Mar 2026 11:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436915; x=1805972915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TH77aV8YRGx4fNL4fF8a1BxhbVKIbkoq0AgszFwWh8E=;
 b=IQq+No08blDnLtpWZyySGOIq0hZPEHVuWoB4oUCqNOdg4VQlF2o2j02Y
 PQNNurJoHWsc4hrHvpbFi0kHqhmupofryLfJF5Pw0MIEuNovmDZUkf6Do
 l69qFHc1NHe9fcDTyxRpqoX96BAs7rb6LRiv0ePxqdIBmKiMG6nAIDVfn
 1tsS/tO1YMlL8/C2tFCIN0iFlfitwmF/AXf5eBoZ3Bs5AXbzFIGKYKgLK
 LxuSv+xQiEohc7YThP+1Lgg7Mbeh7SbT09IIo6LVPc1ItTlyTn2R2eZLG
 zTFO7PlA+1a3m6MrKgLstVhgdVI3vXvoJdQP6SjR+vpYWTK9rM+s4sif9 A==;
X-CSE-ConnectionGUID: 9twakcDgTFa+oVRW/Ziz9g==
X-CSE-MsgGUID: 4KO71347QT6SeK05NFlDyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047532"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047532"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:35 -0700
X-CSE-ConnectionGUID: 7T1G9Hr1S0KPx1SIcqB7Qg==
X-CSE-MsgGUID: Txl2rETJTri4bIzWKHQUtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798413"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame capture
 function
Date: Wed, 25 Mar 2026 16:37:36 +0530
Message-Id: <20260325110744.1096786-19-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B861F323906
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define the commit function to be called at atomic_commit_tail
if drm_writeback_job is available. This function calls the
capture function and queues the job to be called later via
interrupt handler when the job is complete.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +
 .../gpu/drm/i915/display/intel_writeback.c    | 58 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_writeback.h    |  4 ++
 3 files changed, 65 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d433ffaadd65..4cc3e0779e8a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -126,6 +126,7 @@
 #include "intel_vga.h"
 #include "intel_vrr.h"
 #include "intel_wm.h"
+#include "intel_writeback.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
@@ -7564,6 +7565,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
+	intel_writeback_atomic_commit(state);
+
 	intel_wait_for_vblank_workers(state);
 
 	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index d45d5faaf7cc..c79e7330b81c 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -51,6 +51,12 @@ static const u32 writeback_formats[] = {
 	DRM_FORMAT_XBGR2101010,
 };
 
+static struct intel_writeback_connector
+*conn_to_intel_writeback_connector(struct intel_connector *connector)
+{
+	return container_of(connector, struct intel_writeback_connector, connector);
+}
+
 static struct intel_writeback_connector
 *enc_to_intel_writeback_connector(struct intel_encoder *encoder)
 {
@@ -224,6 +230,58 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
 	return 0;
 }
 
+static void intel_writeback_capture(struct intel_atomic_state *state,
+				    struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_writeback_connector *wb_conn =
+		conn_to_intel_writeback_connector(connector);
+	enum transcoder trans = wb_conn->trans;
+	u32 val = 0;
+
+	val |= START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn->frame_num);
+	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
+		     START_TRIGGER_FRAME | WD_FRAME_NUMBER_MASK,
+		     val);
+
+	if (intel_de_wait_for_set_ms(display, WD_FRAME_STATUS(trans),
+				     WD_FRAME_COMPLETE, 50)) {
+		drm_dbg_kms(display->drm,
+			    "Frame was not captured after triggering a capture\n");
+		intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
+			     STOP_TRIGGER_FRAME,
+			     STOP_TRIGGER_FRAME);
+	} else {
+		drm_writeback_signal_completion(&connector->base, 0);
+		intel_de_write(display, WD_FRAME_STATUS(trans), WD_FRAME_COMPLETE);
+		wb_conn->frame_num++;
+		if (wb_conn->frame_num > 7)
+			wb_conn->frame_num = 1;
+		wb_conn->job = NULL;
+	}
+}
+
+void intel_writeback_atomic_commit(struct intel_atomic_state *state)
+{
+	struct drm_connector *connector;
+	struct drm_connector_state *conn_state;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, connector, conn_state, i) {
+		struct intel_connector *intel_connector = to_intel_connector(connector);
+
+		if (!conn_state)
+			return;
+
+		if (conn_state->writeback_job && conn_state->writeback_job->fb) {
+			WARN_ON(connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK);
+
+			drm_writeback_queue_job(connector, conn_state);
+			intel_writeback_capture(state, intel_connector);
+		}
+	}
+}
+
 static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
 					   struct intel_encoder *encoder,
 					   const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
index 5911684cb81a..3c145cf73e20 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.h
+++ b/drivers/gpu/drm/i915/display/intel_writeback.h
@@ -8,10 +8,14 @@
 
 #include <linux/types.h>
 
+#include "intel_display_types.h"
+
+struct intel_atomic_state;
 struct intel_display;
 struct intel_writeback_connector;
 
 int intel_writeback_init(struct intel_display *display);
+void intel_writeback_atomic_commit(struct intel_atomic_state *state);
 
 #endif /* __INTEL_WRITEBACK_H__ */
 
-- 
2.34.1

