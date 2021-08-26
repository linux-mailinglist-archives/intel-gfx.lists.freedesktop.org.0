Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD693F88A0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 15:18:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD2F6E84B;
	Thu, 26 Aug 2021 13:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 897CB6E84B;
 Thu, 26 Aug 2021 13:17:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 810CAA66C8;
 Thu, 26 Aug 2021 13:17:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 13:17:59 -0000
Message-ID: <162998387949.15047.14044621300439168619@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/sched_dependency_handling_and_implicit_sync_fixes_=28re?=
 =?utf-8?b?djUp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/sched dependency handling and implicit sync fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/93415/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5cdf79bc4298 drm/sched: Split drm_sched_job_init
-:240: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#240: FILE: drivers/gpu/drm/scheduler/sched_fence.c:173:
+	unsigned seq;

-:336: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#336: FILE: drivers/gpu/drm/scheduler/sched_main.c:623:
+	BUG_ON(!entity);

-:405: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#405: FILE: include/drm/gpu_scheduler.h:391:
+struct drm_sched_fence *drm_sched_fence_alloc(

-:413: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 1 checks, 248 lines checked
b5c679582c27 drm/msm: Improve drm/sched point of no return rules
-:81: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
b4bf87348863 drm/sched: Barriers are needed for entity->last_scheduled
-:88: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
4bfa4c96b80c drm/sched: Add dependency tracking
-:195: CHECK:LINE_SPACING: Please don't use multiple blank lines
#195: FILE: drivers/gpu/drm/scheduler/sched_main.c:729:
+
+

-:271: WARNING:TYPO_SPELLING: 'ommitted' may be misspelled - perhaps 'omitted'?
#271: FILE: include/drm/gpu_scheduler.h:244:
+	 * drm_sched_job_add_implicit_dependencies() this can be ommitted and
 	                                                         ^^^^^^^^

-:286: CHECK:LINE_SPACING: Please don't use multiple blank lines
#286: FILE: include/drm/gpu_scheduler.h:378:
+
+

-:289: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 2 checks, 230 lines checked
fcd4fea4cae3 drm/sched: drop entity parameter from drm_sched_push_job
-:228: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 110 lines checked
ea09670e5838 drm/sched: improve docs around drm_sched_entity
-:17: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 620e762f9a98 ("drm/scheduler: move entity handling into separate file")'
#17: 
  move here: 620e762f9a98 ("drm/scheduler: move entity handling into

-:413: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 346 lines checked
e31bfc2e79ff drm/panfrost: use scheduler dependency tracking
-:215: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 158 lines checked
c8f3842d2afd drm/lima: use scheduler dependency tracking
-:119: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
563fd199edf5 drm/v3d: Move drm_sched_job_init to v3d_job_init
-:344: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 288 lines checked
79d00ee75ee5 drm/v3d: Use scheduler dependency handling
-:207: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 162 lines checked
164bbe5be15b drm/etnaviv: Use scheduler dependency handling
-:13: WARNING:REPEATED_WORD: Possible repeated word: 'to'
#13: 
I wanted to to in the previous round (and did, for all other drivers).

-:122: WARNING:LINE_SPACING: Missing a blank line after declarations
#122: FILE: drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c:552:
+		struct dma_fence *in_fence = sync_file_get_fence(args->fence_fd);
+		if (!in_fence) {

-:297: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 0 checks, 243 lines checked
2e8edd04f89c drm/msm: Use scheduler dependency handling
-:132: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 90 lines checked
9de878031434 drm/gem: Delete gem array fencing helpers
-:141: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
3d4cc3335c0e drm/sched: Don't store self-dependencies
-:19: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#19: 
drivers wont miss it.
        ^^^^

-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 13 lines checked
89463913c4ad drm/sched: Check locking in drm_sched_job_await_implicit
-:33: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
9578a0679e6b drm/msm: Don't break exclusive fence ordering
-:43: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
335ff7e05f44 drm/etnaviv: Don't break exclusive fence ordering
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
https://lore.kernel.org/dri-devel/20210610210925.642582-7-jason@jlekstrand.net/

-:58: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 24 lines checked
6f297c479190 drm/i915: delete exclude argument from i915_sw_fence_await_reservation
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d07f0e59b2c7 ("drm/i915: Move GEM activity tracking into a common struct reservation_object")'
#12: 
commit d07f0e59b2c762584478920cd2d11fba2980a94a

-:100: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 55 lines checked
4f9da5ea4882 drm/i915: Don't break exclusive fence ordering
-:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#23: 
https://lore.kernel.org/dri-devel/20210610210925.642582-7-jason@jlekstrand.net/

-:56: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 18 lines checked
d83acd41677b dma-resv: Give the docs a do-over
-:290: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 216 lines checked


