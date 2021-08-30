Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB803FB5B0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1302589D02;
	Mon, 30 Aug 2021 12:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B2E89CF5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, stable@vger.kernel.org
Date: Mon, 30 Aug 2021 14:09:55 +0200
Message-Id: <20210830121006.2978297-9-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/19] drm/i915: Fix runtime pm handling in
 i915_gem_shrink
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We forgot to call intel_runtime_pm_put on error, fix it!

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Fixes: cf41a8f1dc1e ("drm/i915: Finally remove obj->mm.lock.")
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: <stable@vger.kernel.org> # v5.13+
---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index e382b7f2353b..5ab136ffdeb2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -118,7 +118,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 	intel_wakeref_t wakeref = 0;
 	unsigned long count = 0;
 	unsigned long scanned = 0;
-	int err;
+	int err = 0;
 
 	/* CHV + VTD workaround use stop_machine(); need to trylock vm->mutex */
 	bool trylock_vm = !ww && intel_vm_no_concurrent_access_wa(i915);
@@ -242,12 +242,15 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 		list_splice_tail(&still_in_list, phase->list);
 		spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 		if (err)
-			return err;
+			break;
 	}
 
 	if (shrink & I915_SHRINK_BOUND)
 		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
+	if (err)
+		return err;
+
 	if (nr_scanned)
 		*nr_scanned += scanned;
 	return count;
-- 
2.32.0

