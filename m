Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C96F51AD8EC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 10:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF726E3D0;
	Fri, 17 Apr 2020 08:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B986E3D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 08:49:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20929836-1500050 
 for multiple; Fri, 17 Apr 2020 09:49:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 09:49:29 +0100
Message-Id: <20200417084930.644-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417084930.644-1-chris@chris-wilson.co.uk>
References: <20200417084930.644-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Relinquish forcewake immediately
 after manual grouping
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Our forcewake utilisation is split into categories: automatic and
manual. Around bare register reads, we look up the right forcewake
domain and automatically acquire and release [upon a timer] the
forcewake domain. For other access, where we know we require the
forcewake across a group of register reads, we manually acquire the
forcewake domain and release it at the end. Again, this currently arms
the domain timer for a later release.

However, looking at some energy utilisation profiles, we have tried to
avoid using forcewake [and rely on the natural wake up to post register
updates] due to that even keep the fw active for a brief period
contributes to a significant power draw [i.e. when the gpu is sleeping
with rc6 at high clocks]. But as it turns out, not posting the writes
immediately also has unintended consequences, such as not reducing the
clocks and so conserving power while busy.

As a compromise, let us only arm the domain timer for automatic
forcewake usage around bare register access, but immediately release the
forcewake when manually acquired by intel_uncore_forcewake_get/_put.

The corollary to this is that we may instead have to take forcewake more
often, and so incur a latency penalty in doing so. For Sandybridge this
was significant, and even on the latest machines, taking forcewake at
interrupt frequency is a huge impact. [So we don't do that anymore!
Hopefully, this will spare us from still needing the mitigation of the
timer for steady state execution.]

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index fa86b7ab2d99..199cccac8020 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -709,7 +709,7 @@ static void __intel_uncore_forcewake_put(struct intel_uncore *uncore,
 			continue;
 		}
 
-		fw_domain_arm_timer(domain);
+		uncore->funcs.force_wake_put(uncore, domain->mask);
 	}
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
