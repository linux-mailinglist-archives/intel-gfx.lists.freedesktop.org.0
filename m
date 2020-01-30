Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CD714D6BA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 07:49:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0296E0A2;
	Thu, 30 Jan 2020 06:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A34A6E0A2;
 Thu, 30 Jan 2020 06:49:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E07FA0094;
 Thu, 30 Jan 2020 06:49:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 30 Jan 2020 06:49:28 -0000
Message-ID: <158036696815.21034.751097000968180593@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_extract_engine_WA_progr?=
 =?utf-8?q?amming_to_common_resume_function?=
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

Series: series starting with [1/2] drm/i915: extract engine WA programming to common resume function
URL   : https://patchwork.freedesktop.org/series/72753/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7840 -> Patchwork_16327
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16327 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16327, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16327:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_active:
    - fi-bwr-2160:        [PASS][1] -> [DMESG-WARN][2] +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-bwr-2160/igt@i915_selftest@live_active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-bwr-2160/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_uncore:
    - fi-bwr-2160:        [PASS][3] -> [DMESG-FAIL][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-bwr-2160/igt@i915_selftest@live_uncore.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-bwr-2160/igt@i915_selftest@live_uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_16327 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][7] -> [FAIL][8] ([i915#694]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][9] ([i915#178]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][11] ([i915#725]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][13] ([i915#722]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [TIMEOUT][15] ([fdo#112271]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][17] ([fdo#109635] / [i915#217]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][19] ([i915#217]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#111096] / [i915#323]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (52 -> 43)
------------------------------

  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ivb-3770 fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7840 -> Patchwork_16327

  CI-20190529: 20190529
  CI_DRM_7840: 5a0adbdabc71233afe7d4463ea575c199ddbe787 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5406: 786c79af483a9f6e4688811f74116030c734ca1f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16327: 92bdfdd2fc0ce56b2268e840a70882daa2c73453 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

92bdfdd2fc0c drm/i915: Move ringbuffer WAs to engine workaround list
0ebd52f87db6 drm/i915: extract engine WA programming to common resume function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
