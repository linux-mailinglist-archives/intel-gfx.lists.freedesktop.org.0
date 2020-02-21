Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4320B1689CD
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 23:10:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0175A6E1BB;
	Fri, 21 Feb 2020 22:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D90E96E183;
 Fri, 21 Feb 2020 22:10:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1828A0009;
 Fri, 21 Feb 2020 22:10:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 21 Feb 2020 22:10:48 -0000
Message-ID: <158232304883.7917.16544995964615455988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221143820.2795039-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221143820.2795039-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZG1h?=
 =?utf-8?q?-buf=3A_Precheck_for_a_valid_dma=5Ffence_before_acquiring_the_r?=
 =?utf-8?q?eference?=
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

Series: dma-buf: Precheck for a valid dma_fence before acquiring the reference
URL   : https://patchwork.freedesktop.org/series/73772/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7983 -> Patchwork_16663
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16663:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {fi-kbl-7560u}:     NOTRUN -> [CRASH][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-kbl-7560u/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_16663 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271] / [i915#1084])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][4] -> [DMESG-FAIL][5] ([fdo#108569])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-y/igt@i915_selftest@live_execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][6] -> [DMESG-FAIL][7] ([i915#722])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-6600u:       [PASS][8] -> [TIMEOUT][9] ([fdo#111732] / [fdo#112271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [PASS][10] -> [DMESG-WARN][11] ([CI#94] / [i915#402]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][12] -> [FAIL][13] ([i915#262])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][14] -> [FAIL][15] ([fdo#111407])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][16] -> [DMESG-WARN][17] ([i915#44])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][18] ([CI#94] / [i915#402]) -> [PASS][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722


Participating hosts (51 -> 46)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7983 -> Patchwork_16663

  CI-20190529: 20190529
  CI_DRM_7983: 85ccd7de7d75735a667c4133b0927481986a2a1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16663: c94e6eafbd99cb816b659b6eeb39402f9bce0c89 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c94e6eafbd99 dma-buf: Precheck for a valid dma_fence before acquiring the reference

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
