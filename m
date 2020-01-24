Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 030F4148C9B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 17:58:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB87172B32;
	Fri, 24 Jan 2020 16:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C618F72B31;
 Fri, 24 Jan 2020 16:58:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6294A0087;
 Fri, 24 Jan 2020 16:58:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Jan 2020 16:58:30 -0000
Message-ID: <157988511071.15092.11127818006762215330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124121909.64427-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200124121909.64427-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_current_i915=5Fvma=2Epin=5Fcount_status_first_on?=
 =?utf-8?q?_unbind?=
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

Series: drm/i915: Check current i915_vma.pin_count status first on unbind
URL   : https://patchwork.freedesktop.org/series/72529/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7809 -> Patchwork_16253
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/index.html

Known issues
------------

  Here are the changes found in Patchwork_16253 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_requests:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([fdo#109644] / [fdo#110464] / [i915#140])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-icl-dsi/igt@i915_selftest@live_requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-icl-dsi/igt@i915_selftest@live_requests.html

  * igt@kms_addfb_basic@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@kms_addfb_basic@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-tgl-y/igt@kms_addfb_basic@basic.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#289])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-icl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][7] -> [DMESG-WARN][8] ([i915#44])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][9] ([fdo#112271]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [INCOMPLETE][11] ([i915#45]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [DMESG-WARN][13] ([CI#94] / [i915#402]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       [INCOMPLETE][15] ([i915#879]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#889]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][19] ([i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][21] ([i915#553] / [i915#725]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][23] ([i915#424]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-kbl-x1275:       [INCOMPLETE][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-x1275/igt@i915_selftest@live_sanitycheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-kbl-x1275/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [FAIL][27] ([i915#410]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][29] ([fdo#111096] / [i915#323]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-skl-6700k2:      [FAIL][31] ([i915#410]) -> [SKIP][32] ([fdo#109271]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-skl-6700k2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-tgl-y:           [SKIP][33] ([CI#94] / [fdo#111827] / [i915#1017]) -> [SKIP][34] ([CI#94] / [fdo#111827]) +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-tgl-y/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-y:           [SKIP][35] ([CI#94] / [fdo#109285] / [i915#1017]) -> [SKIP][36] ([CI#94] / [fdo#109285])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/fi-tgl-y/igt@kms_force_connector_basic@force-load-detect.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1017]: https://gitlab.freedesktop.org/drm/intel/issues/1017
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#410]: https://gitlab.freedesktop.org/drm/intel/issues/410
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (51 -> 42)
------------------------------

  Missing    (9): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7809 -> Patchwork_16253

  CI-20190529: 20190529
  CI_DRM_7809: 861f608ce6e3c1a1ad320a5d18055601cff36e45 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16253: 51f95ca72d6a0b8da52c4259000211b639f82014 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

51f95ca72d6a drm/i915: Check current i915_vma.pin_count status first on unbind

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16253/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
