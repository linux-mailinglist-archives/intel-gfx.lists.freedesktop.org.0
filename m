Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6A33D1F3F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 09:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C667E6E953;
	Thu, 22 Jul 2021 07:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E37566E938;
 Thu, 22 Jul 2021 07:47:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC6E1A0118;
 Thu, 22 Jul 2021 07:47:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 22 Jul 2021 07:47:21 -0000
Message-ID: <162694004187.30343.15015793112121964971@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721223043.834562-1-matthew.d.roper@intel.com>
In-Reply-To: <20210721223043.834562-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ0kg?=
 =?utf-8?q?pass_for_reviewed_Xe=5FHP_SDV_and_DG2_patches?=
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
Content-Type: multipart/mixed; boundary="===============0387925154=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0387925154==
Content-Type: multipart/alternative;
 boundary="===============6206344816777003537=="

--===============6206344816777003537==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: CI pass for reviewed Xe_HP SDV and DG2 patches
URL   : https://patchwork.freedesktop.org/series/92853/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10367_full -> Patchwork_20673_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20673_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20673_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20673_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@cursor:
    - {shard-rkl}:        [SKIP][1] ([i915#1849]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@cursor.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@gem-execbuf:
    - {shard-rkl}:        [SKIP][3] ([fdo#109308]) -> [SKIP][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:
    - {shard-rkl}:        [SKIP][5] ([i915#1845]) -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html

  * igt@perf_pmu@rc6-runtime-pm-long:
    - {shard-rkl}:        [PASS][7] -> [SKIP][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@perf_pmu@rc6-runtime-pm-long.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm-long.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uvec4-short_ivec2-double_dmat2x4 (NEW):
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][9] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/pig-glk-j5005/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uvec4-short_ivec2-double_dmat2x4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10367_full and Patchwork_20673_full:

### New Piglit tests (4) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat2_array5-int_ivec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat3x2-double_dmat2x3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uint-short_int-double_dmat2x4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uvec4-short_ivec2-double_dmat2x4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_20673_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-glk:          NOTRUN -> [SKIP][10] ([fdo#109271]) +69 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@feature_discovery@display-3x.html

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#1839])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@feature_discovery@display-4x.html

  * igt@gem_ctx_persistence@engines-hostile:
    - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1099]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb6/igt@gem_ctx_persistence@engines-hostile.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][13] ([i915#2846])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl3/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2842]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][22] ([i915#2658])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#768])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3323])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][25] ([i915#2724])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb2/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#579])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#579])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_selftest@mock@uncore:
    - shard-glk:          NOTRUN -> [DMESG-WARN][28] ([i915#3746]) +17 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk6/igt@i915_selftest@mock@uncore.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          NOTRUN -> [DMESG-WARN][29] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl8/igt@i915_suspend@forcewake.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278]) +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-glk:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk6/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_chamelium@dp-edid-change-during-suspend.html

  * igt@kms_color@pipe-c-ctm-green-to-red:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl10/igt@kms_color@pipe-c-ctm-green-to-red.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl7/igt@kms_color@pipe-c-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109284] / [fdo#111827])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][41] ([i915#1319]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3359])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271]) +296 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([i915#155] / [i915#180] / [i915#636])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl1/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109274])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#79])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#2122])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2672]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109280]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111825]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +7 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#1188])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][62] ([i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([fdo#108145] / [i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - shard-snb:          [PASS][66] -> [SKIP][67] ([fdo#109271])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-snb2/igt@kms_plane_cursor@pipe-b-overlay-size-64.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2733])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-glk:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#658]) +5 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109441]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +206 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#533]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#1542])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl2/igt@perf@polling-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl1/igt@perf@polling-parameterized.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111719])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb7/igt@perf_pmu@rc6-runtime-pm.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - {shard-rkl}:        [SKIP][80] ([i915#658]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@feature_discovery@psr2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][82] ([i915#2410]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][84] ([i915#2842]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-rkl}:        [FAIL][86] ([i915#2842]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][88] ([i915#2842]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][90] ([i915#2842]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [FAIL][92] ([i915#2842]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][94] ([i915#2849]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][96] ([i915#2190]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_offset@clear:
    - {shard-rkl}:        [FAIL][98] ([i915#3160]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@gem_mmap_offset@clear.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-2/igt@gem_mmap_offset@clear.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][100] ([i915#1436] / [i915#716]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][102] ([i915#3721]) -> [PASS][103] +5 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - {shard-rkl}:        [SKIP][104] ([fdo#111614]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [FAIL][106] ([i915#3678]) -> [PASS][107] +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-c-ctm-max:
    - {shard-rkl}:        [SKIP][108] ([i915#1149] / [i915#1849]) -> [PASS][109] +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_color@pipe-c-ctm-max.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - {shard-rkl}:        [SKIP][110] ([fdo#112022]) -> [PASS][111] +13 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - {shard-rkl}:        [SKIP][112] ([fdo#111825]) -> [PASS][113] +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - {shard-rkl}:        [SKIP][114] ([fdo#111314]) -> [PASS][115] +8 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [FAIL][116] ([i915#3451]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_fbcon_fbt@psr:
    - {shard-rkl}:        [SKIP][118] ([fdo#110189]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][120] ([i915#79]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][124] ([i915#1849]) -> [PASS][125] +45 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][126] ([fdo#108145] / [i915#265]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
    - {shard-rkl}:        [SKIP][128] ([i915#1849] / [i915#3558]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][130] ([fdo#109441]) -> [PASS][131] +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@sprite_render:
    - {shard-rkl}:        [SKIP][132] ([i915#1072]) -> [PASS][133] +3 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_psr@sprite_render.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_psr@sprite_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset:
    - {shard-rkl}:        [SKIP][134] ([i915#1845]) -> [PASS][135] +23 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_vblank@pipe-a-ts-continuation-modeset.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][136] ([i915#1542]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk9/igt@perf@polling-parameterized.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk6/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][138] ([i915#1722]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl1/igt@perf@polling-small-buf.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl3/igt@perf@polling-small-buf.html
    - {s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/index.html

--===============6206344816777003537==
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
<tr><td><b>Series:</b></td><td>CI pass for reviewed Xe_HP SDV and DG2 patches</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92853/">https://patchwork.freedesktop.org/series/92853/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10367_full -&gt; Patchwork_20673_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20673_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20673_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20673_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@cursor.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@i915_pm_rpm@cursor.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm-long:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@perf_pmu@rc6-runtime-pm-long.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@perf_pmu@rc6-runtime-pm-long.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uvec4-short_ivec2-double_dmat2x4 (NEW):<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/pig-glk-j5005/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uvec4-short_ivec2-double_dmat2x4.html">INCOMPLETE</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10367_full and Patchwork_20673_full:</p>
<h3>New Piglit tests (4)</h3>
<ul>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat2_array5-int_ivec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat3x2-double_dmat2x3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uint-short_int-double_dmat2x4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uvec4-short_ivec2-double_dmat2x4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20673_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@feature_discovery@display-3x.html">SKIP</a> ([fdo#109271]) +69 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb6/igt@gem_ctx_persistence@engines-hostile.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb2/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#579])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#579])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@uncore:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk6/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a> ([i915#3746]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl8/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk6/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_chamelium@dp-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl10/igt@kms_color@pipe-c-ctm-green-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl7/igt@kms_color@pipe-c-ctm-green-to-red.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +296 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl1/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#111825]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-64:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-snb2/igt@kms_plane_cursor@pipe-b-overlay-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-snb6/igt@kms_plane_cursor@pipe-b-overlay-size-64.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb6/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109271]) +206 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl2/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb7/igt@perf_pmu@rc6-runtime-pm.html">SKIP</a> ([fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl3/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk9/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-2/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk6/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-90:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">SKIP</a> ([fdo#111614]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> ([i915#3678]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_color@pipe-c-ctm-max.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_color@pipe-c-ctm-max.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">FAIL</a> ([i915#3451]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([fdo#110189]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html">PASS</a> +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-none:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_psr@sprite_render.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_psr@sprite_render.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_vblank@pipe-a-ts-continuation-modeset.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset.html">PASS</a> +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk9/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-glk6/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl1/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20673/shard-skl3/igt@perf@polling-small-buf.html">PASS</a></p>
</li>
<li>
<p>{s</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6206344816777003537==--

--===============0387925154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0387925154==--
