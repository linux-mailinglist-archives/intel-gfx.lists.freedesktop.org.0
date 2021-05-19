Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4478D388BB5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 12:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4AB6E28A;
	Wed, 19 May 2021 10:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F0006E28A;
 Wed, 19 May 2021 10:37:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 042FCA0169;
 Wed, 19 May 2021 10:37:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 19 May 2021 10:37:31 -0000
Message-ID: <162142065197.17246.9674620214471919243@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210518132426.7567-1-jani.nikula@intel.com>
In-Reply-To: <20210518132426.7567-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/plane=3A_add_intel=5Fplane=5Fhelper=5Fadd=28=29_helper?=
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
Content-Type: multipart/mixed; boundary="===============0028420545=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0028420545==
Content-Type: multipart/alternative;
 boundary="===============4381168968807870011=="

--===============4381168968807870011==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/plane: add intel_plane_helper_add() helper
URL   : https://patchwork.freedesktop.org/series/90287/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10098_full -> Patchwork_20145_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20145_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20145_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20145_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-snb:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14]) -> ([PASS][15], [FAIL][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb7/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb7/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb6/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb6/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb6/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb5/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb2/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane@plane-position-covered@pipe-a-planes}:
    - shard-glk:          [FAIL][29] ([i915#3457]) -> [FAIL][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk5/igt@kms_plane@plane-position-covered@pipe-a-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk3/igt@kms_plane@plane-position-covered@pipe-a-planes.html

  
Known issues
------------

  Here are the changes found in Patchwork_20145_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-keep-cache:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][31] ([i915#3457])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@api_intel_bb@blit-noreloc-keep-cache.html

  * igt@api_intel_bb@render@render-x-1024:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#3471])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@api_intel_bb@render@render-x-1024.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk4/igt@api_intel_bb@render@render-x-1024.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#1099]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-apl:          NOTRUN -> [FAIL][35] ([i915#2896] / [i915#3457])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@kms:
    - shard-skl:          [PASS][36] -> [TIMEOUT][37] ([i915#2502] / [i915#3457])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@gem_eio@kms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl1/igt@gem_eio@kms.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-glk:          [PASS][38] -> [INCOMPLETE][39] ([i915#2502] / [i915#3457])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@gem_exec_endless@dispatch@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk1/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][40] ([i915#2842] / [i915#3457])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#3457]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fence@keep-in-fence@rcs0:
    - shard-glk:          [PASS][43] -> [INCOMPLETE][44] ([i915#3457])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_exec_fence@keep-in-fence@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk8/igt@gem_exec_fence@keep-in-fence@rcs0.html

  * igt@gem_exec_schedule@preempt-hang@vecs0:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#3457]) +17 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@gem_exec_schedule@preempt-hang@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk2/igt@gem_exec_schedule@preempt-hang@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2190])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][48] -> [INCOMPLETE][49] ([i915#3468])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-tglb:         [PASS][50] -> [INCOMPLETE][51] ([i915#3468])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-tglb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-tglb:         [PASS][52] -> [INCOMPLETE][53] ([i915#2910] / [i915#3468])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][54] ([i915#3468])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-iclb:         [PASS][55] -> [INCOMPLETE][56] ([i915#2502])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb3/igt@gem_mmap_gtt@medium-copy-xy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-iclb6/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][57] ([i915#2658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-glk:          NOTRUN -> [INCOMPLETE][58] ([i915#3468])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk6/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-apl:          NOTRUN -> [INCOMPLETE][59] ([i915#3468])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-skl:          NOTRUN -> [INCOMPLETE][60] ([i915#3468])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][61] ([i915#3002])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_userptr_blits@input-checking.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][62] ([i915#3002])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +142 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][64] ([i915#3296])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +23 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_hangman@engine-error@vecs0:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +49 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@i915_hangman@engine-error@vecs0.html

  * igt@i915_hangman@error-state-capture@rcs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][67] ([i915#3457]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@i915_hangman@error-state-capture@rcs0.html

  * igt@i915_module_load@reload:
    - shard-snb:          NOTRUN -> [DMESG-WARN][68] ([i915#3457]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@cursor:
    - shard-kbl:          [PASS][69] -> [DMESG-WARN][70] ([i915#3457]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl3/igt@i915_pm_rpm@cursor.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@i915_pm_rpm@cursor.html
    - shard-apl:          [PASS][71] -> [DMESG-WARN][72] ([i915#3457])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@i915_pm_rpm@cursor.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-tglb:         [PASS][73] -> [DMESG-WARN][74] ([i915#2411] / [i915#3457])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb3/igt@i915_pm_rpm@cursor-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-tglb5/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-iclb:         [PASS][75] -> [DMESG-WARN][76] ([i915#3457])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@i915_pm_rps@waitboost:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][77] ([i915#3457])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl2/igt@i915_pm_rps@waitboost.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-b-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@kms_color_chamelium@pipe-b-gamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_concurrent@pipe-c:
    - shard-skl:          [PASS][82] -> [DMESG-WARN][83] ([i915#1982])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@kms_concurrent@pipe-c.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl1/igt@kms_concurrent@pipe-c.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][84] ([i915#1319])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          NOTRUN -> [FAIL][85] ([i915#3444] / [i915#3457]) +5 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3457]) +12 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-iclb:         [PASS][87] -> [FAIL][88] ([i915#3457]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
    - shard-kbl:          [PASS][89] -> [FAIL][90] ([i915#3444] / [i915#3457]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
    - shard-tglb:         [PASS][91] -> [FAIL][92] ([i915#2124] / [i915#3457])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-snb:          NOTRUN -> [FAIL][93] ([i915#3457]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - shard-kbl:          NOTRUN -> [FAIL][94] ([i915#3444] / [i915#3457])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][95] ([i915#3444] / [i915#3457]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-glk:          [PASS][96] -> [FAIL][97] ([i915#3444] / [i915#3457]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3457]) +23 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3457]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - shard-snb:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3457]) +32 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
    - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#70]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-glk:          [PASS][103] -> [DMESG-WARN][104] ([i915#118] / [i915#3457] / [i915#95])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][105] ([i915#180]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][106] -> [DMESG-WARN][107] ([i915#180])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2672])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][109] ([fdo#109271]) +225 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#2642])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:
    - shard-glk:          [PASS][111] -> [FAIL][112] ([i915#1036])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#533]) +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#533])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          NOTRUN -> [DMESG-WARN][115] ([i915#180])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#533])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][117] ([fdo#108145] / [i915#265])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][118] -> [FAIL][119] ([fdo#108145] / [i915#265]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - shard-snb:          NOTRUN -> [FAIL][120] ([i915#2657]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb2/igt@kms_plane_cursor@pipe-b-primary-size-64.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#1779])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk5/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#658]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#658])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2437])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@busy-idle-check-all@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][127] ([i915#3457]) +9 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@perf_pmu@busy-idle-check-all@rcs0.html

  * igt@perf_pmu@busy-idle-check-all@vcs0:
    - shard-apl:          NOTRUN -> [WARN][128] ([i915#3457]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt@perf_pmu@busy-idle-check-all@vcs0.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2994]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@sysfs_clients@create.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2994])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2994])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl3/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@api_intel_bb@intel-bb-blit-y:
    - shard-glk:          [FAIL][132] ([i915#3471]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@api_intel_bb@intel-bb-blit-y.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk3/igt@api_intel_bb@intel-bb-blit-y.html

  * igt@api_intel_bb@render@render-none-reloc-1024:
    - shard-glk:          [WARN][134] -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@api_intel_bb@render@render-none-reloc-1024.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk4/igt@api_intel_bb@render@render-none-reloc-1024.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][136] ([i915#2410] / [i915#3457]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][138] ([i915#2369] / [i915#3063] / [i915#3457]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][140] ([i915#2842] / [i915#3457]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [FAIL][142] ([i915#3457]) -> [PASS][143] +23 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk6/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][144] ([i915#118] / [i915#95]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][146] ([i915#2428]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_wait@busy@vecs0:
    - shard-apl:          [FAIL][148] ([i915#3457]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@gem_wait@busy@vecs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_wait@busy@vecs0.html

  * igt@i915_pm_rpm@cursor:
    - shard-glk:          [DMESG-WARN][150] ([i915#3457]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@i915_pm_rpm@cursor.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-glk4/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-tglb:         [DMESG-WARN][152] ([i915#2411]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb2/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-iclb:         [DMESG-WARN][154] ([i915#3475]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/sha

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/index.html

--===============4381168968807870011==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/plane: add intel_plane_helper_add()=
 helper</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90287/">https://patchwork.freedesktop.org/series/90287/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20145/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20145/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10098_full -&gt; Patchwork_20145_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20145_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20145_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20145_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10098/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10098/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10098/shard-snb6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/sha=
rd-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10098/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10098/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-snb2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098=
/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20145/shard-snb7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb6/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20145/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20145/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20145/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20145/shard-snb2/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-snb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20145/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20145/shard-snb2/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-smal=
l-copy-odd.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane@plane-position-covered@pipe-a-planes}:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk5/igt@kms_plane@plane-position-covered@pipe-a-planes=
.html">FAIL</a> ([i915#3457]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20145/shard-glk3/igt@kms_plane@plane-position-covere=
d@pipe-a-planes.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20145_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-keep-cache:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl6/igt@api_intel_bb@blit-noreloc-keep=
-cache.html">DMESG-FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render@render-x-1024:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk6/igt@api_intel_bb@render@render-x-1024.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2014=
5/shard-glk4/igt@api_intel_bb@render@render-x-1024.html">FAIL</a> ([i915#34=
71])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-snb5/igt@gem_ctx_persistence@legacy-eng=
ines-persistence.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_ctx_persistence@smoketest.=
html">FAIL</a> ([i915#2896] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-skl10/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl1/igt@gem_=
eio@kms.html">TIMEOUT</a> ([i915#2502] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk2/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/s=
hard-glk1/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> ([i915#25=
02] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20145/shard-kbl7/igt@gem_exec_fair@basic-none-solo@r=
cs0.html">FAIL</a> ([i915#2842] / [i915#3457])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2014=
5/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#3=
457]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@keep-in-fence@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk4/igt@gem_exec_fence@keep-in-fence@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2014=
5/shard-glk8/igt@gem_exec_fence@keep-in-fence@rcs0.html">INCOMPLETE</a> ([i=
915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-hang@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk6/igt@gem_exec_schedule@preempt-hang@vecs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0145/shard-glk2/igt@gem_exec_schedule@preempt-hang@vecs0.html">FAIL</a> ([i=
915#3457]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl6/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-glk6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
145/shard-glk2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a=
> ([i915#3468])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0145/shard-tglb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE<=
/a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20145/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">IN=
COMPLETE</a> ([i915#2910] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@gem_mmap_gtt@fault-concurrent-=
y.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-iclb3/igt@gem_mmap_gtt@medium-copy-xy.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/sha=
rd-iclb6/igt@gem_mmap_gtt@medium-copy-xy.html">INCOMPLETE</a> ([i915#2502])=
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-glk6/igt@gem_render_copy@mixed-tiled-to=
-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_render_copy@yf-tiled-ccs-t=
o-linear.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@gem_render_copy@yf-tiled-ccs-t=
o-y-tiled-ccs.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20145/shard-apl7/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20145/shard-snb5/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl6/igt@gen7_exec_parse@basic-offset.h=
tml">SKIP</a> ([fdo#109271]) +142 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl6/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@gen9_exec_parse@bb-oversize.ht=
ml">SKIP</a> ([fdo#109271]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@i915_hangman@engine-error@vecs=
0.html">SKIP</a> ([fdo#109271]) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@i915_hangman@error-state-captu=
re@rcs0.html">DMESG-WARN</a> ([i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-snb5/igt@i915_module_load@reload.html">=
DMESG-WARN</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-kbl3/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-kbl7/igt=
@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-apl6/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-apl6/igt=
@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-tglb3/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-t=
glb5/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#2411] / [i915#=
3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/sh=
ard-iclb5/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457=
])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl2/igt@i915_pm_rps@waitboost.html">DM=
ESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@kms_color_chamelium@pipe-b-gam=
ma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-c:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-skl10/igt@kms_concurrent@pipe-c.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20145/shard-skl=
1/igt@kms_concurrent@pipe-c.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-1=
28x42-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +5 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-5=
12x512-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +12 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20145/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.h=
tml">FAIL</a> ([i915#3457]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20145/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.htm=
l">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20145/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.h=
tml">FAIL</a> ([i915#2124] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-random:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-6=
4x64-random.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-2=
56x85-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-6=
4x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20145/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">=
FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-1=
28x128-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +23 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_cursor_crc@pipe-d-cursor-5=
12x512-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-5=
12x512-rapid-movement.html">SKIP</a> ([fdo#109271] / [i915#3457]) +32 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20145/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html=
">FAIL</a> ([i915#70]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-toggle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20145/shard-glk5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html">DM=
ESG-WARN</a> ([i915#118] / [i915#3457] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl2/igt@kms_flip@flip-vs-suspend-inter=
ruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20145/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20145/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-=
ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271]) +225 similar issues</=
p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20145/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-=
ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe=
-c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20145/shard-glk6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-p=
ipe-c.html">FAIL</a> ([i915#1036])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-b.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20145/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-64:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-snb2/igt@kms_plane_cursor@pipe-b-primar=
y-size-64.html">FAIL</a> ([i915#2657]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20145/shard-glk5/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html">=
FAIL</a> ([i915#1779])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl6/igt@perf_pmu@busy-idle-check-all@r=
cs0.html">FAIL</a> ([i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl6/igt@perf_pmu@busy-idle-check-all@v=
cs0.html">WARN</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-apl7/igt@sysfs_clients@create.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-kbl7/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20145/shard-skl3/igt@sysfs_clients@split-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@intel-bb-blit-y:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk8/igt@api_intel_bb@intel-bb-blit-y.html">FAIL</a> ([=
i915#3471]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20145/shard-glk3/igt@api_intel_bb@intel-bb-blit-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render@render-none-reloc-1024:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk6/igt@api_intel_bb@render@render-none-reloc-1024.htm=
l">WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20145/shard-glk4/igt@api_intel_bb@render@render-none-reloc-1024.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> ([i915#2410] / [i915#3457]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20145/shard-tglb6/igt@gem_ctx_persistence@many-con=
texts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-tglb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2369] / [i915#3063] / [i915#3457]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20145/shard-tglb2/igt@gem_eio@unwedge-stress=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842] / [i915#3457]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20145/shard-iclb5/igt@gem_exec_fair@basic-none-s=
hare@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html">FAIL</a> ([=
i915#3457]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20145/shard-glk6/igt@gem_exec_fence@parallel@vcs0.html">PASS</a> +23 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html">DME=
SG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20145/shard-glk8/igt@gem_exec_whisper@basic-q=
ueues-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</=
a> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20145/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-apl6/igt@gem_wait@busy@vecs0.html">FAIL</a> ([i915#3457=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2014=
5/shard-apl7/igt@gem_wait@busy@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10098/shard-glk8/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915=
#3457]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20145/shard-glk4/igt@i915_pm_rpm@cursor.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/shard-tglb2/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN<=
/a> ([i915#2411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20145/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a=
></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10098/sha">DMESG-WARN</a> ([i915#3475]) -&gt; [PASS][155]</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4381168968807870011==--

--===============0028420545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0028420545==--
