Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C48B3D1B76
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 03:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB2E6EDC3;
	Thu, 22 Jul 2021 01:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58E986EDC2;
 Thu, 22 Jul 2021 01:37:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51CA4A882E;
 Thu, 22 Jul 2021 01:37:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
Date: Thu, 22 Jul 2021 01:37:21 -0000
Message-ID: <162691784130.30342.10744746103935400662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Enable_GuC_based_power_management_features?=
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
Content-Type: multipart/mixed; boundary="===============1015125637=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1015125637==
Content-Type: multipart/alternative;
 boundary="===============8122566245289611763=="

--===============8122566245289611763==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Enable GuC based power management features
URL   : https://patchwork.freedesktop.org/series/92831/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10367_full -> Patchwork_20666_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20666_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@cursor:
    - {shard-rkl}:        [SKIP][1] ([i915#1849]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@cursor.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][3] ([fdo#109308]) -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@drm-resources-equal.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][5] ([i915#1397]) -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:
    - {shard-rkl}:        [SKIP][7] ([i915#1845]) -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html

  * igt@perf_pmu@rc6-runtime-pm-long:
    - {shard-rkl}:        [PASS][9] -> [SKIP][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@perf_pmu@rc6-runtime-pm-long.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm-long.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10367_full and Patchwork_20666_full:

### New IGT tests (1) ###

  * igt@i915_selftest@live@slpc:
    - Statuses : 8 pass(s)
    - Exec time: [0.50, 4.91] s

  

Known issues
------------

  Here are the changes found in Patchwork_20666_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-glk:          NOTRUN -> [SKIP][11] ([fdo#109271]) +69 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@feature_discovery@display-3x.html

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][12] ([i915#1839])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb5/igt@feature_discovery@display-4x.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2410])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][16] ([i915#2846])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2842]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#2842]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#2842])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#2842]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#118] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#1888] / [i915#307])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][29] ([i915#2658])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb7/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#768])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][31] ([i915#2724])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb2/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#579])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
    - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#579])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_selftest@mock@uncore:
    - shard-glk:          NOTRUN -> [DMESG-WARN][34] ([i915#3746]) +17 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk2/igt@i915_selftest@mock@uncore.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-glk:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk2/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +29 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#3359])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][46] ([fdo#109271]) +543 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#2346] / [i915#533])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-kbl6/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109274])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#79])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#2122])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][55] ([i915#180]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109280]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#111825]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +7 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2733])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +5 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][68] ([i915#31])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +217 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl8/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2437])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#111719])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb7/igt@perf_pmu@rc6-runtime-pm.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2994]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@split-25:
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][74] ([i915#658]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@feature_discovery@psr1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][76] ([i915#2410]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][78] ([i915#2842]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][80] ([i915#2842]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][82] ([i915#2842]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [FAIL][84] ([i915#2849]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_offset@clear:
    - {shard-rkl}:        [FAIL][86] ([i915#3160]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@gem_mmap_offset@clear.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-5/igt@gem_mmap_offset@clear.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][88] ([i915#1436] / [i915#716]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_backlight@basic-brightness:
    - {shard-rkl}:        [SKIP][90] ([i915#3012]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_backlight@basic-brightness.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][92] ([i915#2782]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
    - {shard-rkl}:        [SKIP][94] ([i915#3721]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - {shard-rkl}:        [SKIP][96] ([fdo#111614]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [FAIL][98] ([i915#3678]) -> [PASS][99] +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - {shard-rkl}:        [SKIP][100] ([i915#1149] / [i915#1849]) -> [PASS][101] +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - {shard-rkl}:        [SKIP][102] ([fdo#112022]) -> [PASS][103] +11 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - {shard-rkl}:        [SKIP][104] ([fdo#111825]) -> [PASS][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - {shard-rkl}:        [SKIP][106] ([fdo#111314]) -> [PASS][107] +5 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [FAIL][108] ([i915#3451]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][110] ([i915#79]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][112] ([i915#180]) -> [PASS][113] +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][114] ([i915#2122]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][116] ([i915#1849]) -> [PASS][117] +30 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][118] ([i915#1188]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl5/igt@kms_hdr@bpc-switch.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][120] ([fdo#108145] / [i915#265]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
    - {shard-rkl}:        [SKIP][122] ([i915#1849] / [i915#3558]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][124] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][126] ([fdo#109441]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr@sprite_blt:
    - {shard-rkl}:        [SKIP][128] ([i915#1072]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_psr@sprite_blt.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_psr@sprite_blt.html

  * igt@kms_vblank@pipe-c-wait-busy:
    - {shard-rkl}:        [SKIP][130] ([i915#1845]) -> [PASS][131] +15 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_vblank@pipe-c-wait-busy.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_vblank@pipe-c-wait-busy.html

  * igt@perf@blocking:
    - {shard-rkl}:        [FAIL][132] ([i915#1542]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@perf@blocking.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-1/igt@perf@blocking.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][134] ([i915#1542]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk9/igt@perf@polling-parameterized.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk7/igt@perf@polling-parameterized.html

  * igt@perf_pmu@rc6-runtime-pm:
    - {shard-rkl}:        [SKIP][136] -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-2/igt@perf_pmu@rc6-runtime-pm.html

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - {shard-rkl}:        [FAIL][138] ([i915#3259]) -> [PASS][139] +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-1/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][140] ([i915#588]) -> [SKIP][141] ([i915#658])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][142] ([i915#2920]) -> [SKIP][143] ([i915#658]) +2 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.o

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/index.html

--===============8122566245289611763==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Enable GuC based power management features</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92831/">https://patchwork.freedesktop.org/series/92831/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10367_full -&gt; Patchwork_20666_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20666_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@cursor.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@i915_pm_rpm@cursor.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-rpm.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm-long:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@perf_pmu@rc6-runtime-pm-long.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm-long.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10367_full and Patchwork_20666_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.50, 4.91] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20666_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@feature_discovery@display-3x.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +69 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb5/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#1888] / [i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb7/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb2/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#579])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#579])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@uncore:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk2/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a> ([i915#3746]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.o">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk2/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl8/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +543 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-kbl6/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#111825]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb7/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl8/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +217 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-tglb7/igt@perf_pmu@rc6-runtime-pm.html">SKIP</a> ([fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@sysfs_clients@fair-7.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk1/igt@sysfs_clients@split-25.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@feature_discovery@psr1.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-5/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk2/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">SKIP</a> ([fdo#111614]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> ([i915#3678]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">FAIL</a> ([i915#3451]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl5/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-none:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb1/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_psr@sprite_blt.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_psr@sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_vblank@pipe-c-wait-busy.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-6/igt@kms_vblank@pipe-c-wait-busy.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@perf@blocking.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-1/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk9/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-glk7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-2/igt@perf_pmu@rc6-runtime-pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@sysfs_timeslice_duration@timeout@rcs0.html">FAIL</a> ([i915#3259]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-rkl-1/igt@sysfs_timeslice_duration@timeout@rcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#588]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20666/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============8122566245289611763==--

--===============1015125637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1015125637==--
