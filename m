Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AD629033C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44266EB8B;
	Fri, 16 Oct 2020 10:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600F96EAC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:41 +0200
Message-Id: <20201016104444.1492028-59-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 58/61] drm/i915/selftests: Prepare cs engine
 tests for obj->mm.lock removal
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

Same as other tests, use pin_map_unlocked.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index 729c3c7b11e2..853d1f02131a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -72,7 +72,7 @@ static struct i915_vma *create_empty_batch(struct intel_context *ce)
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	cs = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	cs = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
 		goto err_put;
@@ -208,7 +208,7 @@ static struct i915_vma *create_nop_batch(struct intel_context *ce)
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	cs = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	cs = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
 		goto err_put;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
