Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1967A461747
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 14:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F70D6EE2A;
	Mon, 29 Nov 2021 13:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F0786EB43;
 Mon, 29 Nov 2021 13:57:19 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Nov 2021 14:47:28 +0100
Message-Id: <20211129134735.628712-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
References: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/16] drm/i915: Ensure i915_vma tests do not
 get -ENOSPC with the locking changes.
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we require locking to evict, multiple vmas from the same object
might not be evicted. This is expected and required, because execbuf will
move to short-term pinning by using the lock only. This will cause these
tests to fail, because they create a ton of vma's for the same object.

Unbind manually to prevent spurious -ENOSPC in those mock tests.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_vma.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 1f10fe36619b..5c5809dfe9b2 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -691,7 +691,11 @@ static int igt_vma_rotate_remap(void *arg)
 					}
 
 					i915_vma_unpin(vma);
-
+					err = i915_vma_unbind(vma);
+					if (err) {
+						pr_err("Unbinding returned %i\n", err);
+						goto out_object;
+					}
 					cond_resched();
 				}
 			}
@@ -848,6 +852,11 @@ static int igt_vma_partial(void *arg)
 
 				i915_vma_unpin(vma);
 				nvma++;
+				err = i915_vma_unbind(vma);
+				if (err) {
+					pr_err("Unbinding returned %i\n", err);
+					goto out_object;
+				}
 
 				cond_resched();
 			}
@@ -882,6 +891,12 @@ static int igt_vma_partial(void *arg)
 
 		i915_vma_unpin(vma);
 
+		err = i915_vma_unbind(vma);
+		if (err) {
+			pr_err("Unbinding returned %i\n", err);
+			goto out_object;
+		}
+
 		count = 0;
 		list_for_each_entry(vma, &obj->vma.list, obj_link)
 			count++;
-- 
2.34.0

