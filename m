Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C7C1EC870
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 06:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88DD16E093;
	Wed,  3 Jun 2020 04:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43FB86E087;
 Wed,  3 Jun 2020 04:28:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E293A00E7;
 Wed,  3 Jun 2020 04:28:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: clinton.a.taylor@intel.com
Date: Wed, 03 Jun 2020 04:28:39 -0000
Message-ID: <159115851922.12265.9499488037199771510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602192501.5446-1-clinton.a.taylor@intel.com>
In-Reply-To: <20200602192501.5446-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Implement_WA=5F16011163337?=
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

Series: drm/i915/tgl: Implement WA_16011163337
URL   : https://patchwork.freedesktop.org/series/77933/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8573_full -> Patchwork_17846_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17846_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17846_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17846_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-hsw6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17846_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][2] -> [DMESG-WARN][3] ([i915#1436] / [i915#716])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-glk5/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [PASS][4] -> [INCOMPLETE][5] ([i915#198])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl4/igt@i915_pm_dc@dc5-dpms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-skl4/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#54] / [i915#93] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][8] -> [INCOMPLETE][9] ([i915#1926] / [i915#61])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#128])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl2/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-kbl7/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#1188])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#173])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb2/igt@kms_psr@no_drrs.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109441]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-iclb6/igt@kms_psr@psr2_dpms.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][20] ([i915#1528]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@i915_selftest@perf@request}:
    - shard-tglb:         [DMESG-FAIL][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-tglb5/igt@i915_selftest@perf@request.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-tglb8/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [FAIL][24] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-glk7/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * {igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][26] ([i915#1928]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-glk9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][28] ([i915#79]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][30] ([i915#180]) -> [PASS][31] +7 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1}:
    - shard-skl:          [FAIL][32] ([i915#1928]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][34] ([i915#123] / [i915#69]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][36] ([fdo#109441]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][38] ([i915#180]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][40] ([i915#1542]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb2/igt@perf@polling-parameterized.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-iclb1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][42] ([i915#1899]) -> [SKIP][43] ([i915#468])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-hsw:          [SKIP][44] ([fdo#109271] / [fdo#111827]) -> [SKIP][45] ([fdo#109271] / [fdo#111827] / [i915#1927])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-hsw1/igt@kms_chamelium@hdmi-audio-edid.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-hsw6/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][46] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][47] ([i915#1319] / [i915#1635])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl1/igt@kms_content_protection@legacy.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][48] ([i915#1319]) -> [FAIL][49] ([fdo#110321])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl8/igt@kms_content_protection@lic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-FAIL][50] ([i915#1925] / [i915#1926]) -> [DMESG-WARN][51] ([i915#1926])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8573 -> Patchwork_17846

  CI-20190529: 20190529
  CI_DRM_8573: 7dd051b025ee88fc5e358bc7d3438e1764f68257 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5690: bea881189520a9cccbb1c1cb454ac5b6fdaea40e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17846: fd295d4b23d0b98f18f5be0f265d525bb3f9ebce @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17846/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
