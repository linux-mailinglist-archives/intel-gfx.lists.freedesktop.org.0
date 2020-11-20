Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5C82BA6AF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 10:56:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C866E8A8;
	Fri, 20 Nov 2020 09:56:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2217E6E8A8
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 09:56:48 +0000 (UTC)
IronPort-SDR: T9Zc8BCB3eKzZc8DwMAmiqUo0MIuQZ6WMRuYHULG6J0Wtp+O61zoGAON72HJGT6Xql1/hRRUVg
 6fvtAcnJ5sSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="151295315"
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="151295315"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 01:56:47 -0800
IronPort-SDR: yL0fgH2jIAEUN68R3dlVmQ11RT4hz7TkT3WwGA8k5e3+qn7BrEoIH1I8Z+JeW4POlarA9dI32T
 nuXwVmwZ/qWg==
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="545387066"
Received: from shilatbx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.201.139])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 01:56:45 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 20 Nov 2020 09:56:35 +0000
Message-Id: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Use correct lock for
 accessing guc->mmio_msg
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Guc->mmio_msg is set under the guc->irq_lock in guc_get_mmio_msg so it
should be consumed under the same lock from guc_handle_mmio_msg.

I am not sure if the overall flow here makes complete sense but at least
the correct lock is now used.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 4e6070e95fe9..220626c3ad81 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -175,19 +175,15 @@ static void guc_get_mmio_msg(struct intel_guc *guc)
 
 static void guc_handle_mmio_msg(struct intel_guc *guc)
 {
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
-
 	/* we need communication to be enabled to reply to GuC */
 	GEM_BUG_ON(!guc_communication_enabled(guc));
 
-	if (!guc->mmio_msg)
-		return;
-
-	spin_lock_irq(&i915->irq_lock);
-	intel_guc_to_host_process_recv_msg(guc, &guc->mmio_msg, 1);
-	spin_unlock_irq(&i915->irq_lock);
-
-	guc->mmio_msg = 0;
+	spin_lock_irq(&guc->irq_lock);
+	if (guc->mmio_msg) {
+		intel_guc_to_host_process_recv_msg(guc, &guc->mmio_msg, 1);
+		guc->mmio_msg = 0;
+	}
+	spin_unlock_irq(&guc->irq_lock);
 }
 
 static void guc_reset_interrupts(struct intel_guc *guc)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
