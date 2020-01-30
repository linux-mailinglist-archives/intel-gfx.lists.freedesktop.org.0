Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4DB14E3B6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 21:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21CE6E8F9;
	Thu, 30 Jan 2020 20:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 676F46E8F6;
 Thu, 30 Jan 2020 20:12:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6322AA00FD;
 Thu, 30 Jan 2020 20:12:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Jan 2020 20:12:08 -0000
Message-ID: <158041512840.21032.3377129761545381838@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130143931.1906301-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130143931.1906301-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Tighten_checks_and_acquiring_the_mmap_object?=
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

Series: drm/i915/gem: Tighten checks and acquiring the mmap object
URL   : https://patchwork.freedesktop.org/series/72777/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7845 -> Patchwork_16340
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16340 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16340, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16340:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/fi-byt-n2820/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/fi-byt-n2820/igt@gem_busy@busy-all.html

  
Known issues
------------

  Here are the changes found in Patchwork_16340 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271] / [i915#1084] / [i915#816])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#553] / [i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - fi-icl-guc:         [INCOMPLETE][9] ([fdo#109100]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/fi-icl-guc/igt@gem_ctx_create@basic-files.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/fi-icl-guc/igt@gem_ctx_create@basic-files.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][13] ([i915#725]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][15] ([fdo#112271] / [i915#1084]) -> [FAIL][16] ([i915#694])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (45 -> 44)
------------------------------

  Additional (9): fi-kbl-soraka fi-hsw-peppy fi-bdw-gvtdvm fi-bwr-2160 fi-ilk-650 fi-elk-e7500 fi-blb-e6850 fi-bsw-nick fi-skl-6600u 
  Missing    (10): fi-icl-1065g7 fi-ilk-m540 fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-kbl-7560u fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7845 -> Patchwork_16340

  CI-20190529: 20190529
  CI_DRM_7845: 87712fc2ff1634223e993da943bc3c9c7ce96bad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16340: 900351052f808ef88efa574d79f4d7285ca5d1a3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

900351052f80 drm/i915/gem: Tighten checks and acquiring the mmap object

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16340/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
