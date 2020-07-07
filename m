Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D9217AE1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 00:10:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE206E53E;
	Tue,  7 Jul 2020 22:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCDF06E53E;
 Tue,  7 Jul 2020 22:10:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA92CA47EB;
 Tue,  7 Jul 2020 22:10:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 07 Jul 2020 22:10:44 -0000
Message-ID: <159415984482.7662.12185948616992129919@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dma-fence_annotations=2C_round_3_=28rev2=29?=
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

Series: dma-fence annotations, round 3 (rev2)
URL   : https://patchwork.freedesktop.org/series/79212/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2ef2cbad3c3f dma-fence: basic lockdep annotations
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
161956239d13 dma-fence: prime lockdep annotations
-:31: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 23b68395c7c7 ("mm/mmu_notifiers: add a lockdep map for invalidate_range_start/end")'
#31: 
commit 23b68395c7c78a764e8963fc15a7cfd318bf187f

-:193: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 91 lines checked
8b75e6b6b1b6 dma-buf.rst: Document why idenfinite fences are a bad idea
-:149: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 105 lines checked
5fad761a1004 drm/vkms: Annotate vblank timer
-:59: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
92b268014731 drm/vblank: Annotate with dma-fence signalling section
-:71: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
cf8a240564b5 drm/amdgpu: add dma-fence annotations to atomic commit path
-:52: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
7a522c30b416 drm/komdea: Annotate dma-fence critical section in commit path
-:46: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
c378cbda4b96 drm/malidp: Annotate dma-fence critical section in commit path
-:38: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
4507fb407ce9 drm/atmel: Use drm_atomic_helper_commit
-:213: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 170 lines checked
bbe90243440b drm/imx: Annotate dma-fence critical section in commit path
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 21a01abbe32a ("drm/atomic: Fix freeing connector/plane state too early by tracking commits, v3.")'
#14: 
commit 21a01abbe32a3cbeb903378a24e504bfd9fe0648

-:50: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 1 errors, 1 warnings, 0 checks, 14 lines checked
8d9019996f33 drm/omapdrm: Annotate dma-fence critical section in commit path
-:54: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
e54ea8ce539b drm/rcar-du: Annotate dma-fence critical section in commit path
-:34: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
b6a053a9563c drm/tegra: Annotate dma-fence critical section in commit path
-:34: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
c4c8e32708f2 drm/tidss: Annotate dma-fence critical section in commit path
-:40: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
ba94cdf77d4f drm/tilcdc: Use standard drm_atomic_helper_commit
-:86: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
0876bc0f382e drm/atomic-helper: Add dma-fence annotations
-:119: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 76 lines checked
83b7d99246e2 drm/scheduler: use dma-fence annotations in main thread
-:53: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 21 lines checked
afd8c38efb29 drm/amdgpu: use dma-fence annotations in cs_submit()
-:65: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
63a34d06f7e5 drm/amdgpu: s/GFP_KERNEL/GFP_ATOMIC in scheduler code
-:82: WARNING:ALLOC_ARRAY_ARGS: kmalloc_array uses number as first arg, sizeof is generally wrong
#82: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c:211:
+	fences = kmalloc_array(sizeof(void *), id_mgr->num_ids, GFP_ATOMIC);

-:98: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 24 lines checked
7e0e6f853f13 drm/amdgpu: DC also loves to allocate stuff where it shouldn't
-:70: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#70: FILE: drivers/gpu/drm/amd/display/dc/core/dc.c:1479:
+	 * atomic_commit_tail. */

-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 27 lines checked
88e3e9bd57ba drm/amdgpu/dc: Stop dma_resv_lock inversion in commit_tail
-:39: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#39: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:6956:
+#if 0

-:55: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 23 lines checked
cd15b035c867 drm/scheduler: use dma-fence annotations in tdr work
-:28: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#28: 
Hence split out as a seperate patch.

-:114: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 2 warnings, 0 checks, 20 lines checked
039eded76b9f drm/amdgpu: use dma-fence annotations for gpu reset code
feca0e2960fc Revert "drm/amdgpu: add fbdev suspend/resume on gpu reset"
-:145: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
7b01a65d5d5a drm/amdgpu: gpu recovery does full modesets
-:186: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
