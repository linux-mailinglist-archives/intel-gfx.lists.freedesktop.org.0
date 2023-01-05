Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAF065E2C8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 03:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DFA10E620;
	Thu,  5 Jan 2023 02:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DA6B10E620;
 Thu,  5 Jan 2023 02:04:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25381AA917;
 Thu,  5 Jan 2023 02:04:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5851316893014378107=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Thu, 05 Jan 2023 02:04:59 -0000
Message-ID: <167288429911.9641.7259756323383951411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
In-Reply-To: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Expand_force=5Fprobe_to_block_probe_of_devices_as_well?=
 =?utf-8?b?LiAocmV2Myk=?=
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

--===============5851316893014378107==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Expand force_probe to block probe of devices as well. (rev3)
URL   : https://patchwork.freedesktop.org/series/112292/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12546_full -> Patchwork_112292v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/index.html

Participating hosts (13 -> 10)
------------------------------

  Additional (1): shard-rkl0 
  Missing    (4): pig-skl-6260u pig-kbl-iris shard-tglu-9 pig-glk-j5005 

Known issues
------------

  Here are the changes found in Patchwork_112292v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2346])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][5] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-glk9/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - {shard-rkl}:        [FAIL][6] ([i915#7742]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][8] ([i915#7052]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-4/igt@gem_eio@suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-2/igt@gem_eio@suspend.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - {shard-rkl}:        [FAIL][10] ([i915#2842]) -> [PASS][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - {shard-rkl}:        [SKIP][12] ([i915#3281]) -> [PASS][13] +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_pwrite@basic-self:
    - {shard-rkl}:        [SKIP][14] ([i915#3282]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-6/igt@gem_pwrite@basic-self.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@gem_pwrite@basic-self.html

  * igt@gen9_exec_parse@allowed-single:
    - {shard-rkl}:        [SKIP][16] ([i915#2527]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-3/igt@gen9_exec_parse@allowed-single.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - {shard-dg1}:        [FAIL][18] ([i915#3591]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [DMESG-FAIL][20] ([i915#5334]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-glk6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][22] ([i915#4258]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-6/igt@i915_selftest@live@gt_pm.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - {shard-tglu}:       [SKIP][24] ([i915#1845] / [i915#7651]) -> [PASS][25] +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - {shard-tglu}:       [SKIP][26] ([i915#7651]) -> [PASS][27] +10 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - {shard-rkl}:        [SKIP][28] ([i915#1849] / [i915#4098]) -> [PASS][29] +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - {shard-tglu}:       [SKIP][30] ([i915#1849]) -> [PASS][31] +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
    - {shard-rkl}:        [SKIP][32] ([i915#1849]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_properties@plane-properties-atomic:
    - {shard-rkl}:        [SKIP][34] -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html
    - {shard-tglu}:       [SKIP][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_properties@plane-properties-atomic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - {shard-rkl}:        [SKIP][38] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
    - {shard-tglu}:       [SKIP][40] ([fdo#109274]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        [SKIP][42] ([i915#1845] / [i915#4098]) -> [PASS][43] +9 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@prime_vgem@basic-write:
    - {shard-rkl}:        [SKIP][44] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-6/igt@prime_vgem@basic-write.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@prime_vgem@basic-write.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7681]: https://gitlab.freedesktop.org/drm/intel/issues/7681
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742


Build changes
-------------

  * Linux: CI_DRM_12546 -> Patchwork_112292v3
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_12546: 07a684fbd4d0f5e284e8a782e0298f772fc4164e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7107: 4f22b49ee353406c14ce8bb3151ebe3ce4e6e9be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112292v3: 07a684fbd4d0f5e284e8a782e0298f772fc4164e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/index.html

--===============5851316893014378107==
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
<tr><td><b>Series:</b></td><td>drm/i915: Expand force_probe to block probe of devices as well. (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112292/">https://patchwork.freedesktop.org/series/112292/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12546_full -&gt; Patchwork_112292v3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/index.html</p>
<h2>Participating hosts (13 -&gt; 10)</h2>
<p>Additional (1): shard-rkl0 <br />
  Missing    (4): pig-skl-6260u pig-kbl-iris shard-tglu-9 pig-glk-j5005 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112292v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-glk9/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-4/igt@gem_eio@suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-2/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-6/igt@gem_pwrite@basic-self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@gem_pwrite@basic-self.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-3/igt@gen9_exec_parse@allowed-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-glk6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> +3 similar issues</p>
</li>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_properties@plane-properties-atomic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_properties@plane-properties-atomic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12546/shard-rkl-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112292v3/shard-rkl-5/igt@prime_vgem@basic-write.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12546 -&gt; Patchwork_112292v3</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12546: 07a684fbd4d0f5e284e8a782e0298f772fc4164e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7107: 4f22b49ee353406c14ce8bb3151ebe3ce4e6e9be @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112292v3: 07a684fbd4d0f5e284e8a782e0298f772fc4164e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5851316893014378107==--
