Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0E2383D41
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 21:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8930B6EA64;
	Mon, 17 May 2021 19:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 290236EA62;
 Mon, 17 May 2021 19:26:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16894A0BCB;
 Mon, 17 May 2021 19:26:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Mon, 17 May 2021 19:26:30 -0000
Message-ID: <162127959005.27270.11311089294421254662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210516185937.5644-1-tzimmermann@suse.de>
In-Reply-To: <20210516185937.5644-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Remove_some_includes_of_drm=5Flegacy=2Eh?=
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
Content-Type: multipart/mixed; boundary="===============1315790407=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1315790407==
Content-Type: multipart/alternative;
 boundary="===============3947988041729633652=="

--===============3947988041729633652==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Remove some includes of drm_legacy.h
URL   : https://patchwork.freedesktop.org/series/90214/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10090_full -> Patchwork_20135_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20135_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20135_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20135_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk9/igt@gem_mmap_gtt@medium-copy-xy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk8/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a:
    - shard-apl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane@plane-position-covered@pipe-a-planes}:
    - shard-apl:          [PASS][4] -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@kms_plane@plane-position-covered@pipe-a-planes.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@kms_plane@plane-position-covered@pipe-a-planes.html

  
Known issues
------------

  Here are the changes found in Patchwork_20135_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-purge-cache:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][6] ([i915#3457]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@api_intel_bb@blit-noreloc-purge-cache.html

  * igt@api_intel_bb@intel-bb-blit-y:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#3471])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk7/igt@api_intel_bb@intel-bb-blit-y.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk9/igt@api_intel_bb@intel-bb-blit-y.html

  * igt@feature_discovery@display-3x:
    - shard-iclb:         NOTRUN -> [SKIP][9] ([i915#1839])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb5/igt@feature_discovery@display-3x.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][10] ([i915#3002])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@gem_create@create-massive.html

  * igt@gem_ctx_freq@sysfs:
    - shard-apl:          NOTRUN -> [FAIL][11] ([i915#3457]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@gem_ctx_freq@sysfs.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1099]) +6 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842] / [i915#3457]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2842] / [i915#3457])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842] / [i915#3457]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fence@submit-chain:
    - shard-glk:          NOTRUN -> [FAIL][19] ([i915#3457]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk2/igt@gem_exec_fence@submit-chain.html

  * igt@gem_exec_fence@syncobj-timeline-wait:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#3457]) +5 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl7/igt@gem_exec_fence@syncobj-timeline-wait.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@gem_exec_fence@syncobj-timeline-wait.html

  * igt@gem_exec_params@no-vebox:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +24 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][23] ([i915#2389] / [i915#3457]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@preempt-hang@vecs0:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#3457]) +26 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk8/igt@gem_exec_schedule@preempt-hang@vecs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk1/igt@gem_exec_schedule@preempt-hang@vecs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#307]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl5/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][28] -> [INCOMPLETE][29] ([i915#3468]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#3468])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([i915#3468])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][34] ([i915#3468])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#3468]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-tglb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][37] ([i915#3468]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@gem_mmap_gtt@fault-concurrent-x.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][38] ([i915#3468] / [i915#3485])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-apl:          NOTRUN -> [INCOMPLETE][39] ([i915#3468]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#768])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-skl:          NOTRUN -> [INCOMPLETE][41] ([i915#3468])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][42] ([i915#3468])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          NOTRUN -> [DMESG-WARN][43] ([i915#180])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_spin_batch@engines@vcs0:
    - shard-apl:          NOTRUN -> [FAIL][44] ([i915#2898] / [i915#3457]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@gem_spin_batch@engines@vcs0.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][45] ([i915#3002])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-apl:          NOTRUN -> [FAIL][46] ([i915#3324])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@gem_userptr_blits@set-cache-level.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][47] -> [DMESG-WARN][48] ([i915#1436] / [i915#716]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl7/igt@gen9_exec_parse@allowed-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][49] ([i915#3296])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#2856])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_hangman@error-state-capture@rcs0:
    - shard-skl:          NOTRUN -> [DMESG-WARN][51] ([i915#3457]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@i915_hangman@error-state-capture@rcs0.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][52] ([i915#3457]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@i915_hangman@error-state-capture@rcs0.html

  * igt@i915_module_load@reload:
    - shard-snb:          NOTRUN -> [DMESG-WARN][53] ([i915#3457]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb2/igt@i915_module_load@reload.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][54] ([i915#2684])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-apl:          NOTRUN -> [DMESG-WARN][55] ([i915#3475])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109293] / [fdo#109506])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_sseu@full-enable:
    - shard-apl:          NOTRUN -> [DMESG-WARN][57] ([i915#3457]) +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][58] ([i915#2782])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl2/igt@i915_suspend@forcewake.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +226 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2705])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-b-bad-aux-stride:
    - shard-snb:          NOTRUN -> [SKIP][63] ([fdo#109271]) +304 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb5/igt@kms_ccs@pipe-b-bad-aux-stride.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@kms_chamelium@dp-frame-dump.html
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][66] -> [DMESG-WARN][67] ([i915#1982])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_color@pipe-b-ctm-0-75.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-snb:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#3116])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][74] ([i915#1319]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          NOTRUN -> [FAIL][75] ([i915#3457]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-glk:          [PASS][76] -> [FAIL][77] ([i915#3444] / [i915#3457]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-apl:          NOTRUN -> [FAIL][78] ([i915#3444] / [i915#3457]) +7 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-iclb:         [PASS][79] -> [FAIL][80] ([i915#3457]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-apl:          [PASS][81] -> [FAIL][82] ([i915#3444] / [i915#3457]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-tglb:         [PASS][83] -> [FAIL][84] ([i915#2124] / [i915#3457]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][85] ([i915#3444] / [i915#3457]) +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#3444] / [i915#3457]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
    - shard-kbl:          [PASS][88] -> [FAIL][89] ([i915#3444] / [i915#3457]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - shard-glk:          NOTRUN -> [FAIL][90] ([i915#3444] / [i915#3457]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-random:
    - shard-iclb:         NOTRUN -> [FAIL][91] ([i915#3457]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-kbl:          NOTRUN -> [FAIL][92] ([i915#3444] / [i915#3457]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-snb:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3457]) +42 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb2/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
    - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3457]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3457]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3457]) +37 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109278] / [i915#3457]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3457]) +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:
    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#70]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([i915#2346] / [i915#3457])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][104] -> [INCOMPLETE][105] ([i915#155] / [i915#180] / [i915#636])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109274])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][107] -> [DMESG-WARN][108] ([i915#180]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][109] -> [FAIL][110] ([i915#2122]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#2642])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#2672])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-b:
    - shard-glk:          [PASS][113] -> [FAIL][114] ([i915#3468]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-b.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-b.html

  * igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-b:
    - shard-glk:          [PASS][115] -> [FAIL][116] ([i915#3484])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-b.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-b.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109280]) +7 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
    - shard-glk:          NOTRUN -> [SKIP][118] ([fdo#109271]) +20 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][119] ([i915#1188])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#533]) +3 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][121] ([fdo#108145] / [i915#265]) +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][123] ([i915#265])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][124] -> [FAIL][125] ([fdo#108145] / [i915#265])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
    - shard-glk:          [PASS][126] -> [FAIL][127] ([fdo#108145] / [i915#265])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk8/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-apl:          NOTRUN -> [FAIL][128] ([i915#2657] / [i915#3457])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - shard-snb:          NOTRUN -> [FAIL][129] ([i915#2657]) +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - shard-glk:          [PASS][130] -> [FAIL][131] ([i915#2657]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - shard-snb:          NOTRUN -> [FAIL][132] ([i915#2657] / [i915#3457]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-64.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-apl:          [PASS][133] -> [FAIL][134] ([i915#2657] / [i915#

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/index.html

--===============3947988041729633652==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm: Remove some includes of drm_legacy.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90214/">https://patchwork.freedesktop.org/series/90214/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10090_full -&gt; Patchwork_20135_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20135_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20135_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20135_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk9/igt@gem_mmap_gtt@medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk8/igt@gem_mmap_gtt@medium-copy-xy.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane@plane-position-covered@pipe-a-planes}:<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@kms_plane@plane-position-covered@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@kms_plane@plane-position-covered@pipe-a-planes.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20135_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@api_intel_bb@blit-noreloc-purge-cache.html">DMESG-FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@intel-bb-blit-y:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk7/igt@api_intel_bb@intel-bb-blit-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk9/igt@api_intel_bb@intel-bb-blit-y.html">FAIL</a> ([i915#3471])</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb5/igt@feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@gem_ctx_freq@sysfs.html">FAIL</a> ([i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit-chain:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk2/igt@gem_exec_fence@submit-chain.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-wait:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl7/igt@gem_exec_fence@syncobj-timeline-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@gem_exec_fence@syncobj-timeline-wait.html">FAIL</a> ([i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109271]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-hang@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk8/igt@gem_exec_schedule@preempt-hang@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk1/igt@gem_exec_schedule@preempt-hang@vecs0.html">FAIL</a> ([i915#3457]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl5/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-tglb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468] / [i915#3485])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@engines@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@gem_spin_batch@engines@vcs0.html">FAIL</a> ([i915#2898] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl7/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@rcs0:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@i915_hangman@error-state-capture@rcs0.html">DMESG-WARN</a> ([i915#3457]) +3 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@i915_hangman@error-state-capture@rcs0.html">DMESG-WARN</a> ([i915#3457]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb2/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#3475])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@i915_pm_sseu@full-enable.html">DMESG-WARN</a> ([i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl1/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#109271]) +226 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb5/igt@kms_ccs@pipe-b-bad-aux-stride.html">SKIP</a> ([fdo#109271]) +304 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@kms_chamelium@dp-frame-dump.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_chamelium@dp-frame-dump.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_color_chamelium@pipe-c-ctm-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_color_chamelium@pipe-d-gamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-random:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">FAIL</a> ([i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-256x85-random.html">FAIL</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb2/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html">SKIP</a> ([fdo#109278] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html">FAIL</a> ([i915#70]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_cursor_legacy@pipe-d-single-move.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-b:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-b.html">FAIL</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-b:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-b.html">FAIL</a> ([i915#3484])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl10/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk8/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-256:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-apl1/igt@kms_plane_cursor@pipe-a-overlay-size-256.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb6/igt@kms_plane_cursor@pipe-a-primary-size-128.html">FAIL</a> ([i915#2657]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-128:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-glk3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">FAIL</a> ([i915#2657]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-64:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-apl:          [PASS][133] -&gt; [FAIL][134] ([i915#2657] / [i915#</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3947988041729633652==--

--===============1315790407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1315790407==--
