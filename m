Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E2D1C8E27
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 809C46E106;
	Thu,  7 May 2020 14:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E3C56E106;
 Thu,  7 May 2020 14:14:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D742A47E1;
 Thu,  7 May 2020 14:14:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 07 May 2020 14:14:53 -0000
Message-ID: <158886089315.2191.4548753229964067461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Hotplug_cleanups_=28rev7=29?=
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

Series: drm/i915: Hotplug cleanups (rev7)
URL   : https://patchwork.freedesktop.org/series/72348/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8442_full -> Patchwork_17599_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17599_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-apl7/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#1119] / [i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-kbl2/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#129])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-skl5/igt@kms_color@pipe-a-ctm-green-to-red.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([IGT#5])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109349])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#52] / [i915#54] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-apl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#49])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-hsw1/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-hsw4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][27] -> [INCOMPLETE][28] ([i915#155] / [i915#794])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-kbl:          [DMESG-WARN][29] ([i915#78]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * {igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1}:
    - shard-hsw:          [INCOMPLETE][31] ([i915#61]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-hsw7/igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-hsw6/igt@kms_flip@flip-vs-rmfb-interruptible@c-vga1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-vga1}:
    - shard-snb:          [DMESG-WARN][35] ([i915#42]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-snb1/igt@kms_flip@flip-vs-suspend@a-vga1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][37] ([i915#1188]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][43] ([i915#31]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-apl7/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-apl8/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-kbl:          [DMESG-WARN][45] ([i915#165]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-kbl2/igt@perf@blocking-parameterized.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-kbl3/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][47] ([i915#588]) -> [SKIP][48] ([i915#658])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][49] ([i915#454]) -> [SKIP][50] ([i915#468])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][51] ([i915#468]) -> [FAIL][52] ([i915#454])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-snb:          [SKIP][53] ([fdo#109271]) -> [INCOMPLETE][54] ([i915#82])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-snb1/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-snb6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][55] ([i915#1319]) -> [FAIL][56] ([fdo#110321])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-apl1/igt@kms_content_protection@lic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][57] ([fdo#110321] / [i915#95]) -> [TIMEOUT][58] ([i915#1319])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8442/shard-apl1/igt@kms_content_protection@srm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/shard-apl6/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8442 -> Patchwork_17599

  CI-20190529: 20190529
  CI_DRM_8442: 05cbc9bc4cf15e838086241abfc734022c7adc2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5638: 50868ab3c532a86aa147fb555b69a1078c572b13 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17599: 84534bb4dc5ed21993fb88de48afa2f8239e6ac1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17599/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
