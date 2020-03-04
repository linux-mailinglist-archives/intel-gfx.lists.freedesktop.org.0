Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC15178704
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 01:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EB1C6EA95;
	Wed,  4 Mar 2020 00:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF6856EA94;
 Wed,  4 Mar 2020 00:28:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFB28A00FD;
 Wed,  4 Mar 2020 00:28:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 04 Mar 2020 00:28:51 -0000
Message-ID: <158328173188.429.94027322907843548@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303213326.1906480-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200303213326.1906480-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Apply_i915=5Frequest=5F?=
 =?utf-8?q?skip=28=29_on_submission?=
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

Series: series starting with [1/2] drm/i915: Apply i915_request_skip() on submission
URL   : https://patchwork.freedesktop.org/series/74218/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8059 -> Patchwork_16805
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16805 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16805, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16805:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-elk-e7500:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html
    - fi-pnv-d510:        [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-pnv-d510/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-pnv-d510/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
    - fi-ivb-3770:        [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
    - fi-ilk-650:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-ilk-650/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-ilk-650/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-pnv-d510/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16805 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-pnv-d510:        [PASS][12] -> [INCOMPLETE][13] ([i915#299])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-pnv-d510/igt@i915_selftest@live@execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-pnv-d510/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-byt-j1900:       [PASS][14] -> [DMESG-FAIL][15] ([i915#912])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770:        [PASS][16] -> [DMESG-FAIL][17] ([i915#912])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-4770r:       [PASS][18] -> [DMESG-FAIL][19] ([i915#912])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-hsw-4770r/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-hsw-4770r/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-peppy:       [PASS][20] -> [DMESG-FAIL][21] ([i915#912])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-hsw-peppy/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-hsw-peppy/igt@i915_selftest@live@hangcheck.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][22] -> [DMESG-WARN][23] ([CI#94] / [i915#402]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-tgl-y/igt@prime_vgem@basic-read.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][24] ([CI#94]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][26] ([i915#579]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][28] ([i915#877]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [INCOMPLETE][30] ([fdo#106070] / [i915#424]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][32] ([CI#94] / [i915#402]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][34] ([fdo#111407]) -> [FAIL][35] ([fdo#111096] / [i915#323])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8059/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#912]: https://gitlab.freedesktop.org/drm/intel/issues/912


Participating hosts (48 -> 39)
------------------------------

  Additional (1): fi-cfl-8109u 
  Missing    (10): fi-bdw-samus fi-hsw-4200u fi-bdw-gvtdvm fi-bsw-cyan fi-snb-2520m fi-skl-lmem fi-blb-e6850 fi-byt-n2820 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8059 -> Patchwork_16805

  CI-20190529: 20190529
  CI_DRM_8059: 1beee9fc089828e40507003ffeaeef0697345be7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5489: f74d9ecfb482388b05f6902b29e64c031989ad33 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16805: 56dae0506975819a499cb66869ee7fe1fffdcc65 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

56dae0506975 drm/i915/gt: Propagate change in error status to children on unhold
17ca6076d133 drm/i915: Apply i915_request_skip() on submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16805/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
