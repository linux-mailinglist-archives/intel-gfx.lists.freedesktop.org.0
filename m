Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 246912BA6B0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 10:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED826E8A9;
	Fri, 20 Nov 2020 09:56:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377106E8AA
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 09:56:50 +0000 (UTC)
IronPort-SDR: wIpsop/mNgV0LGYzIds6FG5usK1bMZ+r+d9FbknSg8BZi9M4WEyBEbn/vdgXnvUex3UCaItPeN
 5+Z4NFONQS+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="151295321"
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="151295321"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 01:56:49 -0800
IronPort-SDR: pCK9CP/KwzGJjTbcHm0fVw6Ey8I8x8Qgz7rZXnOty9A1LIofxYd458szDmeZB7Mk1jZAWjiT67
 3jGTlrEHon7g==
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="545387071"
Received: from shilatbx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.201.139])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 01:56:47 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 20 Nov 2020 09:56:36 +0000
Message-Id: <20201120095636.1987395-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
References: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Use correct lock for CT event
 handler
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

CT event handler is called under the gt->irq_lock from the interrupt
handling paths so make it the same from the init path. I don't think this
mismatch caused any functional issue but we need to wean the code of the
global i915->irq_lock.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 220626c3ad81..6a0452815c41 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -203,7 +203,8 @@ static void guc_disable_interrupts(struct intel_guc *guc)
 
 static int guc_enable_communication(struct intel_guc *guc)
 {
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct drm_i915_private *i915 = gt->i915;
 	int ret;
 
 	GEM_BUG_ON(guc_communication_enabled(guc));
@@ -223,9 +224,9 @@ static int guc_enable_communication(struct intel_guc *guc)
 	guc_enable_interrupts(guc);
 
 	/* check for CT messages received before we enabled interrupts */
-	spin_lock_irq(&i915->irq_lock);
+	spin_lock_irq(&gt->irq_lock);
 	intel_guc_ct_event_handler(&guc->ct);
-	spin_unlock_irq(&i915->irq_lock);
+	spin_unlock_irq(&gt->irq_lock);
 
 	drm_dbg(&i915->drm, "GuC communication enabled\n");
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
