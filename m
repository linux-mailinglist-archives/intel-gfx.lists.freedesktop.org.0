Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6F114D548
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 03:44:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959BE6F8C6;
	Thu, 30 Jan 2020 02:44:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E545F6F8C6;
 Thu, 30 Jan 2020 02:44:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC8C5A011A;
 Thu, 30 Jan 2020 02:44:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Thu, 30 Jan 2020 02:44:52 -0000
Message-ID: <158035229287.21035.11064059488424960134@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128235241.169694-1-jose.souza@intel.com>
In-Reply-To: <20200128235241.169694-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display/fbc=3A_Make_fences?=
 =?utf-8?q?_a_nice-to-have_for_GEN9+_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915/display/fbc: Make fences a nice-to-have for GEN9+ (rev2)
URL   : https://patchwork.freedesktop.org/series/72698/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7839 -> Patchwork_16320
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16320 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16320, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16320:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-bsw-kefka/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [FAIL][2] ([fdo#103375]) -> [TIMEOUT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  
Known issues
------------

  Here are the changes found in Patchwork_16320 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [PASS][4] -> [FAIL][5] ([i915#694])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-whl-u:           [PASS][6] -> [DMESG-WARN][7] ([i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-whl-u/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][8] -> [FAIL][9] ([i915#178])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][10] -> [DMESG-FAIL][11] ([i915#725])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][12] -> [DMESG-FAIL][13] ([fdo#108569])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-icl-y/igt@i915_selftest@live_execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][14] -> [DMESG-FAIL][15] ([i915#722])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8700k:       [PASS][16] -> [INCOMPLETE][17] ([CI#80] / [i915#424])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][18] -> [FAIL][19] ([fdo#109635] / [i915#217])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [FAIL][20] ([fdo#103375]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][22] ([fdo#111407]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][24] ([fdo#112271]) -> [FAIL][25] ([i915#694])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 46)
------------------------------

  Additional (3): fi-hsw-peppy fi-bsw-kefka fi-kbl-r 
  Missing    (4): fi-byt-squawks fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7839 -> Patchwork_16320

  CI-20190529: 20190529
  CI_DRM_7839: 41a9319a45aaf77e220c8101d6ce76ec66036ffc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5406: 786c79af483a9f6e4688811f74116030c734ca1f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16320: 8d9305ecdde04643cbe63b66d40553c6dd072f1d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8d9305ecdde0 drm/i915/dgfx: Do not write in removed FBC fence registers
0abbba70e1a9 drm/i915/display/fbc: Make fences a nice-to-have for GEN9+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16320/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
