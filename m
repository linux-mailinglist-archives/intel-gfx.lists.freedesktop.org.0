Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE790133BBD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 07:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920506E17B;
	Wed,  8 Jan 2020 06:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FBF06E179;
 Wed,  8 Jan 2020 06:38:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20975A011A;
 Wed,  8 Jan 2020 06:38:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Wed, 08 Jan 2020 06:38:18 -0000
Message-ID: <157846549810.23226.16196777964276120153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108170803.1c91b20d@canb.auug.org.au>
In-Reply-To: <20200108170803.1c91b20d@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_manual_merge_of_the_generic-ioremap_tree_with_the_dr?=
 =?utf-8?q?m-intel_tree?=
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

Series: linux-next: manual merge of the generic-ioremap tree with the drm-intel tree
URL   : https://patchwork.freedesktop.org/series/71736/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7699 -> Patchwork_16021
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/index.html

Known issues
------------

  Here are the changes found in Patchwork_16021 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][1] -> [DMESG-WARN][2] ([i915#88])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4] ([i915#553])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#563])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8] ([i915#656])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-skl-6770hq:      [PASS][9] -> [DMESG-FAIL][10] ([i915#841])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/fi-skl-6770hq/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/fi-skl-6770hq/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][11] ([i915#178]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][13] ([i915#725]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][15] ([fdo#112406]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/fi-bxt-dsi/igt@i915_selftest@live_gt_heartbeat.html

  
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#841]: https://gitlab.freedesktop.org/drm/intel/issues/841
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88


Participating hosts (49 -> 40)
------------------------------

  Additional (1): fi-skl-lmem 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7699 -> Patchwork_16021

  CI-20190529: 20190529
  CI_DRM_7699: 9aa67e1d77888cf258597d5009a6ab1762418ef6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16021: 5e406a43874d35e4986470c60079363e79817ef5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5e406a43874d linux-next: manual merge of the generic-ioremap tree with the drm-intel tree

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
