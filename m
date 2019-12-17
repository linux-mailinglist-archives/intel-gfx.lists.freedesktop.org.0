Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF28122166
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 02:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 678456E91F;
	Tue, 17 Dec 2019 01:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B8B6E91F
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 01:23:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 17:23:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="227317189"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2019 17:23:10 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 17:23:10 -0800
Message-Id: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915/guc: Merge communication_stop
 and communication_disable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only difference from the GuC POV between guc_communication_stop and
guc_communication_disable is that the former can be called after GuC
has been reset. Instead of having two separate paths, we can just skip
the call into GuC in the disabling path and re-use that.

Note that by using the disable() path instead of the stop() one there
are two additional changes in SW side for the stop path:

- interrupts are now disabled before disabling the CT, which is ok
  because we do not want interrupts with CT disabled;
- guc_get_mmio_msg() is called in the stop case as well, which is ok
  because if there are errors before the reset we do want to record
  them.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 14 ++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  5 -----
 drivers/gpu/drm/i915/gt/uc/intel_uc.c     | 18 ++----------------
 3 files changed, 10 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 5fb7f957edf9..f74ba4750a94 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -241,12 +241,14 @@ static void ctch_disable(struct intel_guc *guc,
 
 	ctch->enabled = false;
 
-	guc_action_deregister_ct_buffer(guc,
-					ctch->owner,
-					INTEL_GUC_CT_BUFFER_TYPE_SEND);
-	guc_action_deregister_ct_buffer(guc,
-					ctch->owner,
-					INTEL_GUC_CT_BUFFER_TYPE_RECV);
+	if (intel_guc_is_running(guc)) {
+		guc_action_deregister_ct_buffer(guc,
+						ctch->owner,
+						INTEL_GUC_CT_BUFFER_TYPE_SEND);
+		guc_action_deregister_ct_buffer(guc,
+						ctch->owner,
+						INTEL_GUC_CT_BUFFER_TYPE_RECV);
+	}
 }
 
 static u32 ctch_get_next_fence(struct intel_guc_ct_channel *ctch)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 7c24d83f5c24..77c80d6cc25d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -81,11 +81,6 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct);
 int intel_guc_ct_enable(struct intel_guc_ct *ct);
 void intel_guc_ct_disable(struct intel_guc_ct *ct);
 
-static inline void intel_guc_ct_stop(struct intel_guc_ct *ct)
-{
-	ct->host_channel.enabled = false;
-}
-
 int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
 		      u32 *response_buf, u32 response_buf_size);
 void intel_guc_to_host_event_handler_ct(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index f42952403c0b..6e17e449e0a8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -224,7 +224,7 @@ static int guc_enable_communication(struct intel_guc *guc)
 	return 0;
 }
 
-static void __guc_stop_communication(struct intel_guc *guc)
+static void guc_disable_communication(struct intel_guc *guc)
 {
 	/*
 	 * Events generated during or after CT disable are logged by guc in
@@ -237,20 +237,6 @@ static void __guc_stop_communication(struct intel_guc *guc)
 
 	guc->send = intel_guc_send_nop;
 	guc->handler = intel_guc_to_host_event_handler_nop;
-}
-
-static void guc_stop_communication(struct intel_guc *guc)
-{
-	intel_guc_ct_stop(&guc->ct);
-
-	__guc_stop_communication(guc);
-
-	DRM_INFO("GuC communication stopped\n");
-}
-
-static void guc_disable_communication(struct intel_guc *guc)
-{
-	__guc_stop_communication(guc);
 
 	intel_guc_ct_disable(&guc->ct);
 
@@ -556,7 +542,7 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
 	if (!intel_guc_is_running(guc))
 		return;
 
-	guc_stop_communication(guc);
+	guc_disable_communication(guc);
 	__uc_sanitize(uc);
 }
 
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
