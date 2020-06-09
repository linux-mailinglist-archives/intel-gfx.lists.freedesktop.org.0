Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D241B1F4655
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 20:30:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426E26E32B;
	Tue,  9 Jun 2020 18:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEEFE6E32A;
 Tue,  9 Jun 2020 18:30:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C55AFA47E1;
 Tue,  9 Jun 2020 18:30:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 09 Jun 2020 18:30:44 -0000
Message-ID: <159172744477.17061.1275628820473655653@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200609122856.10207-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200609122856.10207-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Incrementally_check_for_rewinding_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Incrementally check for rewinding (rev2)
URL   : https://patchwork.freedesktop.org/series/78163/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8603_full -> Patchwork_17915_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17915_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17915_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17915_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-random:
    - shard-tglb:         [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-64x64-random.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-64x64-random.html

  * igt@kms_flip@bo-too-big:
    - shard-tglb:         NOTRUN -> [TIMEOUT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-tglb3/igt@kms_flip@bo-too-big.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8603_full and Patchwork_17915_full:

### New IGT tests (1) ###

  * igt@i915_selftest@mock@ring:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 1.18] s

  

Known issues
------------

  Here are the changes found in Patchwork_17915_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#1528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-glk4/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-glk8/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_balancer@sliced:
    - shard-tglb:         [PASS][6] -> [TIMEOUT][7] ([i915#1936])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-tglb5/igt@gem_exec_balancer@sliced.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-tglb3/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#750])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-tglb1/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-tglb2/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][10] -> [DMESG-WARN][11] ([i915#402])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][12] -> [WARN][13] ([i915#1519])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-hsw7/igt@i915_pm_rc6_residency@rc6-fence.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_addfb_basic@bad-pitch-999:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#95]) +18 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-apl2/igt@kms_addfb_basic@bad-pitch-999.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-apl7/igt@kms_addfb_basic@bad-pitch-999.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][18] -> [DMESG-FAIL][19] ([i915#118] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-glk4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-skl5/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#93] / [i915#95]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-kbl6/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-kbl6/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-hsw4/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-hsw8/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-dp1:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1982])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-kbl7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-dp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-kbl6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([fdo#108145] / [i915#265])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][32] -> [DMESG-WARN][33] ([i915#1982])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-iclb6/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-iclb2/igt@kms_psr@psr2_basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-iclb4/igt@kms_psr@psr2_basic.html

  * igt@perf@polling-parameterized:
    - shard-hsw:          [PASS][36] -> [FAIL][37] ([i915#1542])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-hsw1/igt@perf@polling-parameterized.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-hsw6/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][38] ([i915#1528]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-skl1/igt@gem_ctx_persistence@processes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-skl3/igt@gem_ctx_persistence@processes.html

  * igt@gem_flink_basic@double-flink:
    - shard-kbl:          [DMESG-WARN][40] ([i915#93] / [i915#95]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-kbl2/igt@gem_flink_basic@double-flink.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-kbl3/igt@gem_flink_basic@double-flink.html

  * igt@gem_sync@basic-store-each:
    - shard-apl:          [DMESG-WARN][42] ([i915#95]) -> [PASS][43] +18 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-apl7/igt@gem_sync@basic-store-each.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-apl2/igt@gem_sync@basic-store-each.html

  * igt@gem_wait@await@vecs0:
    - shard-hsw:          [INCOMPLETE][44] ([i915#61]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-hsw4/igt@gem_wait@await@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-hsw4/igt@gem_wait@await@vecs0.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][46] ([i915#402]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-tglb5/igt@i915_module_load@reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-tglb3/igt@i915_module_load@reload.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a:
    - shard-apl:          [DMESG-WARN][48] ([i915#1982]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-apl2/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-apl7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind@pipe-a.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][50] ([i915#1982]) -> [PASS][51] +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][52] ([IGT#5]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][54] ([i915#180]) -> [PASS][55] +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [FAIL][58] ([i915#1928]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-snb:          [SKIP][60] ([fdo#109271]) -> [PASS][61] +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][62] ([i915#1188]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][64] ([fdo#109441]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-iclb7/igt@kms_psr@psr2_dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-iclb2/igt@kms_psr@psr2_dpms.html

  
#### Warnings ####

  * igt@kms_color@pipe-a-degamma:
    - shard-tglb:         [DMESG-FAIL][66] ([i915#1149] / [i915#402]) -> [FAIL][67] ([i915#1149] / [i915#1897])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-tglb3/igt@kms_color@pipe-a-degamma.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-tglb8/igt@kms_color@pipe-a-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][68] ([i915#1319]) -> [DMESG-FAIL][69] ([fdo#110321] / [i915#95])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-kbl3/igt@kms_content_protection@atomic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-kbl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][70] ([i915#1319]) -> [TIMEOUT][71] ([i915#1319] / [i915#1635])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][72] ([i915#1319] / [i915#1635]) -> [TIMEOUT][73] ([i915#1319])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-apl4/igt@kms_content_protection@lic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-apl7/igt@kms_content_protection@lic.html
    - shard-kbl:          [TIMEOUT][74] ([i915#1319]) -> [TIMEOUT][75] ([i915#1319] / [i915#1958])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-kbl1/igt@kms_content_protection@lic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][76] ([i915#1319] / [i915#1635]) -> [FAIL][77] ([fdo#110321])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8603/shard-apl7/igt@kms_content_protection@srm.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/shard-apl2/igt@kms_content_protection@srm.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1897]: https://gitlab.freedesktop.org/drm/intel/issues/1897
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1936]: https://gitlab.freedesktop.org/drm/intel/issues/1936
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8603 -> Patchwork_17915

  CI-20190529: 20190529
  CI_DRM_8603: 03f5a3d90ccfb2f1bb13e293a83d48a0b7da8af0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5699: 201da47cb57b8fadd9bc45be16b82617b32a2c01 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17915: 729184acbb949babd103b9a1ae59de9a6c4918b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17915/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
