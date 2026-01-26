Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKi8DpIfemlS2QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:39:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FAAA2F0A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:39:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB7D10E70B;
	Wed, 28 Jan 2026 14:39:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.b="VjvO9Upn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 304 seconds by postgrey-1.36 at gabe;
 Mon, 26 Jan 2026 15:32:30 UTC
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com
 [45.254.49.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090D910E22B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jan 2026 15:32:29 +0000 (UTC)
Received: from LAPTOP-N070L597.localdomain (unknown [58.215.202.202])
 by smtp.qiye.163.com (Hmail) with ESMTP id 3203f8b2c;
 Mon, 26 Jan 2026 23:27:22 +0800 (GMT+08:00)
From: Zilin Guan <zilin@seu.edu.cn>
To: jani.nikula@linux.intel.com
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tursulin@ursulin.net, airlied@gmail.com, simona@ffwll.ch,
 chris@chris-wilson.co.uk, lionel.g.landwerlin@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn,
 Zilin Guan <zilin@seu.edu.cn>
Subject: [PATCH] drm/i915/gem: Fix memory leak in i915_gem_do_execbuffer()
Date: Mon, 26 Jan 2026 15:27:18 +0000
Message-Id: <20260126152718.276013-1-zilin@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bfaeaacc103a1kunmbbba5180fa35
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTxlJVkxPSRhLGEIdGE1KHlYeHw5VEwETFhoSFy
 QUDg9ZV1kYEgtZQVlOQ1VJSk5VSUtJVUlLSVlXWRYaDxIVHRRZQVlPS0hVSktJSE5DQ1VKS0tVS1
 kG
DKIM-Signature: a=rsa-sha256;
 b=VjvO9UpnjEKAnCi4MyUbu63T9qyX6Nt5SxWZLvLwzZfFxsn11EHqJru50P62/3zLuTmhMPgHBXy3+qQgv9nmGvjKcRDih5CHcY9v0CrWtx7VGibbwkx0tiW9AdTHh4SKWif4VpwV62I3F1oNA7sKYBVw3D1slr8zWasKv64kdHs=;
 s=default; c=relaxed/relaxed; d=seu.edu.cn; v=1; 
 bh=gNpAAdRUMg/ZRAkntu9Cwk86cxeJUQGqQwcMGXeBiNk=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Approved-At: Wed, 28 Jan 2026 14:39:06 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[47];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[seu.edu.cn,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[seu.edu.cn:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:chris@chris-wilson.co.uk,m:lionel.g.landwerlin@intel.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:zilin@seu.edu.cn,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[zilin@seu.edu.cn,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,chris-wilson.co.uk,lists.freedesktop.org,vger.kernel.org,seu.edu.cn];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[seu.edu.cn:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zilin@seu.edu.cn,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,seu.edu.cn:email,seu.edu.cn:dkim,seu.edu.cn:mid]
X-Rspamd-Queue-Id: 62FAAA2F0A
X-Rspamd-Action: no action

In i915_gem_do_execbuffer(), add_fence_array() allocates and populates
eb.fences. Immediately after this, if both IN_FENCES flags are set, the
function returns -EINVAL directly without calling put_fence_array(),
resulting in a memory leak of the allocated fence array.

Fix this by jumping to err_ext in the error path, ensuring that
put_fence_array() is properly called to release the fence array.

Compile tested only. Issue found using a prototype static analysis tool
and code review.

Fixes: 13149e8bafc4 ("drm/i915: add syncobj timeline support")
Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d49e96f9be51..43f267f98ba0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3407,8 +3407,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 #define IN_FENCES (I915_EXEC_FENCE_IN | I915_EXEC_FENCE_SUBMIT)
 	if (args->flags & IN_FENCES) {
-		if ((args->flags & IN_FENCES) == IN_FENCES)
-			return -EINVAL;
+		if ((args->flags & IN_FENCES) == IN_FENCES) {
+			err = -EINVAL;
+			goto err_ext;
+		}
 
 		in_fence = sync_file_get_fence(lower_32_bits(args->rsvd2));
 		if (!in_fence) {
-- 
2.34.1

