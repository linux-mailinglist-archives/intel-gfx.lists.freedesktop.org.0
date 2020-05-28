Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F58B1E68F3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 20:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D571B6E5BF;
	Thu, 28 May 2020 18:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 019876E5C1;
 Thu, 28 May 2020 18:00:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3F57A432F;
 Thu, 28 May 2020 18:00:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 18:00:06 -0000
Message-ID: <159068880690.684.8103214943157809717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528144539.31316-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528144539.31316-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Mark_the_buffer_pool_as_active_for_the_cmdparser?=
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

Series: drm/i915/gem: Mark the buffer pool as active for the cmdparser
URL   : https://patchwork.freedesktop.org/series/77749/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8547_full -> Patchwork_17803_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17803_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17803_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17803_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen9_exec_parse@bb-chained:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-glk5/igt@gen9_exec_parse@bb-chained.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-glk8/igt@gen9_exec_parse@bb-chained.html

  
Known issues
------------

  Here are the changes found in Patchwork_17803_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1602] / [i915#456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-tglb2/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-tglb6/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-skl3/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-skl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#1119] / [i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-glk2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#54] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#72])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-apl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][21] ([i915#1930]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [TIMEOUT][23] ([i915#1635]) -> [PASS][24] +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-apl4/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][25] ([i915#1899]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [FAIL][27] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][29] ([i915#54]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-hsw:          [INCOMPLETE][31] ([i915#61]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-hsw1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-hsw7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence:
    - shard-skl:          [FAIL][35] ([i915#53]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-c-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-iclb7/igt@kms_psr@psr2_suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][41] ([i915#658]) -> [SKIP][42] ([i915#588])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][43] ([i915#454]) -> [SKIP][44] ([i915#468])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][45] ([fdo#110321] / [fdo#110336]) -> [DMESG-FAIL][46] ([fdo#110321])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][47] ([i915#1319] / [i915#1635]) -> [FAIL][48] ([fdo#110321])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-apl3/igt@kms_content_protection@lic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][49] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8547/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8547 -> Patchwork_17803

  CI-20190529: 20190529
  CI_DRM_8547: 055c59085e117a2433d3862d645e049e30f3a2dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5682: e5371a99a877be134c6ad5361a5f03843a66f775 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17803: b52716aad58146379ec2bdfef5ad751855a37365 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17803/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
