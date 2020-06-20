Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F4058202414
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jun 2020 16:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20ADD6E113;
	Sat, 20 Jun 2020 14:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 452186E0A5;
 Sat, 20 Jun 2020 14:10:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35F75A47E6;
 Sat, 20 Jun 2020 14:10:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sat, 20 Jun 2020 14:10:20 -0000
Message-ID: <159266222019.5568.13599614810608477931@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200620121758.14836-1-hdegoede@redhat.com>
In-Reply-To: <20200620121758.14836-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgYWNw?=
 =?utf-8?q?i/pwm/i915=3A_Convert_pwm-crc_and_i915_driver=27s_PWM_code_to_u?=
 =?utf-8?q?se_the_atomic_PWM_API?=
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

Series: acpi/pwm/i915: Convert pwm-crc and i915 driver's PWM code to use the atomic PWM API
URL   : https://patchwork.freedesktop.org/series/78657/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8649_full -> Patchwork_18000_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18000_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#1930])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-glk9/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_schedule@implicit-boths@bcs0:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4] ([i915#82])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-snb6/igt@gem_exec_schedule@implicit-boths@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-snb6/igt@gem_exec_schedule@implicit-boths@bcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#95]) +22 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +9 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-skl6/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-skl10/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-kbl3/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-kbl6/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][19] -> [DMESG-FAIL][20] ([fdo#108145] / [i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#31])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-kbl6/igt@kms_setmode@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-glk7/igt@kms_vblank@pipe-b-accuracy-idle.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-glk7/igt@kms_vblank@pipe-b-accuracy-idle.html
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-kbl6/igt@kms_vblank@pipe-b-accuracy-idle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-kbl4/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@perf@blocking-parameterized:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#1542])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-tglb7/igt@perf@blocking-parameterized.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-tglb8/igt@perf@blocking-parameterized.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#1542])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-iclb4/igt@perf@polling-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-iclb7/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-tglb:         [DMESG-WARN][33] ([i915#402]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-tglb6/igt@gem_blits@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-tglb1/igt@gem_blits@basic.html

  * igt@gem_exec_suspend@basic:
    - shard-apl:          [DMESG-WARN][35] ([i915#95]) -> [PASS][36] +19 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-apl4/igt@gem_exec_suspend@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-apl3/igt@gem_exec_suspend@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-skl1/igt@gem_exec_suspend@basic-s3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-skl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
    - shard-skl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-skl1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-skl3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-kbl2/igt@gem_softpin@noreloc-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][45] ([i915#1436] / [i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-kbl3/igt@gen9_exec_parse@allowed-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-hsw:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-hsw8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-hsw8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-tglb7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-tglb7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-iclb6/igt@kms_psr@psr2_cursor_render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-apl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-apl2/igt@kms_vblank@pipe-b-accuracy-idle.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-apl3/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][59] ([i915#1542]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-iclb3/igt@perf@blocking-parameterized.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-iclb2/igt@perf@blocking-parameterized.html

  * igt@perf@short-reads:
    - shard-hsw:          [FAIL][61] -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-hsw1/igt@perf@short-reads.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-hsw1/igt@perf@short-reads.html

  * igt@sysfs_preempt_timeout@idempotent@vecs0:
    - shard-kbl:          [DMESG-WARN][63] ([i915#93] / [i915#95]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-kbl1/igt@sysfs_preempt_timeout@idempotent@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-kbl2/igt@sysfs_preempt_timeout@idempotent@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#454])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [DMESG-WARN][67] ([i915#95]) -> [DMESG-FAIL][68] ([i915#54] / [i915#95]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8649/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8649 -> Patchwork_18000

  CI-20190529: 20190529
  CI_DRM_8649: 08819db597ecdc426544d0fdd5dc352616eaba76 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5714: f0ade50caf38574592886f55bb03cf80c574bb83 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18000: b38271ed1f65021eccb0c8df4114f6c16b071bbb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18000/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
