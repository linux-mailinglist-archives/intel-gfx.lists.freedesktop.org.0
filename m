Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5592B6048D6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 16:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0904210E257;
	Wed, 19 Oct 2022 14:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9323110E257;
 Wed, 19 Oct 2022 14:10:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28EE4AA917;
 Wed, 19 Oct 2022 14:10:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0727853221454940084=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Wed, 19 Oct 2022 14:10:38 -0000
Message-ID: <166618863813.29707.15858089857202090236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRGVm?=
 =?utf-8?q?eature_Interlace_modes_for_Display_=3E=3D_12_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0727853221454940084==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Defeature Interlace modes for Display >= 12 (rev2)
URL   : https://patchwork.freedesktop.org/series/109773/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12258_full -> Patchwork_109773v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109773v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109773v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109773v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-2:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk9/igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk2/igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-2.html

  
#### Warnings ####

  * igt@kms_rotation_crc@primary-x-tiled-reflect-x-180:
    - shard-apl:          [SKIP][3] ([fdo#109271]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-apl1/igt@kms_rotation_crc@primary-x-tiled-reflect-x-180.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-apl8/igt@kms_rotation_crc@primary-x-tiled-reflect-x-180.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][5], [FAIL][6], [FAIL][7]) ([i915#4312]) -> ([FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11]) ([i915#3002] / [i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-skl9/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-skl4/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-skl4/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl10/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl6/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl9/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-dg1-15/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - {shard-rkl}:        [PASS][13] -> [INCOMPLETE][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-rkl-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-rkl-5/igt@i915_suspend@basic-s2idle-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_109773v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39]) -> ([PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [FAIL][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64]) ([i915#4392])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk8/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk9/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk9/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk9/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk9/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk9/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk9/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk9/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk6/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk5/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk3/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk5/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#1839])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@feature_discovery@display-4x.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][66] ([i915#4991])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl4/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([i915#4525])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][69] ([i915#2846])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][70] ([i915#2842])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][71] -> [FAIL][72] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_params@no-bsd:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109283])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_exec_params@no-bsd.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#768])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#3297])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@probe:
    - shard-iclb:         NOTRUN -> [FAIL][77] ([i915#7224])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_userptr_blits@probe.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109289])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gen7_exec_parse@bitmasks.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#588])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_selftest@mock@requests:
    - shard-iclb:         [PASS][80] -> [INCOMPLETE][81] ([i915#7267])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb8/igt@i915_selftest@mock@requests.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb3/igt@i915_selftest@mock@requests.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +6 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109278]) +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109278] / [i915#3886]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109284] / [fdo#111827])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_chamelium@dp-hpd.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#3555]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#4103])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_cursor_legacy@short-busy-flip-before-cursor.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109274])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2672]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#2672] / [i915#3555]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109280]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][93] ([i915#4573]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1.html

  * igt@kms_plane_lowres@tiling-none@pipe-a-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#3536]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_plane_lowres@tiling-none@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271]) +118 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#2920])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#658]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109642] / [fdo#111068] / [i915#658])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@cursor_render:
    - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk6/igt@kms_psr@cursor_render.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([fdo#109441]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][102] ([i915#4939])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_psr@suspend.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c:
    - shard-snb:          NOTRUN -> [SKIP][103] ([fdo#109271]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-snb5/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([i915#2437])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@rc6-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][105] ([i915#7252])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl6/igt@perf_pmu@rc6-suspend.html

  * igt@sysfs_clients@split-50:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#2994])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-rkl}:        [SKIP][107] ([i915#6252]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_eio@hibernate:
    - shard-snb:          [INCOMPLETE][109] -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-snb7/igt@gem_eio@hibernate.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-snb5/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][111] ([i915#6259]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-rkl-1/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][113] ([i915#4525]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-iclb:         [INCOMPLETE][115] ([i915#6755]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb3/igt@gem_exec_whisper@basic-queues-priority-all.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_readwrite@new-obj:
    - {shard-rkl}:        [SKIP][117] ([i915#3282]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-rkl-1/igt@gem_readwrite@new-obj.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-rkl-5/igt@gem_readwrite@new-obj.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][119] ([i915#4281]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_selftest@mock@requests:
    - shard-glk:          [INCOMPLETE][121] -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk1/igt@i915_selftest@mock@requests.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk6/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - {shard-rkl}:        [INCOMPLETE][123] -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-rkl-5/igt@i915_suspend@fence-restore-tiled2untiled.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][125] ([i915#79]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][127] ([i915#3555]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][129] ([i915#5235]) -> [PASS][130] +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][131] ([fdo#109441]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - {shard-dg1}:        [FAIL][133] ([i915#4349]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-dg1-12/igt@perf_pmu@busy-double-start@vcs1.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-dg1-12/igt@perf_pmu@busy-double-start@vcs1.html

  
#### Warnings ####

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][135] ([i915#658]) -> [SKIP][136] ([i915#2920])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][137] ([fdo#111068] / [i915#658]) -> [SKIP][138] ([i915#2920])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#7224]: https://gitlab.freedesktop.org/drm/intel/issues/7224
  [i915#7252]: https://gitlab.freedesktop.org/drm/intel/issues/7252
  [i915#7267]: https://gitlab.freedesktop.org/drm/intel/issues/7267
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12258 -> Patchwork_109773v2

  CI-20190529: 20190529
  CI_DRM_12258: 46aaaf749a4300985a8415b327a96a2bffb63018 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7019: fdbafce2b74e84739bb1d81223ae6f01fb442980 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109773v2: 46aaaf749a4300985a8415b327a96a2bffb63018 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/index.html

--===============0727853221454940084==
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
<tr><td><b>Series:</b></td><td>Defeature Interlace modes for Display &gt;=
=3D 12 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109773/">https://patchwork.freedesktop.org/series/109773/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109773v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109773v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12258_full -&gt; Patchwork_109773v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109773v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109773v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109773v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-2:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-glk9/igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-2.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109773v2/shard-glk2/igt@kms_plane_lowres@tiling-none@pipe-c-hdmi-a-2=
.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_rotation_crc@primary-x-tiled-reflect-x-180:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-apl1/igt@kms_rotation_crc@primary-x-tiled-reflect-x-180=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109773v2/shard-apl8/igt@kms_rotation_crc@primary-x-tiled-r=
eflect-x-180.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12258/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-skl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12258/shard-skl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-sk=
l10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109773v2/shard-skl6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v=
2/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-skl4/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-dg1-15/igt@gem_ctx_isolation@preserv=
ation-s3@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-rkl-1/igt@i915_suspend@basic-s2idle-without-i915.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109773v2/shard-rkl-5/igt@i915_suspend@basic-s2idle-without-i915.html">INC=
OMPLETE</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109773v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12258/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12258/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12258/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/sha=
rd-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12258/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12258/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12258/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12258/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2258/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12258/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12258/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12258/shard-glk8/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
773v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109773v2/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109773v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109773v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9773v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109773v2/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109773v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109773v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk1/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9773v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109773v2/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109773v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109773v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-glk5/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@feature_discovery@display-=
4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl4/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109773v2/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl4/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_exec_fair@basic-none-s=
hare@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v=
2/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_exec_params@no-bsd.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
83">fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_render_copy@yf-tiled-t=
o-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@probe:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_userptr_blits@probe.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/72=
24">i915#7224</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@gen7_exec_parse@bitmasks.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/588">i915#588</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb8/igt@i915_selftest@mock@requests.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/=
shard-iclb3/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/7267">i915#7267</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_ccs@pipe-a-crc-primary=
-rotation-180-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +5 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_ccs@pipe-b-crc-primary=
-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_chamelium@dp-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109284=
">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_chamelium@dp-hpd-enable=
-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_cursor_crc@cursor-offs=
creen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_flip@2x-wf_vblank-ts-c=
heck.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_plane_lowres@tiling-no=
ne@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3536">i915#3536</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_plane_scaling@planes-do=
wnscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +118 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb6/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-glk6/igt@kms_psr@cursor_render.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shar=
d-iclb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl7/igt@kms_psr@suspend.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939"=
>i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-c:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-snb5/igt@kms_universal_plane@univers=
al-plane-pageflip-windowed-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-skl6/igt@perf_pmu@rc6-suspend.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7252">i915#7252</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@sysfs_clients@split-50.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i=
915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109773v2/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-snb7/igt@gem_eio@hibernate.html">INCOMPLETE</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard=
-snb5/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
773v2/shard-rkl-1/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109773v2/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb3/igt@gem_exec_whisper@basic-queues-priority-all.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/6755">i915#6755</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109773v2/shard-iclb2/igt@gem_exec_whisper@basic-queues-pr=
iority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-rkl-1/igt@gem_readwrite@new-obj.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/=
shard-rkl-5/igt@gem_readwrite@new-obj.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/=
shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-glk1/igt@i915_selftest@mock@requests.html">INCOMPLETE</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1097=
73v2/shard-glk6/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-rkl-5/igt@i915_suspend@fence-restore-tiled2untiled.html=
">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109773v2/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109773v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb=
3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pi=
pe-a-default-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109773v2/shard-iclb3/igt@km=
s_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-=
1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109773v2/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-dg1-12/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109773v2/shard-dg1-12/igt@perf_pmu@busy-double-start@vcs1.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109773v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12258/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109773v2/shard-iclb2/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12258 -&gt; Patchwork_109773v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12258: 46aaaf749a4300985a8415b327a96a2bffb63018 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7019: fdbafce2b74e84739bb1d81223ae6f01fb442980 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109773v2: 46aaaf749a4300985a8415b327a96a2bffb63018 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0727853221454940084==--
