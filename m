Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAF2118F6E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 19:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72526E908;
	Tue, 10 Dec 2019 18:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAFC46E908
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 18:01:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19530692-1500050 
 for multiple; Tue, 10 Dec 2019 18:01:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 18:01:11 +0000
Message-Id: <20191210180111.3958558-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Disable manual rc6 for
 Braswell/Baytrail
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

The initial investigated showed that while the PCU on Braswell/Baytrail
controlled RC6 itself. setting the software RC6 request made no
difference. Further testing reveals though that it causes a delay in the
PCU on enabling RC6.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/763
Fixes: 730eaeb52426 ("drm/i915/gt: Manual rc6 entry upon parking")
Testcase: igt/perf/rc6-disable
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 4dc82196b285..8ec2b7725141 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -612,6 +612,9 @@ void intel_rc6_park(struct intel_rc6 *rc6)
 		return;
 	}
 
+	if (!(rc6->ctl_enable & GEN6_RC_CTL_RC6_ENABLE))
+		return;
+
 	/* Turn off the HW timers and go directly to rc6 */
 	set(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
 	set(uncore, GEN6_RC_STATE, 0x4 << RC_SW_TARGET_STATE_SHIFT);
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
