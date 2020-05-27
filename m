Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FC61E454C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 16:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00FB6E0BE;
	Wed, 27 May 2020 14:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD4426E0BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 14:11:09 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mo6WJ-1jFYx33Vox-00pcRT; Wed, 27 May 2020 16:05:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 27 May 2020 16:05:10 +0200
Message-Id: <20200527140526.1458215-3-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527140526.1458215-1-arnd@arndb.de>
References: <20200527140526.1458215-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Bs1kH9SiEUr82+i0D5b4IjNzyMWhRc9ReAI4hRbtaSg+wd4Y+kE
 gsHtJL0netn243C7nHQamvh/2VpFFj/mbWQZYBUlmk15Ur8+KyRpRLNWTSOpnSXrG6ACa8Y
 a50vkShJOWxV4ykm7XUMk0pidxZYJm1W5/Zw9bnILBSY8qbgoV8/N+o6gDRiA7eO91pvrsn
 zFA51RKJXl5UhRluoBa/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:c5DWn25j260=:KTuaEkXe9joHeC1qL4bnbv
 AAPf/MF/iOgYsstMfVx3Y39U9FXX3MwIL9DH3neqbbW2GzZABNkgyuA54qdq2/j15k6HxFIaM
 9HbUQDH2lI6hqadbA5fJHZWLj87/xW7us6+jelhJAHGB5ofO9MLj70aqt2pah+in+fC6H7XOj
 AfezqkVVSeBDzKcPGP/FBPudBw3EdzE44t2oMYQSH1yqvZXbovbgrL2UNID7UrNWrOx3kgz0/
 kl7xkF3MRkx4UpWusgs6pdpB8NdclqEWmSXam5MBnJ0hd+5q8JiDRS1F+8ma0lkQKchwcb0ZE
 pcBbOPd5hgrnOSsBi1xwvY4Ui4F5bJZaHLNq8yD08+0tbWxOkpPEuItlzz0Fp87CLwzM20Rcf
 UxSAYjmWO7x61VJVR+EHnEsa91f1LLvESd8um41t1e3b8Hr/V/xgvOYJbBgP3LJmR7AuqLz/G
 9Z8BSQQgClvnzU1hQH5MkZQSK/TKgUc4i4ZhFZSGDeaEqFSoYOYguTxNHJrAqkOMnngWuhV/j
 DlooDLaMYzAIChSaUN4JtAbON5Y3Y5s6IH8Wg6V0mg9TVMxEO1EMc0QMzXh90YXJDFL4BvXI+
 MK+i6kfCPt7SgGlKbCgiljzHseNp/DKIsoc2FVl2m0OD5ekQTuXbuHk0hd0viJlS78e7av5HJ
 JzLhIvFfEUO4Sq5bY3z3ROWcIhoQ+hFHM1oHGN+302OEtWCkFGFtPcaubndbZLFutVEGzg0dh
 rnrzxnxB1s2R4T/ff0fRDSCxnxErSlUs0ZR0fXvQdihwVVQUUH9qxrcG0B0b9bghC6qd9GzhG
 uMrja3O/m8aDaDLRaaxNXpoIGZWB1jR+T2J7oMXncsqJJ844Bc=
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/selftests: avoid bogus
 maybe-uninitialized warning
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
Cc: Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

gcc has a problem following values through IS_ERR/PTR_ERR macros,
leading to a false-positive warning in allmodconfig, with any
compiler version:

In file included from drivers/gpu/drm/i915/gt/intel_lrc.c:5892:
drivers/gpu/drm/i915/gt/selftest_lrc.c: In function 'create_gpr_client.isra.0':
drivers/gpu/drm/i915/gt/selftest_lrc.c:2902:23: error: 'rq' may be used uninitialized in this function [-Werror=maybe-uninitialized]

This one is hard to avoid without impairing readability or adding a
bugus NULL pointer.

Fixes: c92724de6db1 ("drm/i915/selftests: Try to detect rollback during batchbuffer preemption")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 824f99c4cc7c..933c3f5adf0a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -2908,23 +2908,25 @@ create_gpr_client(struct intel_engine_cs *engine,
 
 	vma = i915_vma_instance(global->obj, ce->vm, NULL);
 	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
+		rq = ERR_CAST(vma);
 		goto out_ce;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (err)
+	if (err) {
+		rq = ERR_PTR(err);
 		goto out_ce;
+	}
 
 	batch = create_gpr_user(engine, vma, offset);
 	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
+		rq = ERR_CAST(batch);
 		goto out_vma;
 	}
 
 	rq = intel_context_create_request(ce);
 	if (IS_ERR(rq)) {
-		err = PTR_ERR(rq);
+		rq = ERR_CAST(rq);
 		goto out_batch;
 	}
 
@@ -2946,17 +2948,20 @@ create_gpr_client(struct intel_engine_cs *engine,
 	i915_vma_unlock(batch);
 	i915_vma_unpin(batch);
 
-	if (!err)
+	if (!err) {
 		i915_request_get(rq);
-	i915_request_add(rq);
-
+		i915_request_add(rq);
+	} else {
+		i915_request_add(rq);
+		rq = ERR_PTR(err);
+	}
 out_batch:
 	i915_vma_put(batch);
 out_vma:
 	i915_vma_unpin(vma);
 out_ce:
 	intel_context_put(ce);
-	return err ? ERR_PTR(err) : rq;
+	return rq;
 }
 
 static int preempt_user(struct intel_engine_cs *engine,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
