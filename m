Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEED14CA9F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 13:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F15C16E33F;
	Wed, 29 Jan 2020 12:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C8B36E33E;
 Wed, 29 Jan 2020 12:16:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20046933-1500050 
 for multiple; Wed, 29 Jan 2020 12:16:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 12:16:02 +0000
Message-Id: <20200129121602.1106978-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: Fix is_physical_engine
 advancement
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update the local var e after iterating to the next engine when searching
for the next non-virtual engine. Otherwise, it is prone to loop forever.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 lib/i915/gem_engine_topology.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index 43a99e0ff..9daa03df4 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -180,10 +180,8 @@ intel_get_current_physical_engine(struct intel_engine_data *ed)
 {
 	struct intel_execution_engine2 *e;
 
-	for (e = intel_get_current_engine(ed);
-	     e && e->is_virtual;
-	     intel_next_engine(ed))
-		;
+	while ((e = intel_get_current_engine(ed)) && e->is_virtual)
+	     intel_next_engine(ed);
 
 	return e;
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
