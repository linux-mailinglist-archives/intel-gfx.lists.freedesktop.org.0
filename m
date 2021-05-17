Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FE638393A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 18:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7016E220;
	Mon, 17 May 2021 16:11:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E87596E1FB;
 Mon, 17 May 2021 16:11:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE864A47EA;
 Mon, 17 May 2021 16:11:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Emil Velikov" <emil.l.velikov@gmail.com>
Date: Mon, 17 May 2021 16:11:08 -0000
Message-ID: <162126786887.27270.2510410856052895311@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
In-Reply-To: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_only_disable_default_vga_device?=
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
Content-Type: multipart/mixed; boundary="===============0639342761=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0639342761==
Content-Type: multipart/alternative;
 boundary="===============5104239388766296833=="

--===============5104239388766296833==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: only disable default vga device
URL   : https://patchwork.freedesktop.org/series/90213/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10090_full -> Patchwork_20134_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20134_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20134_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20134_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html

  
#### Warnings ####

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-glk:          [INCOMPLETE][2] ([i915#3468]) -> [INCOMPLETE][3] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@gem_mmap_gtt@fault-concurrent-y.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk8/igt@gem_mmap_gtt@fault-concurrent-y.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane@plane-position-covered@pipe-b-planes}:
    - shard-apl:          [PASS][4] -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@kms_plane@plane-position-covered@pipe-b-planes.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl8/igt@kms_plane@plane-position-covered@pipe-b-planes.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 3 (NEW):
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][6] +3 similar issues
   [6]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_10090_full and Patchwork_20134_full:

### New Piglit tests (4) ###

  * spec@arb_shader_image_load_store@max-size:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 7:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_20134_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-purge-cache-random:
    - shard-apl:          NOTRUN -> [DMESG-WARN][7] ([i915#3457]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@api_intel_bb@blit-noreloc-purge-cache-random.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][8] ([i915#3457])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@api_intel_bb@blit-noreloc-purge-cache-random.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][9] ([i915#3002])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#1099]) +6 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2410] / [i915#3457])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_persistence@saturated-hostile@vecs0:
    - shard-apl:          NOTRUN -> [FAIL][13] ([i915#3457]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl8/igt@gem_ctx_persistence@saturated-hostile@vecs0.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-apl:          NOTRUN -> [FAIL][14] ([i915#2896] / [i915#3457])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][15] ([i915#2846] / [i915#3457])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#2842] / [i915#3457])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2842] / [i915#3457]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][20] ([i915#2842] / [i915#3457])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#2842] / [i915#3457])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-apl:          [PASS][23] -> [INCOMPLETE][24] ([i915#3457])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@gem_exec_fair@basic-sync@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl8/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_exec_fence@keep-in-fence@vcs0:
    - shard-glk:          [PASS][25] -> [INCOMPLETE][26] ([i915#3457])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk6/igt@gem_exec_fence@keep-in-fence@vcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk2/igt@gem_exec_fence@keep-in-fence@vcs0.html

  * igt@gem_exec_fence@submit-chain:
    - shard-glk:          NOTRUN -> [FAIL][27] ([i915#3457])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk9/igt@gem_exec_fence@submit-chain.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][28] ([fdo#109271]) +325 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][29] ([i915#2389] / [i915#3457]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@preempt-hang@vecs0:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#3457]) +29 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk8/igt@gem_exec_schedule@preempt-hang@vecs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk6/igt@gem_exec_schedule@preempt-hang@vecs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#307])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][34] -> [INCOMPLETE][35] ([i915#3468]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#3468])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-kbl:          [PASS][38] -> [INCOMPLETE][39] ([i915#3468])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][40] ([i915#3468]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][41] ([i915#3468])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@gem_mmap_gtt@fault-concurrent-x.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][42] ([i915#3468] / [i915#3485])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#768])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
    - shard-apl:          NOTRUN -> [INCOMPLETE][44] ([i915#3468]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl7/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][45] ([i915#3468])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_spin_batch@spin-each:
    - shard-apl:          NOTRUN -> [FAIL][46] ([i915#2898] / [i915#3457])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl7/igt@gem_spin_batch@spin-each.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][47] ([i915#3002])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][48] ([i915#3318] / [i915#3457])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl3/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_wait@await@vecs0:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#3457]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl1/igt@gem_wait@await@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl7/igt@gem_wait@await@vecs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180] / [i915#3457])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109289])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][54] ([i915#3296])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#2856])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_hangman@engine-error@vcs1:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][56] ([i915#3457])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb2/igt@i915_hangman@engine-error@vcs1.html

  * igt@i915_hangman@error-state-capture@bcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][57] ([i915#3457]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@i915_hangman@error-state-capture@bcs0.html

  * igt@i915_module_load@reload:
    - shard-snb:          NOTRUN -> [DMESG-WARN][58] ([i915#3457]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#1904])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][60] ([i915#1804] / [i915#2684])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@cursor:
    - shard-glk:          [PASS][61] -> [DMESG-WARN][62] ([i915#3457])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk7/igt@i915_pm_rpm@cursor.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk4/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109293] / [fdo#109506])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_rps@reset:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][64] ([i915#3457]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][65] ([i915#2782])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl2/igt@i915_suspend@forcewake.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-iclb:         [PASS][68] -> [DMESG-FAIL][69] ([i915#1226])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2705])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk9/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_color@pipe-b-degamma:
    - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#71])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk8/igt@kms_color@pipe-b-degamma.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk3/igt@kms_color@pipe-b-degamma.html

  * igt@kms_color@pipe-d-degamma:
    - shard-tglb:         NOTRUN -> [FAIL][76] ([i915#1149])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_color@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-snb:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109284] / [fdo#111827])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#3116])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-apl:          [PASS][82] -> [FAIL][83] ([i915#3444] / [i915#3457])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          NOTRUN -> [FAIL][84] ([i915#3444] / [i915#3457]) +5 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          NOTRUN -> [FAIL][85] ([i915#3457]) +9 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#3444] / [i915#3457])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - shard-iclb:         NOTRUN -> [FAIL][88] ([i915#3457]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][89] ([i915#180] / [i915#3457])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-tglb:         [PASS][90] -> [FAIL][91] ([i915#2124] / [i915#3457]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-kbl:          [PASS][92] -> [FAIL][93] ([i915#3444] / [i915#3457])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#3359] / [i915#3457])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen:
    - shard-tglb:         NOTRUN -> [FAIL][95] ([i915#2124] / [i915#3457]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-kbl:          NOTRUN -> [FAIL][96] ([i915#3444] / [i915#3457]) +6 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-snb:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3457]) +45 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
    - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3457])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen:
    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#3444] / [i915#3457]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109278] / [i915#3457]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109279] / [i915#3359] / [i915#3457]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3457]) +33 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3457]) +8 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:
    - shard-glk:          [PASS][105] -> [FAIL][106] ([i915#70]) +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([i915#2346] / [i915#3457])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109278]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][110] -> [INCOMPLETE][111] ([i915#155] / [i915#180] / [i915#636])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109274])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][113] -> [INCOMPLETE][114] ([i915#146] / [i915#198])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#2672]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109280]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#111825]) +5 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271]) +52 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][119] ([fdo#109271]) +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:
    - shard-apl:          [PASS][120] -> [FAIL][121] ([i915#53])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([fdo#108145] / [i915#265])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][125] ([fdo#108145] / [i915#265]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - shard-glk:          [PASS][126] -> [FAIL][127] ([i915#2657]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk8/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
    - shard-snb:          NOTRUN -> [FAIL][128] ([i915#2657]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - shard-snb:          NOTRUN -> [FAIL][129] ([i915#2657] / [i915#3457]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb2/igt@kms_plane_cursor@pipe-b-primary-size-64.html
    - shard-glk:          [PASS][130] -> [FAIL][131] ([i915#2657] / [i915#3457])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk1/igt@kms_plane_cursor@pipe-b-primary-size-64.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/index.html

--===============5104239388766296833==
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
<tr><td><b>Series:</b></td><td>drm/i915: only disable default vga device</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90213/">https://patchwork.freedesktop.org/series/90213/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10090_full -&gt; Patchwork_20134_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20134_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20134_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20134_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_mmap_gtt@fault-concurrent-y:<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_mmap_gtt@fault-concurrent-y:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk8/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane@plane-position-covered@pipe-b-planes}:<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@kms_plane@plane-position-covered@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl8/igt@kms_plane@plane-position-covered@pipe-b-planes.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 3 (NEW):<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href="None">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10090_full and Patchwork_20134_full:</p>
<h3>New Piglit tests (4)</h3>
<ul>
<li>
<p>spec@arb_shader_image_load_store@max-size:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 7:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20134_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache-random:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@api_intel_bb@blit-noreloc-purge-cache-random.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@api_intel_bb@blit-noreloc-purge-cache-random.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile@vecs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl8/igt@gem_ctx_persistence@saturated-hostile@vecs0.html">FAIL</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#2896] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl8/igt@gem_exec_fair@basic-sync@rcs0.html">INCOMPLETE</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@keep-in-fence@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk6/igt@gem_exec_fence@keep-in-fence@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk2/igt@gem_exec_fence@keep-in-fence@vcs0.html">INCOMPLETE</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit-chain:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk9/igt@gem_exec_fence@submit-chain.html">FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([fdo#109271]) +325 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-hang@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk8/igt@gem_exec_schedule@preempt-hang@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk6/igt@gem_exec_schedule@preempt-hang@vecs0.html">FAIL</a> ([i915#3457]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468] / [i915#3485])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl7/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled.html">INCOMPLETE</a> ([i915#3468]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-each:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl7/igt@gem_spin_batch@spin-each.html">FAIL</a> ([i915#2898] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl3/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_wait@await@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl1/igt@gem_wait@await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl7/igt@gem_wait@await@vecs0.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@gen7_exec_parse@basic-allocation.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb2/igt@i915_hangman@engine-error@vcs1.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@bcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@i915_hangman@error-state-capture@bcs0.html">DMESG-WARN</a> ([i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#1904])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk7/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk4/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@i915_pm_rps@reset.html">DMESG-FAIL</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl3/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-0.html">DMESG-FAIL</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_chamelium@dp-audio-edid.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk9/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk8/igt@kms_color@pipe-b-degamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk3/igt@kms_color@pipe-b-degamma.html">FAIL</a> ([i915#71])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_color@pipe-d-degamma.html">FAIL</a> ([i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_color_chamelium@pipe-c-ctm-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_color_chamelium@pipe-d-gamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-random:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">FAIL</a> ([i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-FAIL</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html">SKIP</a> ([i915#3359] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk6/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html">SKIP</a> ([fdo#109278] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271] / [i915#3457]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html">FAIL</a> ([i915#70]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_cursor_legacy@pipe-d-single-move.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#111825]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html">FAIL</a> ([i915#53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-128:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-glk8/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">FAIL</a> ([i915#2657]) +1 similar issue</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">FAIL</a> ([i915#2657]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-64:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard-snb2/igt@kms_plane_cursor@pipe-b-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk1/igt@kms_plane_cursor@pipe-b-primary-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20134/shard">FAIL</a> ([i915#2657] / [i915#3457])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5104239388766296833==--

--===============0639342761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0639342761==--
