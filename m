Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9134B14FD8B
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 15:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4BB76E079;
	Sun,  2 Feb 2020 14:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E2596E077;
 Sun,  2 Feb 2020 14:34:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18124A011C;
 Sun,  2 Feb 2020 14:34:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sun, 02 Feb 2020 14:34:18 -0000
Message-ID: <158065405807.17036.2378791588925956902@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200202132133.1891846-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200202132133.1891846-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/vgem=3A_Close_use-after-free_race_in_vgem=5Fgem=5Fcreate?=
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

Series: drm/vgem: Close use-after-free race in vgem_gem_create
URL   : https://patchwork.freedesktop.org/series/72873/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7856 -> Patchwork_16379
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/index.html

Known issues
------------

  Here are the changes found in Patchwork_16379 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([fdo#111096] / [i915#323])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][3] ([i915#178]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][5] ([i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#553] / [i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][9] ([fdo#108569]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-icl-y/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][11] ([i915#1052]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-hsw-4770:        [TIMEOUT][13] ([fdo#112271]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-hsw-4770/igt@i915_selftest@live_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/fi-hsw-4770/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][15] ([i915#694]) -> [TIMEOUT][16] ([fdo#112271] / [i915#1084])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7856/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (43 -> 42)
------------------------------

  Additional (8): fi-bdw-5557u fi-byt-j1900 fi-bwr-2160 fi-ilk-650 fi-bsw-kefka fi-skl-lmem fi-bsw-nick fi-skl-6600u 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-gdg-551 fi-blb-e6850 fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7856 -> Patchwork_16379

  CI-20190529: 20190529
  CI_DRM_7856: a113999b001035a5b6474407b228363c163574a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5411: 86c6ab8a0b6696bdb2153febd350af7fa02fbb00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16379: d0b2cbabe0deb86f971d677bf112493016c4ad54 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d0b2cbabe0de drm/vgem: Close use-after-free race in vgem_gem_create

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16379/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
