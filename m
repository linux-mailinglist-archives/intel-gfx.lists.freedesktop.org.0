Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 711EF2CC9D0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 23:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1653B6EB1C;
	Wed,  2 Dec 2020 22:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 628A16EB1B;
 Wed,  2 Dec 2020 22:46:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A6CFA9A42;
 Wed,  2 Dec 2020 22:46:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 02 Dec 2020 22:46:18 -0000
Message-ID: <160694917833.4091.15765129943975436734@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201202173444.14903-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201202173444.14903-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gem=3A_Limit_lmem_sca?=
 =?utf-8?q?tterlist_elements_to_UINT=5FMAX?=
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
Content-Type: multipart/mixed; boundary="===============0589274739=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0589274739==
Content-Type: multipart/alternative;
 boundary="===============2439480830678158980=="

--===============2439480830678158980==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/gem: Limit lmem scatterlist elements to UINT_MAX
URL   : https://patchwork.freedesktop.org/series/84502/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9424_full -> Patchwork_19043_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9424_full and Patchwork_19043_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19043_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#2389])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-apl4/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk9/igt@gem_exec_whisper@basic-normal-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-glk9/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][5] -> [SKIP][6] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl2/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl10/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl2/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#2122])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2598])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1542])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl7/igt@perf@blocking.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl9/igt@perf@blocking.html

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1732])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl2/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [INCOMPLETE][25] ([i915#1580] / [i915#926]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb7/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb3/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@mock@memory_region:
    - shard-skl:          [INCOMPLETE][27] ([i915#2753]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl3/igt@i915_selftest@mock@memory_region.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl2/igt@i915_selftest@mock@memory_region.html
    - shard-tglb:         [INCOMPLETE][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb1/igt@i915_selftest@mock@memory_region.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb8/igt@i915_selftest@mock@memory_region.html
    - shard-glk:          [INCOMPLETE][31] ([i915#2753]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk8/igt@i915_selftest@mock@memory_region.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-glk2/igt@i915_selftest@mock@memory_region.html
    - shard-apl:          [INCOMPLETE][33] ([i915#2753]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl4/igt@i915_selftest@mock@memory_region.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-apl2/igt@i915_selftest@mock@memory_region.html
    - shard-iclb:         [INCOMPLETE][35] ([i915#2753]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb2/igt@i915_selftest@mock@memory_region.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb7/igt@i915_selftest@mock@memory_region.html
    - shard-kbl:          [INCOMPLETE][37] ([i915#2753]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl7/igt@i915_selftest@mock@memory_region.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-kbl1/igt@i915_selftest@mock@memory_region.html
    - shard-hsw:          [INCOMPLETE][39] ([i915#2753]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-hsw6/igt@i915_selftest@mock@memory_region.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-hsw1/igt@i915_selftest@mock@memory_region.html
    - shard-snb:          [INCOMPLETE][41] ([i915#2753]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-snb6/igt@i915_selftest@mock@memory_region.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-snb7/igt@i915_selftest@mock@memory_region.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [FAIL][43] ([i915#54]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-kbl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl6/igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-apl3/igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl3/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl5/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
    - shard-tglb:         [FAIL][53] ([i915#2598]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][57] ([i915#123]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@testdisplay:
    - shard-iclb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb2/igt@testdisplay.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb4/igt@testdisplay.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][65] ([i915#2684]) -> [WARN][66] ([i915#1804] / [i915#2684])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][67] ([i915#2680]) -> [WARN][68] ([i915#2681] / [i915#2684])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][69] ([i915#2635]) -> [INCOMPLETE][70] ([i915#1982] / [i915#2635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][71], [FAIL][72]) ([i915#1436] / [i915#2295] / [i915#2426] / [i915#2722]) -> [FAIL][73] ([i915#2295] / [i915#2722])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl7/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl7/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][74], [FAIL][75], [FAIL][76]) ([i915#1580] / [i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][77], [FAIL][78]) ([i915#2295] / [i915#2722] / [i915#483])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb7/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb3/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb4/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb5/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb6/igt@runner@aborted.html
    - shard-apl:          ([FAIL][79], [FAIL][80], [FAIL][81]) ([i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][82], [FAIL][83]) ([i915#2295] / [i915#2722])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl4/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl7/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl3/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-apl7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-apl7/igt@runner@aborted.html
    - shard-glk:          ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#2295] / [i915#2426] / [i915#2722] / [i915#483] / [k.org#202321]) -> ([FAIL][87], [FAIL][88]) ([i915#2295] / [i915#2722] / [k.org#202321])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk8/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk7/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk9/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-glk5/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-glk5/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][89], [FAIL][90], [FAIL][91]) ([i915#1602] / [i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][92], [FAIL][93]) ([i915#1602] / [i915#2295] / [i915#2722])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb8/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb3/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb7/igt@runner@aborted.html
    - shard-skl:          [FAIL][94] ([i915#2295] / [i915#2722]) -> [FAIL][95] ([i915#2295] / [i915#2722] / [i915#483])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl8/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl3/igt@runner@aborted.html

  
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
  [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2753]: https://gitlab.freedesktop.org/drm/intel/issues/2753
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9424 -> Patchwork_19043

  CI-20190529: 20190529
  CI_DRM_9424: 52e59b0a3839bde394be8b5d48b2c1a309b564e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5878: e96c0d8e6952d892bcbbcdf004999880a4dfb42e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19043: 50e1fab50f30a516723e8a1ef3efcb5268e95ba1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/index.html

--===============2439480830678158980==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/gem: =
Limit lmem scatterlist elements to UINT_MAX</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84502/">https://patchwork.freedesktop.org/series/84502/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19043/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19043/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9424_full -&gt; Patchwork_19043_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9424_full and Patchwork_19=
043_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19043_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl2/igt@gem_exec_reloc@basic-many-active@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9043/shard-apl4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-glk9/igt@gem_exec_whisper@basic-normal-all.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043=
/shard-glk9/igt@gem_exec_whisper@basic-normal-all.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl2/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shar=
d-skl10/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19043/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-toggle:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl2/igt@kms_cursor_legacy@short-flip-before-cursor-togg=
le.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19043/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-=
toggle.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-=
edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19043/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interrupt=
ible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2122">i915#2122</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19043/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interru=
ptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2598">i915#2598</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-s=
hrfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19043/shard-tglb8/igt@kms_frontbuffer_tracking@psr=
-1p-offscren-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/=
shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl7/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-skl9/igt@perf=
@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl2/igt@sysfs_timeslice_duration@timeout@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9043/shard-skl3/igt@sysfs_timeslice_duration@timeout@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1732">i915#1732</=
a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1580">i915#=
1580</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/926">=
i915#926</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19043/shard-iclb3/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-skl3/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19043/shard-skl2/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-tglb1/igt@i915_selftest@mock@memory_region.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19043/shard-tglb8/igt@i915_selftest@mock@memory_region.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-glk8/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19043/shard-glk2/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-apl4/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19043/shard-apl2/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-iclb2/igt@i915_selftest@mock@memory_region.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i9=
15#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19043/shard-iclb7/igt@i915_selftest@mock@memory_region.html">PASS</a>=
</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-kbl7/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19043/shard-kbl1/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-hsw6/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19043/shard-hsw1/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-snb6/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19043/shard-snb7/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19043/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">=
PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19043/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor=
-busy-crc-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl6/igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19043/shard-apl3/igt@kms_flip@absolute-wf_vblank-inter=
ruptible@a-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl3/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp=
1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19043/shard-skl5/igt@kms_flip@absolute-wf_vblank-inte=
rruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#=
79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19043/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a>=
</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i9=
15#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19043/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-i=
ndfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb8/igt@kms_frontbuffe=
r_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123"=
>i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19043/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/sha=
rd-skl6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/=
shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb2/igt@testdisplay.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-ic=
lb4/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19043/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2680">i915#2680=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9043/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2635">i915#2635=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9043/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2635">i915#2635</=
a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2722">i915#2722</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/229=
5">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9424/shard-iclb4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1580">i915#1580</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
043/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-iclb6/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9424/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/sh=
ard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19043/shard-apl7/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i=
915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
722">i915#2722</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9424/shard-glk9/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>=
 / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#2=
02321</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19043/shard-glk5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-glk5/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2722">i915#2722</a> / <a href=3D"https://bugzilla.kernel.org/sh=
ow_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9424/shard-tglb1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19043/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-tglb7/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-skl8/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19043/shard-s=
kl3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9424 -&gt; Patchwork_19043</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9424: 52e59b0a3839bde394be8b5d48b2c1a309b564e3 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5878: e96c0d8e6952d892bcbbcdf004999880a4dfb42e @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19043: 50e1fab50f30a516723e8a1ef3efcb5268e95ba1 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2439480830678158980==--

--===============0589274739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0589274739==--
