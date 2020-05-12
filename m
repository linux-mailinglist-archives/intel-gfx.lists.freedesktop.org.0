Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 057AC1CF1A6
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 11:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553986E909;
	Tue, 12 May 2020 09:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89EBF6E909;
 Tue, 12 May 2020 09:31:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8387EA011B;
 Tue, 12 May 2020 09:31:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 12 May 2020 09:31:59 -0000
Message-ID: <158927591953.18140.7466433806442730621@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dma-fence_lockdep_annotations?=
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

Series: dma-fence lockdep annotations
URL   : https://patchwork.freedesktop.org/series/77178/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
761b03bd55bc dma-fence: add might_sleep annotation to _wait()
-:39: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
cbdd4bcec7e6 dma-fence: basic lockdep annotations
-:23: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e91498589746 ("locking/lockdep/selftests: Add mixed read-write ABBA tests")'
#23: 
  commit e91498589746065e3ae95d9a00b068e525eec34f

-:120: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#120: FILE: drivers/dma-buf/dma-fence.c:125:
+	if (in_atomic())

-:153: CHECK:LINE_SPACING: Please don't use multiple blank lines
#153: FILE: drivers/dma-buf/dma-fence.c:158:
+
+

-:202: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#202: FILE: include/linux/dma-fence.h:368:
+}
+static inline void dma_fence_end_signalling(bool cookie) {}

-:208: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 2 errors, 1 warnings, 2 checks, 97 lines checked
30c15f819d26 dma-fence: prime lockdep annotations
-:31: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 23b68395c7c7 ("mm/mmu_notifiers: add a lockdep map for invalidate_range_start/end")'
#31: 
commit 23b68395c7c78a764e8963fc15a7cfd318bf187f

-:74: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 14 lines checked
2bad1b068255 drm/vkms: Annotate vblank timer
-:59: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
fabebff847de drm/vblank: Annotate with dma-fence signalling section
-:71: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
dc212ca24327 drm/atomic-helper: Add dma-fence annotations
-:119: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
277acf9f1d01 drm/amdgpu: add dma-fence annotations to atomic commit path
-:52: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
3b8d20ef37ac drm/scheduler: use dma-fence annotations in main thread
-:53: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
dc5507ddac48 drm/amdgpu: use dma-fence annotations in cs_submit()
-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
6b777e9d4248 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
-:82: WARNING:ALLOC_ARRAY_ARGS: kmalloc_array uses number as first arg, sizeof is generally wrong
#82: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c:211:
+	fences = kmalloc_array(sizeof(void *), id_mgr->num_ids, GFP_ATOMIC);

-:98: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 24 lines checked
04c66458629c drm/amdgpu: DC also loves to allocate stuff where it shouldn't
-:70: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#70: FILE: drivers/gpu/drm/amd/display/dc/core/dc.c:1420:
+	 * atomic_commit_tail. */

-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 27 lines checked
786ff5f97ade drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
-:39: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#39: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6706:
+#if 0

-:55: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 23 lines checked
7679cc148b5a drm/scheduler: use dma-fence annotations in tdr work
-:28: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#28: 
Hence split out as a seperate patch.

-:114: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 20 lines checked
e09083945d14 drm/amdgpu: use dma-fence annotations for gpu reset code
c02a4f686bf5 Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
-:145: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
a13323043876 drm/amdgpu: gpu recovery does full modesets
-:186: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
1ef18223426e drm/i915: Annotate dma_fence_work
-:53: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
