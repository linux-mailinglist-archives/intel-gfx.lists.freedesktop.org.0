Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBAC20F83F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C4586E32F;
	Tue, 30 Jun 2020 15:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC4A6E32F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 15:27:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21664606-1500050 
 for multiple; Tue, 30 Jun 2020 16:27:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 16:27:24 +0100
Message-Id: <20200630152724.3734-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Skip stale object handle for debugfs
 per-file-stats
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
Cc: stable@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As we close a handle GEM object, we update the drm_file's idr with an
error pointer to indicate the in-progress closure, and finally set it to
NULL. If we read the idr directly, we may then see an invalid object
pointer, and in our debugfs per_file_stats() we therefore need to
protect against the entry being invalid.

[ 1016.651637] RIP: 0010:per_file_stats+0xe/0x16e
[ 1016.651646] Code: d2 41 0f b6 8e 69 8c 00 00 48 89 df 48 c7 c6 7b 74 8c be 31 c0 e8 0c 89 cf ff eb d2 0f 1f 44 00 00 55 48 89 e5 41
57 41 56 53 <8b> 06 85 c0 0f 84 4d 01 00 00 49 89 d6 48 89 f3 3d ff ff ff 7f 73
[ 1016.651651] RSP: 0018:ffffad3a01337ba0 EFLAGS: 00010293
[ 1016.651656] RAX: 0000000000000018 RBX: ffff96fe040d65e0 RCX: 0000000000000002
[ 1016.651660] RDX: ffffad3a01337c50 RSI: 0000000000000000 RDI: 00000000000001e8
[ 1016.651663] RBP: ffffad3a01337bb8 R08: 0000000000000000 R09: 00000000000001c0
[ 1016.651667] R10: 0000000000000000 R11: ffffffffbdbe5fce R12: 0000000000000000
[ 1016.651671] R13: ffffffffbdbe5fce R14: ffffad3a01337c50 R15: 0000000000000001
[ 1016.651676] FS:  00007a597e2d7480(0000) GS:ffff96ff3bb00000(0000) knlGS:0000000000000000
[ 1016.651680] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 1016.651683] CR2: 0000000000000000 CR3: 0000000171fc2001 CR4: 00000000003606e0
[ 1016.651687] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 1016.651690] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 1016.651693] Call Trace:
[ 1016.651693] Call Trace:
[ 1016.651703]  idr_for_each+0x8a/0xe8
[ 1016.651711]  i915_gem_object_info+0x2a3/0x3eb
[ 1016.651720]  seq_read+0x162/0x3ca
[ 1016.651727]  full_proxy_read+0x5b/0x8d
[ 1016.651733]  __vfs_read+0x45/0x1bb
[ 1016.651741]  vfs_read+0xc9/0x15e
[ 1016.651746]  ksys_read+0x7e/0xde
[ 1016.651752]  do_syscall_64+0x54/0x68
[ 1016.651758]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Reported-by: Guenter Roeck <linux@roeck-us.net>
Fixes: a8c15954d64a ("drm/i915: Protect debugfs per_file_stats with RCU lock")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: stable@vger.kernel.org
---
 drivers/gpu/drm/i915/i915_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8594a8ef08ce..9ca94a435b75 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -230,7 +230,7 @@ static int per_file_stats(int id, void *ptr, void *data)
 	struct file_stats *stats = data;
 	struct i915_vma *vma;
 
-	if (!kref_get_unless_zero(&obj->base.refcount))
+	if (IS_ERR_OR_NULL(obj) || !kref_get_unless_zero(&obj->base.refcount))
 		return 0;
 
 	stats->count++;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
