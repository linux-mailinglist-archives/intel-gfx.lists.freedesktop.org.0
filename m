Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 911AB14ED39
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 14:26:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879176E99F;
	Fri, 31 Jan 2020 13:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E676E99F
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 13:26:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 05:26:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="377346987"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2020 05:26:27 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00VDQQ7d007091; Fri, 31 Jan 2020 13:26:26 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 13:26:10 +0000
Message-Id: <20200131132610.111392-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Introduce guc_is_ready
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

We already have guc_is_running function, but it only reflects
firmware status, while to fully use GuC we need to know if we've
already established communication with it.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h | 5 +++++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c  | 6 +++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 910d49590068..4e65c95a970b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -153,6 +153,11 @@ static inline bool intel_guc_is_running(struct intel_guc *guc)
 	return intel_uc_fw_is_running(&guc->fw);
 }
 
+static inline bool intel_guc_is_ready(struct intel_guc *guc)
+{
+	return intel_guc_is_running(guc) && intel_guc_ct_enabled(&guc->ct);
+}
+
 static inline int intel_guc_sanitize(struct intel_guc *guc)
 {
 	intel_uc_fw_sanitize(&guc->fw);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 64934a876a50..7837760b8d6e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -527,7 +527,7 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_ready(guc))
 		return;
 
 	guc_disable_communication(guc);
@@ -539,7 +539,7 @@ void intel_uc_runtime_suspend(struct intel_uc *uc)
 	struct intel_guc *guc = &uc->guc;
 	int err;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_ready(guc))
 		return;
 
 	err = intel_guc_suspend(guc);
@@ -554,7 +554,7 @@ void intel_uc_suspend(struct intel_uc *uc)
 	struct intel_guc *guc = &uc->guc;
 	intel_wakeref_t wakeref;
 
-	if (!intel_guc_is_running(guc))
+	if (!intel_guc_is_ready(guc))
 		return;
 
 	with_intel_runtime_pm(uc_to_gt(uc)->uncore->rpm, wakeref)
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
