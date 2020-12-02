Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAED2CC948
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 23:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B3F6EB1B;
	Wed,  2 Dec 2020 22:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 068296EB19;
 Wed,  2 Dec 2020 22:02:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D752AA00E6;
 Wed,  2 Dec 2020 22:02:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 02 Dec 2020 22:02:45 -0000
Message-ID: <160694656584.4091.17746475288347838096@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201202155139.15143-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201202155139.15143-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/gem=3A_Limit_lmem_sca?=
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
Content-Type: multipart/mixed; boundary="===============0864729294=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0864729294==
Content-Type: multipart/alternative;
 boundary="===============6546841091720146929=="

--===============6546841091720146929==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/gem: Limit lmem scatterlist elements to UINT_MAX
URL   : https://patchwork.freedesktop.org/series/84501/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9424_full -> Patchwork_19042_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19042_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19042_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19042_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9424_full and Patchwork_19042_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 175 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19042_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][2] -> [DMESG-WARN][3] ([i915#118] / [i915#95])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_mmap_wc@copy:
    - shard-iclb:         [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb8/igt@gem_mmap_wc@copy.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb2/igt@gem_mmap_wc@copy.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-glk:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk3/igt@i915_pm_rpm@fences-dpms.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk2/igt@i915_pm_rpm@fences-dpms.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-apl6/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#54]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#79])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][14] -> [INCOMPLETE][15] ([i915#155] / [i915#180])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-snb:          [PASS][16] -> [SKIP][17] ([fdo#109271]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([fdo#108145] / [i915#265]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-256:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl1/igt@kms_plane_cursor@pipe-b-overlay-size-256.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl1/igt@kms_plane_cursor@pipe-b-overlay-size-256.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109441]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@sysfs_preempt_timeout@timeout@vecs0:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#2060])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl1/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl1/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][28] ([i915#118] / [i915#95]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][30] ([i915#454]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [INCOMPLETE][32] ([i915#1580] / [i915#926]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb7/igt@i915_selftest@live@hangcheck.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb3/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@mock@memory_region:
    - shard-skl:          [INCOMPLETE][34] ([i915#2753]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl3/igt@i915_selftest@mock@memory_region.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl8/igt@i915_selftest@mock@memory_region.html
    - shard-tglb:         [INCOMPLETE][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb1/igt@i915_selftest@mock@memory_region.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-tglb3/igt@i915_selftest@mock@memory_region.html
    - shard-glk:          [INCOMPLETE][38] ([i915#2753]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk8/igt@i915_selftest@mock@memory_region.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk6/igt@i915_selftest@mock@memory_region.html
    - shard-apl:          [INCOMPLETE][40] ([i915#2753]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl4/igt@i915_selftest@mock@memory_region.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-apl6/igt@i915_selftest@mock@memory_region.html
    - shard-iclb:         [INCOMPLETE][42] ([i915#2753]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb2/igt@i915_selftest@mock@memory_region.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb4/igt@i915_selftest@mock@memory_region.html
    - shard-kbl:          [INCOMPLETE][44] ([i915#2753]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl7/igt@i915_selftest@mock@memory_region.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-kbl3/igt@i915_selftest@mock@memory_region.html
    - shard-snb:          [INCOMPLETE][46] ([i915#2753]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-snb6/igt@i915_selftest@mock@memory_region.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-snb7/igt@i915_selftest@mock@memory_region.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe-a:
    - shard-glk:          [DMESG-WARN][48] ([i915#1982]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk5/igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe-a.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk1/igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe-a.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [FAIL][50] ([i915#54]) -> [PASS][51] +7 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-kbl:          [DMESG-WARN][52] ([i915#1982]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl6/igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-apl8/igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl3/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl8/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][58] ([i915#79]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [FAIL][60] ([i915#49]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
    - shard-tglb:         [DMESG-WARN][62] ([i915#1982]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][64] ([i915#123]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][66] ([i915#1188]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#265]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][70] ([fdo#109441]) -> [PASS][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb6/igt@kms_psr@psr2_basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][72] ([i915#1542]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl7/igt@perf@polling.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl9/igt@perf@polling.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][74] ([i915#1982] / [i915#262]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl3/igt@perf_pmu@module-unload.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl8/igt@perf_pmu@module-unload.html

  * igt@testdisplay:
    - shard-iclb:         [DMESG-WARN][76] ([i915#1982]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb2/igt@testdisplay.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb6/igt@testdisplay.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][78] ([i915#2684]) -> [WARN][79] ([i915#1804] / [i915#2684])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          [DMESG-FAIL][80] ([fdo#108145] / [i915#1982]) -> [FAIL][81] ([fdo#108145] / [i915#265])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][82], [FAIL][83]) ([i915#1436] / [i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][84], [FAIL][85]) ([i915#2295] / [i915#2722] / [i915#483])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-kbl7/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-kbl1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][86], [FAIL][87], [FAIL][88]) ([i915#1580] / [i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][89], [FAIL][90]) ([i915#2295] / [i915#2722])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb3/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][91], [FAIL][92], [FAIL][93]) ([i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][94], [FAIL][95]) ([i915#2295] / [i915#2722])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl3/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl7/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-apl2/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-apl2/igt@runner@aborted.html
    - shard-glk:          ([FAIL][96], [FAIL][97], [FAIL][98]) ([i915#2295] / [i915#2426] / [i915#2722] / [i915#483] / [k.org#202321]) -> ([FAIL][99], [FAIL][100]) ([i915#2295] / [i915#2722] / [i915#483] / [k.org#202321])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk8/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk7/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-glk9/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk3/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk9/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][101], [FAIL][102], [FAIL][103]) ([i915#1602] / [i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][104], [FAIL][105]) ([i915#1602] / [i915#2295] / [i915#2722])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb3/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb8/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-tglb1/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-tglb5/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-tglb8/igt@runner@aborted.html
    - shard-skl:          [FAIL][106] ([i915#2295] / [i915#2722]) -> ([FAIL][107], [FAIL][108]) ([i915#1814] / [i915#2029] / [i915#2295] / [i915#2722])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-skl8/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl1/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2060]: https://gitlab.freedesktop.org/drm/intel/issues/2060
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2753]: https://gitlab.freedesktop.org/drm/intel/issues/2753
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
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

  * Linux: CI_DRM_9424 -> Patchwork_19042

  CI-20190529: 20190529
  CI_DRM_9424: 52e59b0a3839bde394be8b5d48b2c1a309b564e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5878: e96c0d8e6952d892bcbbcdf004999880a4dfb42e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19042: 9f373e51c9a903cd707fec43e06600c6bb6f59b4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/index.html

--===============6546841091720146929==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/gem: =
Limit lmem scatterlist elements to UINT_MAX</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84501/">https://patchwork.freedesktop.org/series/84501/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19042/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19042/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9424_full -&gt; Patchwork_19042_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19042_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19042_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19042_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_reloc@basic-wide-active@vcs1:<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19042/shard-iclb2/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9424_full and Patchwork_19=
042_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 175 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19042_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
042/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#=
95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb8/igt@gem_mmap_wc@copy.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb2/ig=
t@gem_mmap_wc@copy.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-glk3/igt@i915_pm_rpm@fences-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk=
2/igt@i915_pm_rpm@fences-dpms.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl8/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1904=
2/shard-apl6/igt@kms_big_fb@linear-64bpp-rotate-180.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19042/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19042/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19042/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/155">i915#155</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-in=
dfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19042/shard-snb7/igt@kms_frontbuffer_tracking@fbc-1p-prims=
crn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-s=
hrfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19042/shard-tglb3/igt@kms_frontbuffer_tracking@psr=
-1p-offscren-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19042/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-256:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl1/igt@kms_plane_cursor@pipe-b-overlay-size-256.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19042/shard-skl1/igt@kms_plane_cursor@pipe-b-overlay-size-256.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/=
shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl1/igt@sysfs_preempt_timeout@timeout@vecs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_190=
42/shard-skl1/igt@sysfs_preempt_timeout@timeout@vecs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2060">i915#2060</a>)<=
/li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-glk3/igt@gem_exec_whisper@basic-forked-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19042/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-icl=
b6/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1580">i915#=
1580</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/926">=
i915#926</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19042/shard-iclb3/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
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
work_19042/shard-skl8/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-tglb1/igt@i915_selftest@mock@memory_region.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19042/shard-tglb3/igt@i915_selftest@mock@memory_region.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-glk8/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19042/shard-glk6/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-apl4/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19042/shard-apl6/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-iclb2/igt@i915_selftest@mock@memory_region.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i9=
15#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19042/shard-iclb4/igt@i915_selftest@mock@memory_region.html">PASS</a>=
</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-kbl7/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19042/shard-kbl3/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-snb6/igt@i915_selftest@mock@memory_region.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2753">i91=
5#2753</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19042/shard-snb7/igt@i915_selftest@mock@memory_region.html">PASS</a></=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe=
-a:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-glk5/igt@kms_atomic_transition@plane-all-transition-nonb=
locking@hdmi-a-1-pipe-a.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk1/igt@kms_atomic=
_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe-a.html">PASS</a>=
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
work_19042/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">P=
ASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19042/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor=
-busy-crc-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl6/igt@kms_flip@absolute-wf_vblank-interruptible@a-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19042/shard-apl8/igt@kms_flip@absolute-wf_vblank-inter=
ruptible@a-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl3/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp=
1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19042/shard-skl8/igt@kms_flip@absolute-wf_vblank-inte=
rruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915=
#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19042/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-ind=
fb-draw-mmap-gtt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19042/shard-skl8/igt@kms_frontbuffer_tracking@ps=
r-1p-offscren-pri-indfb-draw-mmap-gtt.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9424/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-in=
dfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-tglb3/igt@kms_frontbuffer=
_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123"=
>i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19042/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/sha=
rd-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19042/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-cons=
tant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb6/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard=
-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl7/igt@perf@polling.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-skl9/igt=
@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-skl3/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/262">i915#26=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19042/shard-skl8/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb2/igt@testdisplay.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-ic=
lb6/igt@testdisplay.html">PASS</a></li>
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
19042/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">=
DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
08145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19042/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alp=
ha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/265">i915#265</a>)</li>
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
.org/drm/intel/issues/2722">i915#2722</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-kbl1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19042/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-iclb4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9424/shard-iclb7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1580">i915#1580</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
042/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-iclb2/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9424/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9424/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9424/shard-apl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/sh=
ard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19042/shard-apl2/igt@runner@aborted.html">FA=
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
work_19042/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-glk9/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kernel.or=
g/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
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
19042/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-tglb8/igt@runner@aborte=
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
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19042/shard-=
skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19042/shard-skl3/igt@runner@aborted.html">FAIL</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#=
1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2029"=
>i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9424 -&gt; Patchwork_19042</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9424: 52e59b0a3839bde394be8b5d48b2c1a309b564e3 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5878: e96c0d8e6952d892bcbbcdf004999880a4dfb42e @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19042: 9f373e51c9a903cd707fec43e06600c6bb6f59b4 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6546841091720146929==--

--===============0864729294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0864729294==--
