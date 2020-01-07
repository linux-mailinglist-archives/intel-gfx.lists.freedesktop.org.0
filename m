Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 652861335A6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 23:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E5206E143;
	Tue,  7 Jan 2020 22:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 906986E143;
 Tue,  7 Jan 2020 22:24:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67AD2A0BCB;
 Tue,  7 Jan 2020 22:24:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 07 Jan 2020 22:24:34 -0000
Message-ID: <157843587439.8942.486683154430343393@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200107170922.153612-1-jose.souza@intel.com>
In-Reply-To: <20200107170922.153612-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2Crebased=2C1/2=5D_drm/i915/display/icl?=
 =?utf-8?q?+=3A_Do_not_program_clockgating?=
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

Series: series starting with [v4,rebased,1/2] drm/i915/display/icl+: Do not program clockgating
URL   : https://patchwork.freedesktop.org/series/71705/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7697 -> Patchwork_16018
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/index.html

Known issues
------------

  Here are the changes found in Patchwork_16018 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#553] / [i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][3] ([i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [INCOMPLETE][5] ([i915#671]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [INCOMPLETE][7] ([i915#879]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_reset:
    - fi-cfl-guc:         [DMESG-FAIL][9] ([i915#889]) -> [PASS][10] +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/fi-cfl-guc/igt@i915_selftest@live_reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/fi-cfl-guc/igt@i915_selftest@live_reset.html

  * igt@i915_selftest@live_workarounds:
    - fi-cfl-guc:         [DMESG-WARN][11] ([i915#889]) -> [PASS][12] +23 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/fi-cfl-guc/igt@i915_selftest@live_workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/fi-cfl-guc/igt@i915_selftest@live_workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][13] ([i915#770]) -> [DMESG-FAIL][14] ([i915#725])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-icl-u2:          [SKIP][15] ([fdo#109309]) -> [FAIL][16] ([i915#217])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7697/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html

  
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (47 -> 43)
------------------------------

  Additional (6): fi-hsw-4770r fi-hsw-peppy fi-ilk-650 fi-gdg-551 fi-elk-e7500 fi-skl-lmem 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-kbl-7500u fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7697 -> Patchwork_16018

  CI-20190529: 20190529
  CI_DRM_7697: 52b73829cd05668fd06586c8d2ab4af6e058dd8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16018: e87f5bd04649b4eb78d081a5c0f4e3313531465e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e87f5bd04649 drm/i915/display: Fix warning about MST and DDI restrictions
104edb93da04 drm/i915/display/icl+: Do not program clockgating

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16018/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
