Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A4416A8A9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 15:43:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8166E51A;
	Mon, 24 Feb 2020 14:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 337276E519;
 Mon, 24 Feb 2020 14:42:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CC63A0138;
 Mon, 24 Feb 2020 14:42:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 24 Feb 2020 14:42:58 -0000
Message-ID: <158255537818.28363.5997366314108238993@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224113312.13674-1-jani.nikula@intel.com>
In-Reply-To: <20200224113312.13674-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_stop_assigning_drm-=3Edev=5Fprivate_pointer?=
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

Series: drm/i915: stop assigning drm->dev_private pointer
URL   : https://patchwork.freedesktop.org/series/73848/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7996 -> Patchwork_16685
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/index.html

Known issues
------------

  Here are the changes found in Patchwork_16685 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][3] ([i915#694] / [i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([CI#94] / [i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][7] ([fdo#111096] / [i915#323]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7996/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (46 -> 43)
------------------------------

  Additional (2): fi-ehl-1 fi-pnv-d510 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7996 -> Patchwork_16685

  CI-20190529: 20190529
  CI_DRM_7996: 2a1fa22ec29545044f07076bea91f8e382cd8356 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5461: 9d7d9d0455409d0e562ca7ffdf206c7646c50e58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16685: 22b203ba60090a1c45e08bc45143b33d65354a02 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

22b203ba6009 drm/i915: stop assigning drm->dev_private pointer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16685/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
