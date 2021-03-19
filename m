Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F31F6341E18
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 14:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDAF6EA04;
	Fri, 19 Mar 2021 13:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36CD06EA02;
 Fri, 19 Mar 2021 13:26:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DF65A73C7;
 Fri, 19 Mar 2021 13:26:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 19 Mar 2021 13:26:16 -0000
Message-ID: <161616037614.8631.5254610405618223923@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210127100051.30595-1-anshuman.gupta@intel.com>
In-Reply-To: <20210127100051.30595-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_mst_streams_type1_capability_check_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0893732142=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0893732142==
Content-Type: multipart/alternative;
 boundary="===============0846433611820617358=="

--===============0846433611820617358==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: mst streams type1 capability check (rev2)
URL   : https://patchwork.freedesktop.org/series/86345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9874_full -> Patchwork_19809_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19809_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19809_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19809_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c:
    - shard-skl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-uint_uvec3_array3-position (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/pig-icl-1065g7/spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-uint_uvec3_array3-position.html

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position-double_dmat3 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/pig-icl-1065g7/spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position-double_dmat3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9874_full and Patchwork_19809_full:

### New Piglit tests (6) ###

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x3-position-double_dvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-uint_uvec3_array3-position:
    - Statuses : 1 crash(s)
    - Exec time: [1.02] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_float-position-double_dvec3:
    - Statuses : 1 crash(s)
    - Exec time: [1.06] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-int_ivec4_array3-double_dvec2_array2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec3-short_int-position-double_dvec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position-double_dmat3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19809_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@chamelium:
    - shard-iclb:         NOTRUN -> [SKIP][4] ([fdo#111827])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@feature_discovery@chamelium.html

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +6 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_ctx_persistence@clone.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-kbl:          NOTRUN -> [SKIP][7] ([fdo#109271]) +11 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#3063])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][10] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][15] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#109283])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#112283])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-skl:          NOTRUN -> [TIMEOUT][18] ([i915#3183])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          NOTRUN -> [TIMEOUT][19] ([i915#3183])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl1/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-tglb:         [PASS][20] -> [DMESG-WARN][21] ([i915#2803])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-tglb5/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-tglb7/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#118] / [i915#95]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-glk8/igt@gem_exec_whisper@basic-fds-priority-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2190])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#307])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl5/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][27] ([i915#2658])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
    - shard-glk:          NOTRUN -> [WARN][28] ([i915#2658])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][29] ([i915#3002])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@gem_userptr_blits@input-checking.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][30] ([i915#3002])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1699]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [INCOMPLETE][32] ([i915#2502] / [i915#2667])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1436] / [i915#716])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][35] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +180 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][37] ([i915#1886] / [i915#2291])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl7/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110723])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_joiner@basic:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2705]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#54])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:
    - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271]) +25 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109278]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271]) +367 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][54] ([IGT#6])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][57] -> [INCOMPLETE][58] ([i915#180])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109274])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2122])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-glk:          NOTRUN -> [FAIL][64] ([i915#2628])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +80 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109280]) +5 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          NOTRUN -> [DMESG-WARN][67] ([i915#180])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][68] ([i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
    - shard-apl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109642] / [fdo#111068] / [i915#658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][76] -> [SKIP][77] ([fdo#109441]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][78] ([i915#180] / [i915#295])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#1542])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl7/igt@perf@polling-parameterized.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl8/igt@perf@polling-parameterized.html

  * igt@prime_nv_test@i915_import_pread_pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109291])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@prime_nv_test@i915_import_pread_pwrite.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          [PASS][83] -> [FAIL][84] ([i915#3028]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl6/igt@sysfs_clients@recycle.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl7/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-snb:          NOTRUN -> [FAIL][85] ([i915#3028])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-snb7/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3026]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl7/igt@sysfs_clients@sema-10@vcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][87] ([i915#1895] / [i915#3031]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@gem_exec_balancer@hang.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [FAIL][89] ([i915#2842]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-glk7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-tglb:         [DMESG-WARN][91] ([i915#2803]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-tglb5/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-tglb7/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:
    - shard-kbl:          [FAIL][93] ([i915#3168]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl6/igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][95] ([i915#54]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - shard-skl:          [DMESG-WARN][97] ([i915#1982]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl7/igt@kms_flip@basic-plain-flip@a-edp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl8/igt@kms_flip@basic-plain-flip@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][101] ([i915#1188]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb3/igt@kms_psr@psr2_basic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][107] ([i915#1722]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl1/igt@perf@polling-small-buf.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl9/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@busy@vecs0:
    - shard-skl:          [FAIL][109] ([i915#3019]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-skl10/igt@sysfs_clients@busy@vecs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-skl4/igt@sysfs_clients@busy@vecs0.html
    - shard-kbl:          [FAIL][111] ([i915#3009]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl2/igt@sysfs_clients@busy@vecs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl1/igt@sysfs_clients@busy@vecs0.html

  * igt@sysfs_clients@recycle-many:
    - shard-iclb:         [FAIL][113] ([i915#3028]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb6/igt@sysfs_clients@recycle-many.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb6/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][115] ([i915#588]) -> [SKIP][116] ([i915#658])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-iclb:         [SKIP][117] ([fdo#109300] / [fdo#111066]) -> [FAIL][118] ([i915#3137]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb6/igt@kms_content_protection@atomic-dpms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         [FAIL][119] ([i915#3137]) -> [SKIP][120] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb1/igt@kms_content_protection@legacy.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb8/igt@kms_content_protection@legacy.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][121] ([i915#2920]) -> [SKIP][122] ([i915#658]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][123] ([i915#658]) -> [SKIP][124] ([i915#2920])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][125], [FAIL][126], [FAIL][127]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#2724] / [i915#3002]) -> ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([i915#180] / [i915#1814] / [i915#2724] / [i915#3002])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#180] / [i915#1814] / [i915#2724] / [i915#3002])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl3/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl7/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl2/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@runner@ab

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/index.html

--===============0846433611820617358==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: mst streams type1 capability =
check (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86345/">https://patchwork.freedesktop.org/series/86345/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19809/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9874_full -&gt; Patchwork_19809_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19809_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19809_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19809_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip_tiling@flip-y-tiled@edp-1-pipe-c:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_flip_tiling@flip-y-tiled@e=
dp-1-pipe-c.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-uint_uvec3_array3-p=
osition (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/pig-icl-1065g7/spec@glsl-4.20@execution@vs_in=
@vs-input-double_dmat3-uint_uvec3_array3-position.html">CRASH</a> +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position=
-double_dmat3 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/pig-icl-1065g7/spec@glsl-4.20@execution@vs_in=
@vs-input-ubyte_uvec4-short_ivec4-position-double_dmat3.html">INCOMPLETE</a=
> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9874_full and Patchwork_19=
809_full:</p>
<h3>New Piglit tests (6)</h3>
<ul>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x3-position-double_d=
vec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-uint_uvec3_array3-p=
osition:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [1.02] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-float_float-position-double_dvec=
3:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [1.06] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-position-int_ivec4_array3-double=
_dvec2_array2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec3-short_int-position-d=
ouble_dvec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-short_ivec4-position=
-double_dmat3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19809_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@feature_discovery@chamelium.h=
tml">SKIP</a> ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_ctx_persistence@clone.html=
">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@gem_ctx_sseu@mmap-args.html">S=
KIP</a> ([fdo#109271]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/=
shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#30=
63])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-skl7/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
809/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i9=
15#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/sha=
rd-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-glk6/igt@gem_exec_fair@basic-throttle@r=
cs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_params@no-vebox.html=
">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_params@secure-non-ro=
ot.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-skl6/igt@gem_exec_reloc@basic-parallel.h=
tml">TIMEOUT</a> ([i915#3183])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-apl1/igt@gem_exec_reloc@basic-parallel.h=
tml">TIMEOUT</a> ([i915#3183])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-tglb5/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_198=
09/shard-tglb7/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> =
([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-glk8/igt@gem_exec_whisper@basic-fds-priority-all.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19809/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html">DMESG-W=
ARN</a> ([i915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl2/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-s=
kl5/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-glk6/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-apl2/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-snb5/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl3/igt@gem_userptr_blits@process-exit=
-mmap-busy@wc.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl3/igt@gem_userptr_blits@vma-merge.ht=
ml">INCOMPLETE</a> ([i915#2502] / [i915#2667])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/sh=
ard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#143=
6] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl3/igt@i915_pm_rpm@modeset-pc8-reside=
ncy-stress.html">SKIP</a> ([fdo#109271]) +180 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-skl7/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1980=
9/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([=
i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-180.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl3/igt@kms_big_joiner@basic.html">SKI=
P</a> ([fdo#109271] / [i915#2705]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_chamelium@hdmi-crc-fast.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_color_chamelium@pipe-b-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_color_chamelium@pipe-c-ct=
m-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl3/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> ([i915#1319]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19809/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html"=
>FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_cursor_crc@pipe-b-cursor-5=
12x170-onscreen.html">SKIP</a> ([fdo#109271]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-random.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> ([fdo#109271]) +367 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl7/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-atomic.html">DMESG-FAIL</a> ([IGT#6])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-apl1/igt@kms_cursor_legacy@pipe-d-tortur=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_cursor_legacy@pipe-d-tortur=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-a=
pl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_flip@2x-flip-vs-panning-v=
s-hang.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19809/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19809/shard-glk7/igt@kms_flip@plain-flip-fb-recreate-inter=
ruptible@b-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2628])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-skl1/igt@kms_frontbuffer_tracking@fbcps=
r-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +80 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +5 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_plane@plane-panning-bottom=
-right-suspend-pipe-b-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-al=
pha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</=
p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-al=
pha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-skl1/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-ic=
lb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068]=
 / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/s=
hard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl2/igt@kms_vblank@pipe-a-ts-continuat=
ion-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-glk6/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl7/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-=
skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-iclb5/igt@prime_nv_test@i915_import_pre=
ad_pwrite.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-kbl6/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl7/=
igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-snb7/igt@sysfs_clients@recycle-many.htm=
l">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19809/shard-apl7/igt@sysfs_clients@sema-10@vcs0.htm=
l">SKIP</a> ([fdo#109271] / [i915#3026]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb2/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([=
i915#1895] / [i915#3031]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19809/shard-iclb5/igt@gem_exec_balancer@hang.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19809/shard-glk7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-tglb5/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG=
-WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19809/shard-tglb7/igt@gem_exec_schedule@u-fairslice@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:<=
/p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-kbl4/igt@kms_atomic_transition@plane-all-transition-nonb=
locking@dp-1-pipe-b.html">FAIL</a> ([i915#3168]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl6/igt@kms_atomic_t=
ransition@plane-all-transition-nonblocking@dp-1-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.ht=
ml">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19809/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-o=
ffscreen.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl7/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WA=
RN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19809/shard-skl8/igt@kms_flip@basic-plain-flip@a-edp1.html">P=
ASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN=
</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19809/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</=
a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1=
188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9809/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19809/shard-skl5/igt@kms_plane_alpha_blend@=
pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb3/igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#109441=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1980=
9/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-skl1/igt@perf@polling-small-buf.html">FAIL</a> ([i915#17=
22]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
809/shard-skl9/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vecs0:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9874/shard-skl10/igt@sysfs_clients@busy@vecs0.html">FAIL</a> ([i915#=
3019]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19809/shard-skl4/igt@sysfs_clients@busy@vecs0.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9874/shard-kbl2/igt@sysfs_clients@busy@vecs0.html">FAIL</a> ([i915#3=
009]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9809/shard-kbl1/igt@sysfs_clients@busy@vecs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb6/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i9=
15#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19809/shard-iclb6/igt@sysfs_clients@recycle-many.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19809/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb6/igt@kms_content_protection@atomic-dpms.html">SKIP<=
/a> ([fdo#109300] / [fdo#111066]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19809/shard-iclb1/igt@kms_content_protection@ato=
mic-dpms.html">FAIL</a> ([i915#3137]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb1/igt@kms_content_protection@legacy.html">FAIL</a> (=
[i915#3137]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19809/shard-iclb8/igt@kms_content_protection@legacy.html">SKIP</a> ([=
fdo#109300] / [fdo#111066]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19809/shard-iclb5/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKI=
P</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19809/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html=
">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9874/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#180] / [i915#1=
814] / [i915#2505] / [i915#2724] / [i915#3002]) -&gt; (<a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19809/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19809/shard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#180] / =
[i915#1814] / [i915#2724] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9874/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9874/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9874/shard-apl2/igt@runner@aborted.ht=
ml">FAIL</a>) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002]) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/shard=
-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19809/shard-apl3/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809/sh=
ard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19809=
/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19809/shard-apl2/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
809/shard-apl3/igt@runner@ab">FAIL</a>) ([i915#180] / [i915#1814] / [i915#2=
724] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0846433611820617358==--

--===============0893732142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0893732142==--
