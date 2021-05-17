Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392E6386BAC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 22:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6138A6E3DA;
	Mon, 17 May 2021 20:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68BB36E39B;
 Mon, 17 May 2021 20:48:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61837A47DF;
 Mon, 17 May 2021 20:48:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 17 May 2021 20:48:57 -0000
Message-ID: <162128453737.27269.12348504286714009876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210517084640.18862-1-matthew.auld@intel.com>
In-Reply-To: <20210517084640.18862-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Pin_the_L-shape_quirked_object_as_unshrinkable_=28?=
 =?utf-8?q?rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============2118229087=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2118229087==
Content-Type: multipart/alternative;
 boundary="===============2824756729955659113=="

--===============2824756729955659113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Pin the L-shape quirked object as unshrinkable (rev3)
URL   : https://patchwork.freedesktop.org/series/90065/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10090_full -> Patchwork_20136_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20136_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20136_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20136_full:

### IGT changes ###

#### Possible regressions ####

  * igt@api_intel_bb@destroy-bb:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk1/igt@api_intel_bb@destroy-bb.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk1/igt@api_intel_bb@destroy-bb.html

  * igt@kms_atomic_interruptible@legacy-setmode:
    - shard-glk:          NOTRUN -> [TIMEOUT][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk1/igt@kms_atomic_interruptible@legacy-setmode.html

  
#### Warnings ####

  * igt@gem_ctx_freq@sysfs:
    - shard-glk:          [FAIL][4] ([i915#3457]) -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk1/igt@gem_ctx_freq@sysfs.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk1/igt@gem_ctx_freq@sysfs.html

  
Known issues
------------

  Here are the changes found in Patchwork_20136_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-keep-cache-random:
    - shard-apl:          NOTRUN -> [DMESG-WARN][6] ([i915#3457]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@api_intel_bb@blit-noreloc-keep-cache-random.html

  * igt@api_intel_bb@blit-noreloc-purge-cache-random:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][7] ([i915#3457])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@api_intel_bb@blit-noreloc-purge-cache-random.html

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#1888] / [i915#3160])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk9/igt@gem_create@create-clear.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk3/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][10] ([i915#3002])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#1099]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2896] / [i915#3457])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_ctx_persistence@smoketest.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb7/igt@gem_ctx_persistence@smoketest.html
    - shard-apl:          NOTRUN -> [FAIL][14] ([i915#3457])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842] / [i915#3457]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][17] ([i915#2842] / [i915#3457])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][18] -> [FAIL][19] ([i915#2842] / [i915#3457])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][20] ([i915#2842] / [i915#3457])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@keep-in-fence@rcs0:
    - shard-glk:          [PASS][21] -> [INCOMPLETE][22] ([i915#3457])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk6/igt@gem_exec_fence@keep-in-fence@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk9/igt@gem_exec_fence@keep-in-fence@rcs0.html

  * igt@gem_exec_fence@submit-chain:
    - shard-glk:          NOTRUN -> [FAIL][23] ([i915#3457]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk8/igt@gem_exec_fence@submit-chain.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][24] ([fdo#109271]) +270 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109283])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-tglb:         [PASS][26] -> [TIMEOUT][27] ([i915#3183] / [i915#3457])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb6/igt@gem_exec_reloc@basic-parallel.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][28] ([i915#2389] / [i915#3457]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][29] ([i915#2389] / [i915#3457]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-snb:          NOTRUN -> [INCOMPLETE][30] ([i915#2055])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#307])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][33] -> [INCOMPLETE][34] ([i915#3468]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][35] ([i915#3468]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#3468]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-apl:          NOTRUN -> [INCOMPLETE][38] ([i915#3468]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
    - shard-iclb:         [PASS][39] -> [INCOMPLETE][40] ([i915#3468])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][41] ([i915#3468]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#3160])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@gem_mmap_offset@clear.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl10/igt@gem_mmap_offset@clear.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-apl:          [PASS][44] -> [FAIL][45] ([i915#3476])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl7/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#768])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-glk:          NOTRUN -> [INCOMPLETE][47] ([i915#3468])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_wait@await@bcs0:
    - shard-apl:          [PASS][48] -> [FAIL][49] ([i915#3457]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl1/igt@gem_wait@await@bcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl3/igt@gem_wait@await@bcs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180] / [i915#3457])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109289])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][53] ([i915#3296])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#2856])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_hangman@error-state-capture@rcs0:
    - shard-glk:          NOTRUN -> [DMESG-WARN][55] ([i915#3457]) +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@i915_hangman@error-state-capture@rcs0.html

  * igt@i915_hangman@error-state-capture@vcs0:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][56] ([i915#3457]) +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@i915_hangman@error-state-capture@vcs0.html

  * igt@i915_module_load@reload:
    - shard-snb:          NOTRUN -> [DMESG-WARN][57] ([i915#3457]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb7/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#1904])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][59] ([i915#2684])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-skl:          [PASS][60] -> [DMESG-WARN][61] ([i915#3475])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl1/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-tglb:         [PASS][62] -> [DMESG-WARN][63] ([i915#2411])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb8/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-iclb:         [PASS][64] -> [DMESG-WARN][65] ([i915#3457])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb4/igt@i915_pm_rpm@gem-mmap-type@wc.html
    - shard-tglb:         [PASS][66] -> [DMESG-WARN][67] ([i915#2411] / [i915#3457])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb8/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109293] / [fdo#109506])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_rps@waitboost:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][69] ([i915#3457])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@i915_pm_rps@waitboost.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#110723])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2705])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109278] / [i915#1149])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color@pipe-d-degamma:
    - shard-tglb:         NOTRUN -> [FAIL][76] ([i915#1149])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_color@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#3116])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#3444] / [i915#3457]) +4 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
    - shard-snb:          NOTRUN -> [FAIL][84] ([i915#3457]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-tglb:         NOTRUN -> [FAIL][85] ([i915#2124] / [i915#3457])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][86] ([i915#3457])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#3444] / [i915#3457])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
    - shard-kbl:          [PASS][89] -> [FAIL][90] ([i915#3444] / [i915#3457])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-iclb:         NOTRUN -> [FAIL][91] ([i915#3457]) +5 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3359] / [i915#3457])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - shard-glk:          NOTRUN -> [FAIL][93] ([i915#3444] / [i915#3457]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-apl:          NOTRUN -> [FAIL][94] ([i915#3444] / [i915#3457]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-kbl:          NOTRUN -> [FAIL][95] ([i915#3444] / [i915#3457]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-snb:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3457]) +33 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb7/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:
    - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3457]) +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109278] / [fdo#109279] / [i915#3457])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3457]) +18 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109278] / [i915#3457]) +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-offscreen:
    - shard-tglb:         [PASS][101] -> [FAIL][102] ([i915#2124] / [i915#3457]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-offscreen.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109279] / [i915#3359] / [i915#3457]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3457]) +4 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:
    - shard-glk:          [PASS][105] -> [FAIL][106] ([i915#70]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109274] / [fdo#109278])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#2346] / [i915#3457])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109278]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109274]) +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [PASS][112] -> [INCOMPLETE][113] ([i915#146] / [i915#198])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-interruptible@a-edp1:
    - shard-skl:          [PASS][114] -> [DMESG-WARN][115] ([i915#1982]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_flip@plain-flip-interruptible@a-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl1/igt@kms_flip@plain-flip-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2672])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#111825]) +5 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-snb:          [PASS][118] -> [SKIP][119] ([fdo#109271])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109280]) +11 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
    - shard-glk:          NOTRUN -> [SKIP][121] ([fdo#109271]) +20 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:
    - shard-glk:          [PASS][122] -> [FAIL][123] ([i915#53])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][125] -> [FAIL][126] ([fdo#108145] / [i915#265])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][127] ([fdo#108145] / [i915#265]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - shard-snb:          NOTRUN -> [FAIL][128] ([i915#2657]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - shard-glk:          [PASS][129] -> [FAIL][130] ([i915#2657])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk1/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - shard-snb:          NOTRUN -> [FAIL][131] ([i915#2657] / [i915#3457])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-c-primary-size-256:
    - shard-kbl:          NOTRUN -> [FAIL][132] ([i915#2657])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_plane_cursor@pipe-c-primary-size-256.html

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - shard-skl:          [PASS][133] -> [FAIL][134] ([i915#2657] / [i915#3457])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl1/igt@kms_plane_cursor@pipe-c-primary-size-64.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl2/igt@kms_plane_cursor@pipe-c-primary-size-64.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/index.html

--===============2824756729955659113==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Pin the L-shape quirked object as unshrinkable (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90065/">https://patchwork.freedesktop.org/series/90065/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10090_full -&gt; Patchwork_20136_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20136_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20136_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20136_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@api_intel_bb@destroy-bb:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk1/igt@api_intel_bb@destroy-bb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk1/igt@api_intel_bb@destroy-bb.html">TIMEOUT</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk1/igt@kms_atomic_interruptible@legacy-setmode.html">TIMEOUT</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_ctx_freq@sysfs:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk1/igt@gem_ctx_freq@sysfs.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk1/igt@gem_ctx_freq@sysfs.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20136_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-keep-cache-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@api_intel_bb@blit-noreloc-keep-cache-random.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@api_intel_bb@blit-noreloc-purge-cache-random.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk9/igt@gem_create@create-clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk3/igt@gem_create@create-clear.html">FAIL</a> ([i915#1888] / [i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb7/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#2896] / [i915#3457])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl7/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@keep-in-fence@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk6/igt@gem_exec_fence@keep-in-fence@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk9/igt@gem_exec_fence@keep-in-fence@rcs0.html">INCOMPLETE</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit-chain:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk8/igt@gem_exec_fence@submit-chain.html">FAIL</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([fdo#109271]) +270 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb6/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#3183] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468]) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl10/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl8/igt@gem_ppgtt@blt-vs-render-ctxn.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl7/igt@gem_ppgtt@blt-vs-render-ctxn.html">FAIL</a> ([i915#3476])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_wait@await@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-apl1/igt@gem_wait@await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl3/igt@gem_wait@await@bcs0.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@gen7_exec_parse@basic-allocation.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@i915_hangman@error-state-capture@rcs0.html">DMESG-WARN</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@vcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@i915_hangman@error-state-capture@vcs0.html">DMESG-WARN</a> ([i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb7/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#1904])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl1/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#3475])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb8/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#2411])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb4/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb8/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#2411] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@i915_pm_rps@waitboost.html">DMESG-FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_chamelium@dp-audio-edid.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@kms_chamelium@dp-frame-dump.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_color@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_color@pipe-d-degamma.html">FAIL</a> ([i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_color_chamelium@pipe-d-gamma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +4 similar issues</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">FAIL</a> ([i915#3457]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-size-change:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-size-change.html">FAIL</a> ([i915#2124] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html">INCOMPLETE</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">FAIL</a> ([i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html">SKIP</a> ([i915#3359] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb7/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html">SKIP</a> ([fdo#109278] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271] / [i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html">FAIL</a> ([i915#70]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_cursor_legacy@pipe-d-single-move.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> ([fdo#109274]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_flip@plain-flip-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl1/igt@kms_flip@plain-flip-interruptible@a-edp1.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#111825]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html">FAIL</a> ([i915#53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb2/igt@kms_plane_cursor@pipe-a-primary-size-128.html">FAIL</a> ([i915#2657]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-128:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-glk3/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-glk1/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-64:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-snb6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-256:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-kbl3/igt@kms_plane_cursor@pipe-c-primary-size-256.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-64:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/shard-skl1/igt@kms_plane_cursor@pipe-c-primary-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20136/shard-skl2/igt@kms_plane_cursor@pipe-c-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamp</p>
</li>
</ul>

</body>
</html>

--===============2824756729955659113==--

--===============2118229087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2118229087==--
