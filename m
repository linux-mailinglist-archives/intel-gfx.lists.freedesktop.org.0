Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C373C651A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2C989DE5;
	Mon, 12 Jul 2021 20:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CF6C89DE5;
 Mon, 12 Jul 2021 20:47:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36C2AA8836;
 Mon, 12 Jul 2021 20:47:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 12 Jul 2021 20:47:13 -0000
Message-ID: <162612283320.23770.9368213279606452327@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/sched_dependency_tracking_and_dma-resv_fixes_=28rev3=29?=
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

Series: drm/sched dependency tracking and dma-resv fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/92333/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa00bbda8116 drm/sched: Split drm_sched_job_init
-:210: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#210: FILE: drivers/gpu/drm/scheduler/sched_fence.c:173:
+	unsigned seq;

-:306: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#306: FILE: drivers/gpu/drm/scheduler/sched_main.c:623:
+	BUG_ON(!entity);

-:375: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#375: FILE: include/drm/gpu_scheduler.h:391:
+struct drm_sched_fence *drm_sched_fence_alloc(

-:383: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 1 checks, 240 lines checked
cd01cdfb93e7 drm/sched: Barriers are needed for entity->last_scheduled
-:86: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
1117822b2255 drm/sched: Add dependency tracking
-:193: CHECK:LINE_SPACING: Please don't use multiple blank lines
#193: FILE: drivers/gpu/drm/scheduler/sched_main.c:728:
+
+

-:268: WARNING:TYPO_SPELLING: 'ommitted' may be misspelled - perhaps 'omitted'?
#268: FILE: include/drm/gpu_scheduler.h:243:
+	 * drm_sched_job_await_implicit() this can be ommitted and left as NULL.
 	                                              ^^^^^^^^

-:282: CHECK:LINE_SPACING: Please don't use multiple blank lines
#282: FILE: include/drm/gpu_scheduler.h:376:
+
+

-:285: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 2 checks, 227 lines checked
8a6181903dc0 drm/sched: drop entity parameter from drm_sched_push_job
-:203: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 102 lines checked
a1900803cd8b drm/sched: improve docs around drm_sched_entity
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 620e762f9a98 ("drm/scheduler: move entity handling into separate file")'
#14: 
  move here: 620e762f9a98 ("drm/scheduler: move entity handling into

-:396: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 346 lines checked
029320ff7db6 drm/panfrost: use scheduler dependency tracking
-:209: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 157 lines checked
c7f6cb0870bb drm/lima: use scheduler dependency tracking
-:114: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 73 lines checked
b021a09fdfd1 drm/v3d: Move drm_sched_job_init to v3d_job_init
-:356: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 302 lines checked
ec9e93816f9b drm/v3d: Use scheduler dependency handling
-:202: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 161 lines checked
f2e5d8c0db05 drm/etnaviv: Use scheduler dependency handling
-:13: WARNING:REPEATED_WORD: Possible repeated word: 'to'
#13: 
I wanted to to in the previous round (and did, for all other drivers).

-:119: WARNING:LINE_SPACING: Missing a blank line after declarations
#119: FILE: drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c:551:
+		struct dma_fence *in_fence = sync_file_get_fence(args->fence_fd);
+		if (!in_fence) {

-:293: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 0 checks, 241 lines checked
10bbe7e47ff2 drm/gem: Delete gem array fencing helpers
-:141: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
a29b9a4e9a6f drm/sched: Don't store self-dependencies
-:19: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#19: 
drivers wont miss it.
        ^^^^

-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 13 lines checked
bf91d1bed9e0 drm/sched: Check locking in drm_sched_job_await_implicit
-:33: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
cacd99895adb drm/msm: Don't break exclusive fence ordering
-:43: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
62518f586849 drm/etnaviv: Don't break exclusive fence ordering
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
https://lore.kernel.org/dri-devel/20210610210925.642582-7-jason@jlekstrand.net/

-:57: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 23 lines checked
d071ad427447 drm/i915: delete exclude argument from i915_sw_fence_await_reservation
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d07f0e59b2c7 ("drm/i915: Move GEM activity tracking into a common struct reservation_object")'
#12: 
commit d07f0e59b2c762584478920cd2d11fba2980a94a

-:113: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 63 lines checked
e51083333682 drm/i915: Don't break exclusive fence ordering
-:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#23: 
https://lore.kernel.org/dri-devel/20210610210925.642582-7-jason@jlekstrand.net/

-:56: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 18 lines checked
d021158c3459 dma-resv: Give the docs a do-over
-:290: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 216 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
