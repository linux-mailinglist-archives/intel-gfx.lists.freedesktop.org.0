Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E2A1DD9A1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 23:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB37E6E279;
	Thu, 21 May 2020 21:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4CD26E279;
 Thu, 21 May 2020 21:43:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AF41FA432F;
 Thu, 21 May 2020 21:43:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Thu, 21 May 2020 21:43:00 -0000
Message-ID: <159009738069.4443.14397880913204948213@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521064448.29522-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200521064448.29522-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Extend_w/a_14010685332_to_JSP/MCC_=28rev3=29?=
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

Series: drm/i915/ehl: Extend w/a 14010685332 to JSP/MCC (rev3)
URL   : https://patchwork.freedesktop.org/series/77382/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8516_full -> Patchwork_17742_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17742_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([fdo#108145] / [i915#265]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#1559] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-kbl7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-kbl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#1559] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-apl8/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-apl7/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@system-suspend:
    - shard-skl:          [INCOMPLETE][15] ([i915#151] / [i915#69]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-skl10/igt@i915_pm_rpm@system-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-skl6/igt@i915_pm_rpm@system-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2}:
    - shard-glk:          [FAIL][17] ([i915#79]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +11 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-kbl:          [FAIL][21] ([i915#699] / [i915#93] / [i915#95]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-iclb:         [INCOMPLETE][23] ([i915#1185]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-iclb3/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-iclb3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][25] ([fdo#109441]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][27] ([i915#468]) -> [FAIL][28] ([i915#454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][29] ([i915#1319]) -> [FAIL][30] ([fdo#110321])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-apl6/igt@kms_content_protection@srm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][31] ([fdo#109642] / [fdo#111068]) -> [FAIL][32] ([i915#608])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8516 -> Patchwork_17742

  CI-20190529: 20190529
  CI_DRM_8516: 5db9df14788c0a6038aa05e180cde8065d724e43 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5665: c5e5b0ce26fc321591a6d0235c639a1e8ec3cdfa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17742: 6b14c700b9d472d7cc7602f9105b533e2400d197 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17742/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
