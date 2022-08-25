Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B281A5A0773
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 04:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0945810FC74;
	Thu, 25 Aug 2022 02:45:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD7B710FC74;
 Thu, 25 Aug 2022 02:45:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E8DFA47EB;
 Thu, 25 Aug 2022 02:45:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2815905138077572135=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 25 Aug 2022 02:45:05 -0000
Message-ID: <166139550522.24644.18338225418990334282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220823202449.83727-1-matthew.d.roper@intel.com>
In-Reply-To: <20220823202449.83727-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Incorporate_Wa=5F16014892111_into_DRAW=5FWATERMARK?=
 =?utf-8?q?_tuning?=
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

--===============2815905138077572135==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Incorporate Wa_16014892111 into DRAW_WATERMARK tuning
URL   : https://patchwork.freedesktop.org/series/107638/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12017_full -> Patchwork_107638v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-rkl 

Known issues
------------

  Here are the changes found in Patchwork_107638v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] ([i915#3063])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-glk3/igt@gem_eio@in-flight-contexts-10ms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-kbl:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#3921])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +57 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3886]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#3886])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk5/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][21] ([i915#1319] / [i915#6637])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2672] / [i915#3555])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2672]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][24] ([i915#6598])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +25 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@sysfs_clients@split-50:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#2994])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][29] ([i915#658]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb1/igt@feature_discovery@psr2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [FAIL][31] ([i915#5784]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglb5/igt@gem_eio@reset-stress.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglb7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][33] ([i915#2846]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][35] ([i915#2842]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][37] ([i915#2842]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][41] ([i915#5566] / [i915#716]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][45] ([i915#3614] / [i915#4939] / [i915#6598]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-idle-hang:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-snb2/igt@kms_vblank@pipe-b-wait-idle-hang.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-snb6/igt@kms_vblank@pipe-b-wait-idle-hang.html

  * igt@testdisplay:
    - {shard-tglu}:       [DMESG-WARN][49] ([i915#4941]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglu-3/igt@testdisplay.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglu-1/igt@testdisplay.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][51] ([i915#3063]) -> [FAIL][52] ([i915#5784])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-iclb:         [INCOMPLETE][53] ([i915#6598]) -> [INCOMPLETE][54] ([i915#1982] / [i915#6598])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][55] ([i915#2920]) -> [SKIP][56] ([i915#658])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6637]: https://gitlab.freedesktop.org/drm/intel/issues/6637
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716


Build changes
-------------

  * Linux: CI_DRM_12017 -> Patchwork_107638v1

  CI-20190529: 20190529
  CI_DRM_12017: d09b6a64bd55b1c8c7baada7537621015f0cfd71 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6634: e01fe99f00692864b709253638c809231d1fb333 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107638v1: d09b6a64bd55b1c8c7baada7537621015f0cfd71 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/index.html

--===============2815905138077572135==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Incorporate Wa_16014892111 into DRAW_WATERMARK tuning</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107638/">https://patchwork.freedesktop.org/series/107638/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12017_full -&gt; Patchwork_107638v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-rkl </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107638v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-glk3/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk2/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl1/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl8/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_chamelium@dp-crc-single.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_chamelium@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk5/igt@kms_chamelium@vga-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6637">i915#6637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@sysfs_clients@split-50.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb1/igt@feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglb5/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglb7/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-glk5/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk5/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3614</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-idle-hang:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-snb2/igt@kms_vblank@pipe-b-wait-idle-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-snb6/igt@kms_vblank@pipe-b-wait-idle-hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglu-3/igt@testdisplay.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4941">i915#4941</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglu-1/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglb3/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12017 -&gt; Patchwork_107638v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12017: d09b6a64bd55b1c8c7baada7537621015f0cfd71 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6634: e01fe99f00692864b709253638c809231d1fb333 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107638v1: d09b6a64bd55b1c8c7baada7537621015f0cfd71 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2815905138077572135==--
