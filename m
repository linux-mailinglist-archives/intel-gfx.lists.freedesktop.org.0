Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEA11D4FEC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 16:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C446ECAA;
	Fri, 15 May 2020 14:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 665296ECA9;
 Fri, 15 May 2020 14:05:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58DC8A432F;
 Fri, 15 May 2020 14:05:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Fri, 15 May 2020 14:05:16 -0000
Message-ID: <158955151633.26213.17866011555402846962@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514145831.15206-1-animesh.manna@intel.com>
In-Reply-To: <20200514145831.15206-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Pre_allocate_and_late_cleanup_of_cmd_buffer_=28rev?=
 =?utf-8?q?7=29?=
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

Series: drm/i915/dsb: Pre allocate and late cleanup of cmd buffer (rev7)
URL   : https://patchwork.freedesktop.org/series/73036/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8486_full -> Patchwork_17661_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17661_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17661_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17661_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-apl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-apl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color@pipe-a-gamma:
    - shard-kbl:          [PASS][2] -> [INCOMPLETE][3] +13 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-kbl4/igt@kms_color@pipe-a-gamma.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-kbl2/igt@kms_color@pipe-a-gamma.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][4] -> [INCOMPLETE][5] +14 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-skl10/igt@kms_color@pipe-b-ctm-negative.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-skl10/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_color@pipe-b-gamma:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-kbl3/igt@kms_color@pipe-b-gamma.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-apl:          [PASS][7] -> [INCOMPLETE][8] +14 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-apl7/igt@kms_color@pipe-c-ctm-0-25.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-apl8/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_color@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [INCOMPLETE][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-skl7/igt@kms_color@pipe-c-ctm-negative.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_shared@exec-single-timeline@bcs0}:
    - shard-apl:          [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-apl7/igt@gem_ctx_shared@exec-single-timeline@bcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-apl3/igt@gem_ctx_shared@exec-single-timeline@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17661_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-kbl6/igt@gem_softpin@noreloc-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-kbl6/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-kbl:          [PASS][14] -> [INCOMPLETE][15] ([i915#794])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-kbl2/igt@kms_color@pipe-a-ctm-0-5.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-kbl6/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color@pipe-b-gamma:
    - shard-iclb:         [PASS][16] -> [INCOMPLETE][17] ([i915#1149]) +10 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-iclb7/igt@kms_color@pipe-b-gamma.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-iclb4/igt@kms_color@pipe-b-gamma.html

  * igt@kms_color@pipe-c-gamma:
    - shard-glk:          [PASS][18] -> [INCOMPLETE][19] ([i915#58] / [k.org#198133]) +13 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-glk9/igt@kms_color@pipe-c-gamma.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-glk5/igt@kms_color@pipe-c-gamma.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#1188]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109441])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][26] -> [FAIL][27] ([i915#31])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-apl3/igt@kms_setmode@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-apl8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][28] ([i915#1121] / [i915#93] / [i915#95]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][30] ([i915#79]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][32] ([i915#180]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][34] ([i915#69]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][36] ([fdo#109441]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-iclb3/igt@kms_psr@psr2_sprite_plane_onoff.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][38] ([i915#1542]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-iclb6/igt@perf@blocking-parameterized.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-iclb6/igt@perf@blocking-parameterized.html

  * {igt@perf@polling-parameterized}:
    - shard-tglb:         [FAIL][40] ([i915#1542]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-tglb7/igt@perf@polling-parameterized.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-tglb8/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [INCOMPLETE][42] ([i915#82]) -> [SKIP][43] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-snb5/igt@i915_pm_dc@dc5-psr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-snb4/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-snb:          [SKIP][44] ([fdo#109271]) -> [INCOMPLETE][45] ([i915#82])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-snb4/igt@i915_pm_rpm@modeset-lpsp.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-snb4/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_color@pipe-a-degamma:
    - shard-iclb:         [FAIL][46] ([i915#1149]) -> [INCOMPLETE][47] ([i915#1149])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-iclb5/igt@kms_color@pipe-a-degamma.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-iclb7/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-iclb:         [FAIL][48] ([i915#1149] / [i915#315]) -> [INCOMPLETE][49] ([i915#1149]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-iclb6/igt@kms_color@pipe-b-ctm-0-25.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-iclb2/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][50] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][51] ([i915#1319])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8486/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1121]: https://gitlab.freedesktop.org/drm/intel/issues/1121
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8486 -> Patchwork_17661

  CI-20190529: 20190529
  CI_DRM_8486: f43bb5d8b1ed34a349ce5721ce5c064935a6cf6f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5654: 5637a466a0b09535517751608f5525a8b468a76b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17661: 648698dcb30891ff4763afc3305583727fd1ac1c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17661/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
