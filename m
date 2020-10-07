Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B805286155
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 16:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB396E8F9;
	Wed,  7 Oct 2020 14:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54C246E8F8;
 Wed,  7 Oct 2020 14:36:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BA1EA47DB;
 Wed,  7 Oct 2020 14:36:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 07 Oct 2020 14:36:31 -0000
Message-ID: <160208139127.15197.17146919526003270536@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201007093638.15006-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201007093638.15006-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/jsl=3A_Split_EHL/JSL_platform_info_and_PCI_ids?=
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
Content-Type: multipart/mixed; boundary="===============1178828004=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1178828004==
Content-Type: multipart/alternative;
 boundary="===============4737787326785485399=="

--===============4737787326785485399==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/jsl: Split EHL/JSL platform info and PCI ids
URL   : https://patchwork.freedesktop.org/series/82437/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9107_full -> Patchwork_18645_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_18645_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18645_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18645_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [FAIL][1] ([i915#1888]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-hsw8/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-skl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_18645_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-snb:          [PASS][6] -> [INCOMPLETE][7] ([i915#82])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-snb2/igt@gem_fenced_exec_thrash@no-spare-fences.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [PASS][8] -> [TIMEOUT][9] ([i915#2424])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl8/igt@gem_userptr_blits@sync-unmap-cycles.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl4/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][10] -> [INCOMPLETE][11] ([i915#300])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-skl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +7 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl9/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl3/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-hsw:          [PASS][14] -> [FAIL][15] ([i915#2370])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-tglb:         [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +8 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109441]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@parallel@rcs0:
    - shard-hsw:          [FAIL][22] ([i915#1888]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-hsw6/igt@gem_exec_fence@parallel@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-hsw8/igt@gem_exec_fence@parallel@rcs0.html

  * igt@gem_mmap_offset@blt-coherency:
    - shard-apl:          [FAIL][24] ([i915#1635]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-apl4/igt@gem_mmap_offset@blt-coherency.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-apl4/igt@gem_mmap_offset@blt-coherency.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][26] ([i915#82]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-apl:          [FAIL][28] ([i915#1635] / [i915#2521]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-apl2/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-apl1/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][30] ([i915#300]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][32] ([i915#72]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-skl:          [DMESG-WARN][34] ([i915#1982]) -> [PASS][35] +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][36] ([i915#79]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [FAIL][40] ([i915#2122]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - shard-tglb:         [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][44] ([i915#1188]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][46] ([i915#198]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][48] ([i915#165] / [i915#78]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-kbl2/igt@kms_plane@plane-position-hole-dpms-pipe-c-planes.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-kbl2/igt@kms_plane@plane-position-hole-dpms-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][50] ([fdo#108145] / [i915#265]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][52] ([fdo#109441]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-iclb4/igt@kms_psr@psr2_suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][54] ([i915#1635] / [i915#31]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-apl3/igt@kms_setmode@basic.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-apl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][56] ([i915#1982]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-iclb6/igt@perf_pmu@module-unload.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-iclb5/igt@perf_pmu@module-unload.html

  * igt@sysfs_preempt_timeout@timeout@bcs0:
    - shard-skl:          [FAIL][58] ([i915#2060]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html

  * igt@sysfs_timeslice_duration@timeout@vcs0:
    - shard-skl:          [FAIL][60] ([i915#1732]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl7/igt@sysfs_timeslice_duration@timeout@vcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl6/igt@sysfs_timeslice_duration@timeout@vcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-tglb:         [FAIL][62] -> [FAIL][63] ([i915#2389]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-tglb7/igt@gem_exec_reloc@basic-many-active@vcs1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-tglb6/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [DMESG-WARN][64] ([i915#1982]) -> [DMESG-FAIL][65] ([i915#1982])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-WARN][66] ([i915#1982]) -> [DMESG-FAIL][67] ([fdo#108145] / [i915#1982])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][69] ([i915#1982])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2060]: https://gitlab.freedesktop.org/drm/intel/issues/2060
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9107 -> Patchwork_18645

  CI-20190529: 20190529
  CI_DRM_9107: f0a9b069a83f0ab30eb2f4d632cc869555f98cde @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5803: 33f07391e5f6a8d9323e471c81db3f29f91ed4d7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18645: 210bd6977cda4102b53b2876ca8e118f523a5359 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/index.html

--===============4737787326785485399==
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
<tr><td><b>Series:</b></td><td>drm/i915/jsl: Split EHL/JSL platform info and PCI ids</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82437/">https://patchwork.freedesktop.org/series/82437/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9107_full -&gt; Patchwork_18645_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_18645_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18645_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18645_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@gem_partial_pwrite_pread@writes-after-reads-display:<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-hsw8/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_async_flips@alternate-sync-async-flip}:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18645_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-glk3/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-snb2/igt@gem_fenced_exec_thrash@no-spare-fences.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-snb6/igt@gem_fenced_exec_thrash@no-spare-fences.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl8/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl4/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl9/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl3/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#2370</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@parallel@rcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-hsw6/igt@gem_exec_fence@parallel@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-hsw8/igt@gem_exec_fence@parallel@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@blt-coherency:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-apl4/igt@gem_mmap_offset@blt-coherency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-apl4/igt@gem_mmap_offset@blt-coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-apl2/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-apl1/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms-pipe-c-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-kbl2/igt@kms_plane@plane-position-hole-dpms-pipe-c-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-kbl2/igt@kms_plane@plane-position-hole-dpms-pipe-c-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-iclb4/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-apl3/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-apl7/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-iclb6/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-iclb5/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2060">i915#2060</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl1/igt@sysfs_preempt_timeout@timeout@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl7/igt@sysfs_timeslice_duration@timeout@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1732">i915#1732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl6/igt@sysfs_timeslice_duration@timeout@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-tglb7/igt@gem_exec_reloc@basic-many-active@vcs1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-tglb6/igt@gem_exec_reloc@basic-many-active@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9107/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18645/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9107 -&gt; Patchwork_18645</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9107: f0a9b069a83f0ab30eb2f4d632cc869555f98cde @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5803: 33f07391e5f6a8d9323e471c81db3f29f91ed4d7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18645: 210bd6977cda4102b53b2876ca8e118f523a5359 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4737787326785485399==--

--===============1178828004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1178828004==--
