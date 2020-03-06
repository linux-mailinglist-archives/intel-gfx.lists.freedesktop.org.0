Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3442217BCC3
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 13:31:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D3C6ECF8;
	Fri,  6 Mar 2020 12:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 085F26E3FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 12:31:01 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 13:30:46 +0100
Message-Id: <20200306123046.2797797-17-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
References: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/17] drm/i915: Move i915_vma_lock in the live
 selftest to avoid lock inversion
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index f89d9c42f1fa..2a6052d609d9 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -848,6 +848,8 @@ static int live_all_engines(void *arg)
 		goto out_free;
 	}
 
+	i915_vma_lock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		request[idx] = intel_engine_create_kernel_request(engine);
@@ -865,11 +867,9 @@ static int live_all_engines(void *arg)
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(request[idx], batch->obj, 0);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, request[idx], 0);
-		i915_vma_unlock(batch);
 		GEM_BUG_ON(err);
 
 		i915_request_get(request[idx]);
@@ -877,6 +877,8 @@ static int live_all_engines(void *arg)
 		idx++;
 	}
 
+	i915_vma_unlock(batch);
+
 	idx = 0;
 	for_each_uabi_engine(engine, i915) {
 		if (i915_request_completed(request[idx])) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
