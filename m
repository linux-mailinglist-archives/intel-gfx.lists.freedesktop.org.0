Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2CE175D96
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:53:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F726E2B2;
	Mon,  2 Mar 2020 14:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F686E2B2
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:53:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20414336-1500050 
 for multiple; Mon, 02 Mar 2020 14:52:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 14:52:54 +0000
Message-Id: <20200302145254.520447-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix doclinks
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
index e539c42a3e78..becb648bd958 100644
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
