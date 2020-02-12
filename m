Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A10215AF6C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 19:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E926E0D8;
	Wed, 12 Feb 2020 18:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EECB46E0D8;
 Wed, 12 Feb 2020 18:09:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6414A011C;
 Wed, 12 Feb 2020 18:09:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Wed, 12 Feb 2020 18:09:55 -0000
Message-ID: <158153099593.24264.3902771657767309180@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211074657.231405-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200211074657.231405-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?b?KHJldjcp?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev7)
URL   : https://patchwork.freedesktop.org/series/72853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7905_full -> Patchwork_16516_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16516_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#31])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/shard-apl6/igt@kms_setmode@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/shard-apl8/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#31])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/shard-kbl7/igt@kms_setmode@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/shard-kbl4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][11] ([i915#180]) -> [PASS][12] +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][13] ([i915#82]) -> [SKIP][14] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/shard-snb4/igt@i915_pm_rpm@gem-idle.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/shard-snb4/igt@i915_pm_rpm@gem-idle.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7905 -> Patchwork_16516

  CI-20190529: 20190529
  CI_DRM_7905: db98da3dd757a19dbaaeaef8640276fe7be2fc4e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5433: 6a96c17f3a1b4e1f90b1a0b0ce42a7219875d1a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16516: 290fe3c7dbc4fabe23502e3eb9a1b286a993da4e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
