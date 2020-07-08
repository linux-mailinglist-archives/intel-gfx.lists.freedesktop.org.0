Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1913B218A70
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 16:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6191F6E297;
	Wed,  8 Jul 2020 14:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 873A16E21C;
 Wed,  8 Jul 2020 14:53:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80F5CA363D;
 Wed,  8 Jul 2020 14:53:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 08 Jul 2020 14:53:48 -0000
Message-ID: <159422002850.3837.3654759090879551802@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dma-fence_annotations=2C_round_3_=28rev4=29?=
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

Series: dma-fence annotations, round 3 (rev4)
URL   : https://patchwork.freedesktop.org/series/79212/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
633d2f5ee456 dma-fence: basic lockdep annotations
-:23: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e91498589746 ("locking/lockdep/selftests: Add mixed read-write ABBA tests")'
#23: 
  commit e91498589746065e3ae95d9a00b068e525eec34f

-:97: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e966eaeeb623 ("locking/lockdep: Remove the cross-release locking checks")'
#97: 
	commit e966eaeeb623f09975ef362c2866fae6f86844f9

-:103: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#103: 
	    This code (CONFIG_LOCKDEP_CROSSRELEASE=y and CONFIG_LOCKDEP_COMPLETIONS=y),

-:303: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#303: FILE: drivers/dma-buf/dma-fence.c:228:
+	if (in_atomic())

-:341: CHECK:LINE_SPACING: Please don't use multiple blank lines
#341: FILE: drivers/dma-buf/dma-fence.c:266:
+
+

-:390: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#390: FILE: include/linux/dma-fence.h:368:
+}
+static inline void dma_fence_end_signalling(bool cookie) {}

-:396: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 3 errors, 2 warnings, 2 checks, 217 lines checked
da3d6f1684b1 dma-fence: prime lockdep annotations
-:31: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 23b68395c7c7 ("mm/mmu_notifiers: add a lockdep map for invalidate_range_start/end")'
#31: 
commit 23b68395c7c78a764e8963fc15a7cfd318bf187f

-:193: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 91 lines checked
243aa816da5b dma-buf.rst: Document why idenfinite fences are a bad idea
-:149: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 105 lines checked
7370ac9d9804 drm/vkms: Annotate vblank timer
-:59: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
02ba87b23736 drm/vblank: Annotate with dma-fence signalling section
-:71: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
4f101a23805c drm/amdgpu: add dma-fence annotations to atomic commit path
-:52: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
3385e7391e3d drm/komdea: Annotate dma-fence critical section in commit path
-:47: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
ddc4ff34e5cd drm/malidp: Annotate dma-fence critical section in commit path
-:38: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
324a0d205f55 drm/atmel: Use drm_atomic_helper_commit
-:213: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 170 lines checked
5ee21a1c8241 drm/imx: Annotate dma-fence critical section in commit path
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 21a01abbe32a ("drm/atomic: Fix freeing connector/plane state too early by tracking commits, v3.")'
#14: 
commit 21a01abbe32a3cbeb903378a24e504bfd9fe0648

-:50: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 14 lines checked
de27ae218fde drm/omapdrm: Annotate dma-fence critical section in commit path
-:54: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
92d70000efa9 drm/rcar-du: Annotate dma-fence critical section in commit path
-:34: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
bb577d2f1fe5 drm/tegra: Annotate dma-fence critical section in commit path
-:34: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
210b307a72de drm/tidss: Annotate dma-fence critical section in commit path
-:41: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
23f8fbc6d2c3 drm/tilcdc: Use standard drm_atomic_helper_commit
-:143: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
53e56008bec6 drm/atomic-helper: Add dma-fence annotations
-:119: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
b9b516836545 drm/scheduler: use dma-fence annotations in main thread
-:53: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
eabbd8e2991d drm/amdgpu: use dma-fence annotations in cs_submit()
-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
638685715960 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
-:82: WARNING:ALLOC_ARRAY_ARGS: kmalloc_array uses number as first arg, sizeof is generally wrong
#82: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c:211:
+	fences = kmalloc_array(sizeof(void *), id_mgr->num_ids, GFP_ATOMIC);

-:98: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 24 lines checked
fcd17dbe5bd0 drm/amdgpu: DC also loves to allocate stuff where it shouldn't
-:70: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#70: FILE: drivers/gpu/drm/amd/display/dc/core/dc.c:1479:
+	 * atomic_commit_tail. */

-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 27 lines checked
ba811ca16a82 drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
-:39: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#39: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6956:
+#if 0

-:55: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 23 lines checked
d719490f44aa drm/scheduler: use dma-fence annotations in tdr work
-:28: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#28: 
Hence split out as a seperate patch.

-:114: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 20 lines checked
63ba1f44b57a drm/amdgpu: use dma-fence annotations for gpu reset code
7356174d08f1 Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
-:145: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
ae3b151a12e8 drm/amdgpu: gpu recovery does full modesets
-:186: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
