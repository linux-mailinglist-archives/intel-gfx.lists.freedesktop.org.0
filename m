Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E5811C65D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 08:27:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9C86EC6B;
	Thu, 12 Dec 2019 07:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359586EC69
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 07:27:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19550037-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 07:27:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 07:27:37 +0000
Message-Id: <20191212072737.884335-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212072737.884335-1-chris@chris-wilson.co.uk>
References: <20191212072737.884335-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Only ignore rc6 parking for PCU
 on byt/bsw
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

An oversight in that we use rc6->ctl_enable to disable rc6 on gen9 and
so it does not simply indicate indirect control via a PCU. Switch the
rc6->ctl_enable check for a platform check.

Fixes: 972745fd5770 ("drm/i915/gt: Disable manual rc6 for Braswell/Baytrail")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c       | 3 ++-
 drivers/gpu/drm/i915/gt/intel_rc6_types.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 8ec2b7725141..9e303c29d6e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -576,6 +576,7 @@ void intel_rc6_enable(struct intel_rc6 *rc6)
 	else if (INTEL_GEN(i915) >= 6)
 		gen6_rc6_enable(rc6);
 
+	rc6->manual = rc6->ctl_enable & GEN6_RC_CTL_RC6_ENABLE;
 	if (NEEDS_RC6_CTX_CORRUPTION_WA(i915))
 		rc6->ctl_enable = 0;
 
@@ -612,7 +613,7 @@ void intel_rc6_park(struct intel_rc6 *rc6)
 		return;
 	}
 
-	if (!(rc6->ctl_enable & GEN6_RC_CTL_RC6_ENABLE))
+	if (!rc6->manual)
 		return;
 
 	/* Turn off the HW timers and go directly to rc6 */
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
index 60decae1abc9..bfbb623f7a4f 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
@@ -24,6 +24,7 @@ struct intel_rc6 {
 
 	bool supported : 1;
 	bool enabled : 1;
+	bool manual : 1;
 	bool wakeref : 1;
 };
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
