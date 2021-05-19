Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3A23887C9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 08:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 758D36E81E;
	Wed, 19 May 2021 06:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FF8B6E1B1;
 Wed, 19 May 2021 06:47:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87AC4A47DF;
 Wed, 19 May 2021 06:47:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 19 May 2021 06:47:47 -0000
Message-ID: <162140686751.17249.1738567362851222794@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210518083400.24874-1-jani.nikula@intel.com>
In-Reply-To: <20210518083400.24874-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/reg=3A_replace_BIT=28=29_usage_with_REG=5FBIT=28=29_=28re?=
 =?utf-8?b?djIp?=
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
Content-Type: multipart/mixed; boundary="===============1482942751=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1482942751==
Content-Type: multipart/alternative;
 boundary="===============4410710403120839809=="

--===============4410710403120839809==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/reg: replace BIT() usage with REG_BIT() (rev2)
URL   : https://patchwork.freedesktop.org/series/90270/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10098_full -> Patchwork_20144_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20144_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20144_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20144_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - shard-glk:          [PASS][2] -> [TIMEOUT][3] +4 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault@vecs0:
    - shard-glk:          [FAIL][4] ([i915#3457]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk3/igt@gem_exec_schedule@pi-userfault@vecs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk7/igt@gem_exec_schedule@pi-userfault@vecs0.html

  * igt@kms_plane_lowres@pipe-d-tiling-x:
    - shard-glk:          [SKIP][6] ([fdo#109271]) -> [TIMEOUT][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@kms_plane_lowres@pipe-d-tiling-x.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk1/igt@kms_plane_lowres@pipe-d-tiling-x.html

  
Known issues
------------

  Here are the changes found in Patchwork_20144_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-keep-cache:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][8] ([i915#3457]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@api_intel_bb@blit-noreloc-keep-cache.html

  * igt@api_intel_bb@intel-bb-blit-x:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#3471])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk5/igt@api_intel_bb@intel-bb-blit-x.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk8/igt@api_intel_bb@intel-bb-blit-x.html

  * igt@drm_read@fault-buffer:
    - shard-apl:          NOTRUN -> [DMESG-WARN][11] ([i915#3457]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl7/igt@drm_read@fault-buffer.html

  * igt@gem_ctx_engines@execute-one:
    - shard-apl:          NOTRUN -> [FAIL][12] ([i915#3457])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@gem_ctx_engines@execute-one.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-glk:          [PASS][14] -> [INCOMPLETE][15] ([i915#2502] / [i915#3457])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@gem_exec_endless@dispatch@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk2/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2389] / [i915#3457])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_schedule@preemptive-hang@rcs0:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#3457]) +18 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@gem_exec_schedule@preemptive-hang@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk6/igt@gem_exec_schedule@preemptive-hang@rcs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#3468])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#2910] / [i915#3468])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#307])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][25] ([i915#3468])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl1/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-glk:          NOTRUN -> [INCOMPLETE][26] ([i915#3468])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk1/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-apl:          NOTRUN -> [INCOMPLETE][27] ([i915#3468]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][28] ([i915#3468])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][29] ([i915#3002])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-snb:          NOTRUN -> [FAIL][30] ([i915#3324])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@gem_userptr_blits@set-cache-level.html

  * igt@i915_hangman@error-state-capture@vcs1:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][31] ([i915#3457])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb1/igt@i915_hangman@error-state-capture@vcs1.html

  * igt@i915_module_load@reload:
    - shard-snb:          NOTRUN -> [DMESG-WARN][32] ([i915#3457]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@cursor:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#3457]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl3/igt@i915_pm_rpm@cursor.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl6/igt@i915_pm_rpm@cursor.html
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#3457])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@i915_pm_rpm@cursor.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@i915_pm_rpm@cursor.html
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#3457])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@i915_pm_rpm@cursor.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982] / [i915#3475])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-iclb:         [PASS][41] -> [DMESG-WARN][42] ([i915#3457]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          NOTRUN -> [DMESG-WARN][43] ([i915#3457]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][44] ([i915#2782])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-snb:          NOTRUN -> [FAIL][51] ([i915#3457]) +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3457]) +7 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#3457]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#3444] / [i915#3457]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][57] ([i915#3444] / [i915#3457]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-apl:          NOTRUN -> [FAIL][58] ([i915#3444] / [i915#3457]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-snb:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#3457]) +34 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-kbl:          NOTRUN -> [FAIL][60] ([i915#3444] / [i915#3457]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2124] / [i915#3457]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#3444] / [i915#3457]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3457]) +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#3457]) +7 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#70]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-glk:          [PASS][69] -> [DMESG-WARN][70] ([i915#118] / [i915#3457] / [i915#95])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2642])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +40 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +76 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271]) +240 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - shard-snb:          NOTRUN -> [FAIL][77] ([i915#2657] / [i915#3457])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - shard-skl:          NOTRUN -> [FAIL][78] ([i915#2657])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - shard-snb:          NOTRUN -> [FAIL][79] ([i915#2657]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_plane_cursor@pipe-b-primary-size-256.html

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - shard-kbl:          NOTRUN -> [FAIL][80] ([i915#2657])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_plane_cursor@pipe-b-primary-size-64.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_pwrite_crc:
    - shard-apl:          NOTRUN -> [FAIL][83] ([i915#3192])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_pwrite_crc.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][84] ([i915#31])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271]) +47 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2437])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_writeback@writeback-pixel-formats.html
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2437])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#1542])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@perf@polling-parameterized.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@perf@polling-parameterized.html

  * igt@prime_vgem@sync@rcs0:
    - shard-skl:          [PASS][90] -> [INCOMPLETE][91] ([i915#409])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@prime_vgem@sync@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@prime_vgem@sync@rcs0.html
    - shard-iclb:         [PASS][92] -> [INCOMPLETE][93] ([i915#409])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb3/igt@prime_vgem@sync@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb5/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl1/igt@sysfs_clients@sema-50.html
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl7/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@api_intel_bb@render@render-none-reloc-1024:
    - shard-glk:          [WARN][97] -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@api_intel_bb@render@render-none-reloc-1024.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk7/igt@api_intel_bb@render@render-none-reloc-1024.html

  * igt@gem_create@create-clear:
    - shard-glk:          [FAIL][99] ([i915#1888] / [i915#3160]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_create@create-clear.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@gem_create@create-clear.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][101] ([i915#2410] / [i915#3457]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][103] ([i915#2842] / [i915#3457]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - shard-apl:          [FAIL][105] ([i915#3457]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl7/igt@gem_exec_fence@basic-await@vecs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@keep-in-fence@vecs0:
    - shard-glk:          [INCOMPLETE][107] ([i915#3457]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_exec_fence@keep-in-fence@vecs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@gem_exec_fence@keep-in-fence@vecs0.html

  * igt@gem_exec_gttfill@basic:
    - shard-glk:          [FAIL][109] ([i915#3457] / [i915#3491]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@gem_exec_gttfill@basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@pi-userfault@vcs0:
    - shard-glk:          [FAIL][111] ([i915#3457]) -> [PASS][112] +25 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk3/igt@gem_exec_schedule@pi-userfault@vcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk7/igt@gem_exec_schedule@pi-userfault@vcs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-skl:          [INCOMPLETE][113] ([i915#3468]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][115] ([i915#2428]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@i915_pm_rpm@cursor:
    - shard-tglb:         [DMESG-WARN][117] ([i915#2411] / [i915#3457]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb5/igt@i915_pm_rpm@cursor.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb1/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-iclb:         [DMESG-WARN][119] ([i915#3475]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][121] ([i915#2521]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic@plane-immutable-zpos:
    - shard-glk:          [FAIL][123] ([i915#2657] / [i915#3457]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@kms_atomic@plane-immutable-zpos.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk7/igt@kms_atomic@plane-immutable-zpos.html

  * igt@kms_color@pipe-b-legacy-gamma:
    - shard-glk:          [FAIL][125] ([i915#71]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk5/igt@kms_color@pipe-b-legacy-gamma.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk4/igt@kms_color@pipe-b-legacy-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - shard-glk:          [FAIL][127] ([i915#3444] / [i915#3457]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-skl:          [FAIL][129] ([i915#3444] / [i915#3457]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-dpms:
    - shard-tglb:         [FAIL][131] ([i915#2124] / [i915#3457]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-dpms.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-dpms.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:
    - shard-glk:          [FAIL][133] ([i915#70]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][135] ([i915#79]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][137] ([i915#79]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-skl:          [FAIL][139] ([i915#49]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][141] ([i915#1188]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:
    - shard-glk:          [FAIL][143] ([i915#53]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/index.html

--===============4410710403120839809==
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
<tr><td><b>Series:</b></td><td>drm/i915/reg: replace BIT() usage with REG_BIT() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90270/">https://patchwork.freedesktop.org/series/90270/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10098_full -&gt; Patchwork_20144_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20144_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20144_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20144_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">TIMEOUT</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_schedule@pi-userfault@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk3/igt@gem_exec_schedule@pi-userfault@vecs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk7/igt@gem_exec_schedule@pi-userfault@vecs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-x:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@kms_plane_lowres@pipe-d-tiling-x.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk1/igt@kms_plane_lowres@pipe-d-tiling-x.html">TIMEOUT</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20144_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-keep-cache:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@api_intel_bb@blit-noreloc-keep-cache.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@intel-bb-blit-x:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk5/igt@api_intel_bb@intel-bb-blit-x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk8/igt@api_intel_bb@intel-bb-blit-x.html">FAIL</a> ([i915#3471])</li>
</ul>
</li>
<li>
<p>igt@drm_read@fault-buffer:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl7/igt@drm_read@fault-buffer.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@execute-one:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@gem_ctx_engines@execute-one.html">FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk2/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> ([i915#2502] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> ([i915#2389] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preemptive-hang@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@gem_exec_schedule@preemptive-hang@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk6/igt@gem_exec_schedule@preemptive-hang@rcs0.html">FAIL</a> ([i915#3457]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#2910] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl1/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk1/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb1/igt@i915_hangman@error-state-capture@vcs1.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl3/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl6/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#1982] / [i915#3475])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@i915_pm_sseu@full-enable.html">DMESG-WARN</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_chamelium@vga-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html">FAIL</a> ([i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">FAIL</a> ([i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">FAIL</a> ([i915#70]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-toggle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html">DMESG-WARN</a> ([i915#118] / [i915#3457] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +76 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109271]) +240 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-64:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_plane_cursor@pipe-a-primary-size-128.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-256:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_plane_cursor@pipe-b-primary-size-256.html">FAIL</a> ([i915#2657]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-64:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl3/igt@kms_plane_cursor@pipe-b-primary-size-64.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pwrite_crc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_pwrite_crc.html">FAIL</a> ([i915#3192])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-snb7/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html">SKIP</a> ([fdo#109271]) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb3/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb5/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-kbl1/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl7/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@render@render-none-reloc-1024:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@api_intel_bb@render@render-none-reloc-1024.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk7/igt@api_intel_bb@render@render-none-reloc-1024.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_create@create-clear.html">FAIL</a> ([i915#1888] / [i915#3160]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@gem_create@create-clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl7/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-apl6/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@keep-in-fence@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_exec_fence@keep-in-fence@vecs0.html">INCOMPLETE</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@gem_exec_fence@keep-in-fence@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@gem_exec_gttfill@basic.html">FAIL</a> ([i915#3457] / [i915#3491]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-userfault@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk3/igt@gem_exec_schedule@pi-userfault@vcs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk7/igt@gem_exec_schedule@pi-userfault@vcs0.html">PASS</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#2428]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb5/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#2411] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb1/igt@i915_pm_rpm@cursor.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#3475]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-immutable-zpos:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@kms_atomic@plane-immutable-zpos.html">FAIL</a> ([i915#2657] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk7/igt@kms_atomic@plane-immutable-zpos.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-legacy-gamma:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk5/igt@kms_color@pipe-b-legacy-gamma.html">FAIL</a> ([i915#71]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk4/igt@kms_color@pipe-b-legacy-gamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL</a> ([i915#3444] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-dpms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-dpms.html">FAIL</a> ([i915#2124] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">FAIL</a> ([i915#70]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-256x256-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">FAIL</a> ([i915#49]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html">FAIL</a> ([i915#53]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20144/shard-glk5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c.html">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============4410710403120839809==--

--===============1482942751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1482942751==--
