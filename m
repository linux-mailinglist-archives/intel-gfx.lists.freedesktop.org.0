Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EBF1F7482
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 09:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE1E6E373;
	Fri, 12 Jun 2020 07:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 583FE6E133;
 Fri, 12 Jun 2020 07:18:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5219FA0009;
 Fri, 12 Jun 2020 07:18:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 12 Jun 2020 07:18:02 -0000
Message-ID: <159194628230.21335.5464407945511819969@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dma-fence_lockdep_annotations=2C_round_2_=28rev6=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: dma-fence lockdep annotations, round 2 (rev6)
URL   : https://patchwork.freedesktop.org/series/77986/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
59ff28b69eed mm: Track mmu notifiers in fs_reclaim_acquire/release
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 23b68395c7c7 ("mm/mmu_notifiers: add a lockdep map for invalidate_range_start/end")'
#12: 
recursions we do have lockdep annotations since 23b68395c7c7

-:41: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 66204f1d2d1b ("mm/mmu_notifiers: prime lockdep")'
#41: 
With this we can also remove the lockdep priming added in 66204f1d2d1b

-:124: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#124: FILE: mm/page_alloc.c:4167:
+
+	}

-:138: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 2 errors, 1 warnings, 1 checks, 67 lines checked
ceede5e08eb8 dma-buf: minor doc touch-ups
-:54: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
07c16f051d28 dma-fence: basic lockdep annotations
-:23: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e91498589746 ("locking/lockdep/selftests: Add mixed read-write ABBA tests")'
#23: 
  commit e91498589746065e3ae95d9a00b068e525eec34f

-:97: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e966eaeeb623 ("locking/lockdep: Remove the cross-release locking checks")'
#97: 
	commit e966eaeeb623f09975ef362c2866fae6f86844f9

-:103: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#103: 
	    This code (CONFIG_LOCKDEP_CROSSRELEASE=y and CONFIG_LOCKDEP_COMPLETIONS=y),

-:302: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#302: FILE: drivers/dma-buf/dma-fence.c:228:
+	if (in_atomic())

-:340: CHECK:LINE_SPACING: Please don't use multiple blank lines
#340: FILE: drivers/dma-buf/dma-fence.c:266:
+
+

-:389: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#389: FILE: include/linux/dma-fence.h:368:
+}
+static inline void dma_fence_end_signalling(bool cookie) {}

-:395: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 3 errors, 2 warnings, 2 checks, 217 lines checked
6442f8dad95b dma-fence: prime lockdep annotations
-:31: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 23b68395c7c7 ("mm/mmu_notifiers: add a lockdep map for invalidate_range_start/end")'
#31: 
commit 23b68395c7c78a764e8963fc15a7cfd318bf187f

-:180: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 86 lines checked
b874c76322b8 drm/vkms: Annotate vblank timer
-:59: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
9f0f8c8303fa drm/vblank: Annotate with dma-fence signalling section
-:71: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
d85809aae908 drm/atomic-helper: Add dma-fence annotations
-:119: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
b6778d197cf3 drm/amdgpu: add dma-fence annotations to atomic commit path
-:52: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
c4ab594ebf4a drm/scheduler: use dma-fence annotations in main thread
-:53: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
b4093fcdacd2 drm/amdgpu: use dma-fence annotations in cs_submit()
-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
d9ed9c09b946 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
-:82: WARNING:ALLOC_ARRAY_ARGS: kmalloc_array uses number as first arg, sizeof is generally wrong
#82: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c:211:
+	fences = kmalloc_array(sizeof(void *), id_mgr->num_ids, GFP_ATOMIC);

-:98: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 24 lines checked
45b663c70065 drm/amdgpu: DC also loves to allocate stuff where it shouldn't
-:70: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#70: FILE: drivers/gpu/drm/amd/display/dc/core/dc.c:1436:
+	 * atomic_commit_tail. */

-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 27 lines checked
7a2bb8a3d251 drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
-:39: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#39: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6914:
+#if 0

-:55: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 23 lines checked
36895e1c3363 drm/scheduler: use dma-fence annotations in tdr work
-:28: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#28: 
Hence split out as a seperate patch.

-:114: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 20 lines checked
e8d515333826 drm/amdgpu: use dma-fence annotations for gpu reset code
823a78e8bd4d Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
-:145: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
20094f452976 drm/amdgpu: gpu recovery does full modesets
-:186: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
6403c98f95cb drm/i915: Annotate dma_fence_work
-:53: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
