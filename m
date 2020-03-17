Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE1C1886FE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 15:12:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F9389E1A;
	Tue, 17 Mar 2020 14:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD78A89E1A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 14:12:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20590134-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 14:12:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Mar 2020 14:12:50 +0000
Message-Id: <20200317141250.20903-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Fix up documentation paths after file
 moving
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

Redirect references to i915_gem_fence_reg.c to gt/intel_ggtt_fencing.c

Fixes: dec9cf9ee8cb ("drm/i915/gt: Pull restoration of GGTT fences underneath the GT")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 Documentation/gpu/i915.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index f6d363b6756e..429b08aac797 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -391,19 +391,19 @@ Global GTT views
 GTT Fences and Swizzling
 ------------------------
 
-.. kernel-doc:: drivers/gpu/drm/i915/i915_gem_fence_reg.c
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
    :internal:
 
 Global GTT Fence Handling
 ~~~~~~~~~~~~~~~~~~~~~~~~~
 
-.. kernel-doc:: drivers/gpu/drm/i915/i915_gem_fence_reg.c
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
    :doc: fence register handling
 
 Hardware Tiling and Swizzling Details
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
-.. kernel-doc:: drivers/gpu/drm/i915/i915_gem_fence_reg.c
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
    :doc: tiling swizzling details
 
 Object Tiling IOCTLs
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
