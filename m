Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2563E1624
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 15:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4526E4F4;
	Thu,  5 Aug 2021 13:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B0026E4F4;
 Thu,  5 Aug 2021 13:58:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 309FBA47EB;
 Thu,  5 Aug 2021 13:58:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Aug 2021 13:58:24 -0000
Message-ID: <162817190419.30840.6836726561950280028@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/sched_dependency_handling_and_implicit_sync_fixes?=
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

Series: drm/sched dependency handling and implicit sync fixes
URL   : https://patchwork.freedesktop.org/series/93415/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fbee9b54db37 drm/sched: Split drm_sched_job_init
-:237: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#237: FILE: drivers/gpu/drm/scheduler/sched_fence.c:173:
+	unsigned seq;

-:333: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#333: FILE: drivers/gpu/drm/scheduler/sched_main.c:623:
+	BUG_ON(!entity);

-:402: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#402: FILE: include/drm/gpu_scheduler.h:391:
+struct drm_sched_fence *drm_sched_fence_alloc(

-:410: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 1 checks, 249 lines checked
e8aa4762329c drm/msm: Fix drm/sched point of no return rules
-:74: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 39 lines checked
590f3db49271 drm/sched: Barriers are needed for entity->last_scheduled
-:88: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
bcde98968570 drm/sched: Add dependency tracking
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
4578cd7fba03 drm/sched: drop entity parameter from drm_sched_push_job
-:227: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 110 lines checked
3ed6103f784e drm/sched: improve docs around drm_sched_entity
-:17: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 620e762f9a98 ("drm/scheduler: move entity handling into separate file")'
#17: 
  move here: 620e762f9a98 ("drm/scheduler: move entity handling into

-:413: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 346 lines checked
42d75ea77670 drm/panfrost: use scheduler dependency tracking
-:214: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 158 lines checked
1074a5fc4e39 drm/lima: use scheduler dependency tracking
-:118: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
e94f03075601 drm/v3d: Move drm_sched_job_init to v3d_job_init
-:344: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 288 lines checked
43177403c5b4 drm/v3d: Use scheduler dependency handling
-:207: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 162 lines checked
94e8ea6bdac4 drm/etnaviv: Use scheduler dependency handling
-:13: WARNING:REPEATED_WORD: Possible repeated word: 'to'
#13: 
I wanted to to in the previous round (and did, for all other drivers).

-:122: WARNING:LINE_SPACING: Missing a blank line after declarations
#122: FILE: drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c:552:
+		struct dma_fence *in_fence = sync_file_get_fence(args->fence_fd);
+		if (!in_fence) {

-:297: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 3 warnings, 0 checks, 243 lines checked
914d59644238 drm/msm: Use scheduler dependency handling
-:132: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 90 lines checked
c4596cb48171 drm/gem: Delete gem array fencing helpers
-:141: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
a0a15e60e8a4 drm/sched: Don't store self-dependencies
-:19: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#19: 
drivers wont miss it.
        ^^^^

-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 13 lines checked
7768c5a01737 drm/sched: Check locking in drm_sched_job_await_implicit
-:33: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
0691454484ff drm/msm: Don't break exclusive fence ordering
-:43: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
8d1e08eee56b drm/etnaviv: Don't break exclusive fence ordering
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
https://lore.kernel.org/dri-devel/20210610210925.642582-7-jason@jlekstrand.net/

-:58: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 24 lines checked
9a678298fbf9 drm/i915: delete exclude argument from i915_sw_fence_await_reservation
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d07f0e59b2c7 ("drm/i915: Move GEM activity tracking into a common struct reservation_object")'
#12: 
commit d07f0e59b2c762584478920cd2d11fba2980a94a

-:100: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 55 lines checked
c023ae95f5f1 drm/i915: Don't break exclusive fence ordering
-:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#23: 
https://lore.kernel.org/dri-devel/20210610210925.642582-7-jason@jlekstrand.net/

-:56: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 18 lines checked
2836aa5b3f16 dma-resv: Give the docs a do-over
-:290: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 216 lines checked


