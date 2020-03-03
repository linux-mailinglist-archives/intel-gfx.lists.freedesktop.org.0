Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3EA177243
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 10:20:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0EC6EA4E;
	Tue,  3 Mar 2020 09:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC8F36EA4D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 09:20:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20423564-1500050 
 for multiple; Tue, 03 Mar 2020 09:20:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 09:20:08 +0000
Message-Id: <20200303092011.1151535-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Fix doclinks
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

Update locations for

./drivers/gpu/drm/i915/i915_vma.h:1: warning: 'Virtual Memory Address' not found
./drivers/gpu/drm/i915/i915_gem_gtt.c:1: warning: 'Global GTT views' not found

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 Documentation/gpu/i915.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index cc74e24ca3b5..f6d363b6756e 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -332,7 +332,7 @@ This process is dubbed relocation.
 GEM BO Management Implementation Details
 ----------------------------------------
 
-.. kernel-doc:: drivers/gpu/drm/i915/i915_vma.h
+.. kernel-doc:: drivers/gpu/drm/i915/i915_vma_types.h
    :doc: Virtual Memory Address
 
 Buffer Object Eviction
@@ -382,7 +382,7 @@ Logical Rings, Logical Ring Contexts and Execlists
 Global GTT views
 ----------------
 
-.. kernel-doc:: drivers/gpu/drm/i915/i915_gem_gtt.c
+.. kernel-doc:: drivers/gpu/drm/i915/i915_vma_types.h
    :doc: Global GTT views
 
 .. kernel-doc:: drivers/gpu/drm/i915/i915_gem_gtt.c
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
