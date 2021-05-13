Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 714933800CA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 01:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0F76E12C;
	Thu, 13 May 2021 23:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 39BF36E131;
 Thu, 13 May 2021 23:23:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 308A2A0BCB;
 Thu, 13 May 2021 23:23:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 13 May 2021 23:23:41 -0000
Message-ID: <162094822116.26537.4539090163275011587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210512212809.1234701-1-imre.deak@intel.com>
In-Reply-To: <20210512212809.1234701-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reenable_LTTPR_non-transparent_LT_mode_for_DPCD=5FREV?=
 =?utf-8?q?=3C1=2E4?=
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
Content-Type: multipart/mixed; boundary="===============0625600408=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0625600408==
Content-Type: multipart/alternative;
 boundary="===============8347606506240958725=="

--===============8347606506240958725==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reenable LTTPR non-transparent LT mode for DPCD_REV<1.4
URL   : https://patchwork.freedesktop.org/series/90102/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10074_full -> Patchwork_20115_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20115_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20115_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20115_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c:
    - shard-glk:          [PASS][2] -> [FAIL][3] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk6/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - shard-snb:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-256.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane@plane-position-hole@pipe-a-planes}:
    - shard-glk:          [FAIL][5] ([i915#3457]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_plane@plane-position-hole@pipe-a-planes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@kms_plane@plane-position-hole@pipe-a-planes.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t.html

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][8] +7 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10074_full and Patchwork_20115_full:

### New Piglit tests (9) ###

  * spec@arb_gpu_shader_int64@execution@built-in-functions@cs-min-i64vec2-i64vec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@cs-op-mult-i64vec3-i64vec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t:
    - Statuses : 1 crash(s)
    - Exec time: [0.76] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-max-i64vec3-i64vec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-mult-i64vec4-i64vec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-u64vec2-uint64_t:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@vs-op-add-uint64_t-u64vec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@vs-op-bitxor-uint64_t-uint64_t:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_20115_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-purge-cache-random:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][9] ([i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@api_intel_bb@blit-noreloc-purge-cache-random.html

  * igt@api_intel_bb@intel-bb-blit-x:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#3471])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@api_intel_bb@intel-bb-blit-x.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@api_intel_bb@intel-bb-blit-x.html

  * igt@api_intel_bb@offset-control:
    - shard-skl:          NOTRUN -> [DMESG-WARN][12] ([i915#3457])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@api_intel_bb@offset-control.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [PASS][14] -> [TIMEOUT][15] ([i915#2369] / [i915#3063] / [i915#3457])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@gem_eio@unwedge-stress.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@gem_eio@unwedge-stress.html
    - shard-snb:          NOTRUN -> [FAIL][16] ([i915#3354] / [i915#3457])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#3457]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-glk:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3457])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][20] -> [FAIL][21] ([i915#2842] / [i915#3457]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#3457]) +32 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@gem_exec_fence@parallel@vcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][24] ([i915#2389] / [i915#3457]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][25] ([i915#3457]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-glk:          NOTRUN -> [FAIL][26] ([i915#3457])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk4/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#118] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk6/igt@gem_exec_whisper@basic-normal-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][29] -> [INCOMPLETE][30] ([i915#3468])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][31] ([i915#3468])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][32] ([i915#3468]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#3468])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#307])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-skl:          NOTRUN -> [INCOMPLETE][37] ([i915#3468]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-skl:          NOTRUN -> [INCOMPLETE][38] ([i915#198] / [i915#3468])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl7/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-kbl:          NOTRUN -> [FAIL][39] ([i915#3324])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][40] ([i915#2724] / [i915#3457])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][41] ([i915#3318] / [i915#3457])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109289])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][43] ([i915#3296])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gen9_exec_parse@bb-large.html
    - shard-kbl:          NOTRUN -> [FAIL][44] ([i915#3296])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-iclb:         [PASS][45] -> [DMESG-WARN][46] ([i915#3457])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb8/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][47] ([i915#2782])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - shard-snb:          NOTRUN -> [DMESG-WARN][48] ([i915#3457])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][49] ([i915#180])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#111614])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][55] ([i915#1319])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][56] ([i915#3444] / [i915#3457]) +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:
    - shard-apl:          [PASS][57] -> [FAIL][58] ([i915#3444] / [i915#3457]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-snb:          NOTRUN -> [FAIL][59] ([i915#3457]) +9 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3457]) +10 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-apl:          NOTRUN -> [FAIL][61] ([i915#3444] / [i915#3457]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][62] -> [FAIL][63] ([i915#3444] / [i915#3457])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          NOTRUN -> [FAIL][64] ([i915#3444] / [i915#3457]) +7 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#3444] / [i915#3457]) +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3457]) +14 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3457]) +8 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque:
    - shard-snb:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#3457]) +47 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#2346] / [i915#3457])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +97 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2672])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2587])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2642])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][76] ([fdo#109271]) +352 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][77] ([i915#1188])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#533])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#533])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][82] ([fdo#108145] / [i915#265]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
    - shard-kbl:          NOTRUN -> [FAIL][83] ([fdo#108145] / [i915#265]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][84] ([i915#265])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - shard-skl:          NOTRUN -> [FAIL][85] ([i915#2657] / [i915#3457] / [i915#3461])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_cursor@pipe-a-primary-size-64.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          NOTRUN -> [FAIL][86] ([i915#2657] / [i915#3457])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-skl:          NOTRUN -> [FAIL][87] ([i915#2657] / [i915#3461])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - shard-kbl:          NOTRUN -> [FAIL][88] ([i915#2657]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - shard-skl:          [PASS][89] -> [FAIL][90] ([i915#2657] / [i915#3457])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@kms_plane_cursor@pipe-b-primary-size-64.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@kms_plane_cursor@pipe-b-primary-size-64.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - shard-snb:          NOTRUN -> [FAIL][91] ([i915#3461])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@kms_plane_cursor@pipe-b-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#2657] / [i915#3457])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  * igt@kms_plane_cursor@pipe-c-primary-size-128:
    - shard-iclb:         [PASS][94] -> [FAIL][95] ([i915#2657] / [i915#3461])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb4/igt@kms_plane_cursor@pipe-c-primary-size-128.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271]) +88 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#658]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#658])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-skl:          NOTRUN -> [WARN][100] ([i915#2100])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl4/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180] / [i915#295])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2437])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#2437])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271]) +73 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-apl:          NOTRUN -> [WARN][106] ([i915#3457]) +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  * igt@sysfs_clients@pidname:
    - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2994])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#2994]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl4/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2994])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@api_intel_bb@render@render-none-1024:
    - shard-glk:          [WARN][110] -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-none-1024.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk7/igt@api_intel_bb@render@render-none-1024.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-apl:          [DMESG-WARN][112] ([i915#180] / [i915#3457]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][114] ([i915#2842] / [i915#3457]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [SKIP][116] ([fdo#109271] / [i915#3457]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][118] ([i915#2842] / [i915#3457]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_schedule@preempt-hang@vcs0:
    - shard-glk:          [FAIL][120] ([i915#3457]) -> [PASS][121] +34 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@gem_exec_schedule@preempt-hang@vcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk7/igt@gem_exec_schedule@preempt-hang@vcs0.html

  * igt@gem_exec_schedule@submit-early-slice@bcs0:
    - shard-apl:          [FAIL][122] ([i915#3457]) -> [PASS][123] +7 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@gem_exec_schedule@submit-early-slice@bcs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_exec_schedule@submit-early-slice@bcs0.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-skl:          [FAIL][124] ([i915#307]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl9/igt@gem_mmap_gtt@big-copy.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-skl:          [INCOMPLETE][126] ([i915#3468]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@gem_mmap_gtt@c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html

--===============8347606506240958725==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reenable LTTPR non-transparent LT mode for DPCD_REV&lt;1.4</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90102/">https://patchwork.freedesktop.org/series/90102/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074_full -&gt; Patchwork_20115_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20115_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20115_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20115_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk6/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-1-pipe-c.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-256:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-256.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane@plane-position-hole@pipe-a-planes}:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_plane@plane-position-hole@pipe-a-planes.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@kms_plane@plane-position-hole@pipe-a-planes.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t.html">CRASH</a></li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if.html">INCOMPLETE</a> +7 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10074_full and Patchwork_20115_full:</p>
<h3>New Piglit tests (9)</h3>
<ul>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@cs-min-i64vec2-i64vec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@cs-op-mult-i64vec3-i64vec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-ne-uint64_t-uint64_t:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.76] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@gs-max-i64vec3-i64vec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-mult-i64vec4-i64vec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-gt-uint64_t-uint64_t-using-if:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-u64vec2-uint64_t:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@vs-op-add-uint64_t-u64vec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@vs-op-bitxor-uint64_t-uint64_t:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20115_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@api_intel_bb@blit-noreloc-purge-cache-random.html">DMESG-FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@intel-bb-blit-x:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@api_intel_bb@intel-bb-blit-x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@api_intel_bb@intel-bb-blit-x.html">FAIL</a> ([i915#3471])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@offset-control:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3457])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3354] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk8/igt@gem_exec_fence@parallel@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@gem_exec_fence@parallel@vcs0.html">FAIL</a> ([i915#3457]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">FAIL</a> ([i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk4/igt@gem_exec_schedule@u-fairslice@vecs0.html">FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk6/igt@gem_exec_whisper@basic-normal-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl7/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">INCOMPLETE</a> ([i915#198] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724] / [i915#3457])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb8/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@i915_selftest@live@mman.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">FAIL</a> ([i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-size-change:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-size-change.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb5/igt@kms_cursor_crc@pipe-d-cursor-alpha-opaque.html">SKIP</a> ([fdo#109271] / [i915#3457]) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> ([fdo#109271]) +97 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#2587])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +352 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-64:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_cursor@pipe-a-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-256:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#2657] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-64:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html">FAIL</a> ([i915#2657]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-64:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@kms_plane_cursor@pipe-b-primary-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@kms_plane_cursor@pipe-b-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-256:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-snb6/igt@kms_plane_cursor@pipe-b-viewport-size-256.html">FAIL</a> ([i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk8/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-128:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb2/igt@kms_plane_cursor@pipe-c-primary-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-iclb4/igt@kms_plane_cursor@pipe-c-primary-size-128.html">FAIL</a> ([i915#2657] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-x:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl7/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html">SKIP</a> ([fdo#109271]) +88 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl4/igt@kms_setmode@clone-exclusive-crtc.html">WARN</a> ([i915#2100])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl6/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +73 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">WARN</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl2/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl4/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl2/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@render@render-none-1024:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-none-1024.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk7/igt@api_intel_bb@render@render-none-1024.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">SKIP</a> ([fdo#109271] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-hang@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@gem_exec_schedule@preempt-hang@vcs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-glk7/igt@gem_exec_schedule@preempt-hang@vcs0.html">PASS</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl2/igt@gem_exec_schedule@submit-early-slice@bcs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-apl1/igt@gem_exec_schedule@submit-early-slice@bcs0.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl9/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20115/shard-skl9/igt@gem_mmap_gtt@big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@gem_mmap_gtt@c">INCOMPLETE</a> ([i915#3468]) -&gt; [PASS][127]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8347606506240958725==--

--===============0625600408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0625600408==--
