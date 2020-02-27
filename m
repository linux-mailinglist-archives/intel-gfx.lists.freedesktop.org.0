Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C1717118C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 08:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE1F6EBFD;
	Thu, 27 Feb 2020 07:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B36E6EBFD;
 Thu, 27 Feb 2020 07:34:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07CB1A00EF;
 Thu, 27 Feb 2020 07:34:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Thu, 27 Feb 2020 07:34:59 -0000
Message-ID: <158278889902.29656.8877779638766615223@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221153209.268712-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200221153209.268712-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/huc=3A_Fix_error_reported_by_I915=5FPARAM=5FHUC=5FSTATUS_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/huc: Fix error reported by I915_PARAM_HUC_STATUS (rev2)
URL   : https://patchwork.freedesktop.org/series/72419/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7984 -> Patchwork_16665
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/index.html

Known issues
------------

  Here are the changes found in Patchwork_16665 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271] / [i915#1084])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][3] -> [INCOMPLETE][4] ([i915#45])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-FAIL][8] ([i915#1233])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-kbl-x1275/igt@i915_selftest@live_gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-kbl-x1275/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][9] -> [FAIL][10] ([fdo#109635] / [i915#217])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][11] ([CI#94]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][13] ([CI#94] / [i915#402]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][15] ([i915#623]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][17] ([i915#44]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-tgl-y:           [DMESG-FAIL][19] ([CI#94] / [i915#1233]) -> [INCOMPLETE][20] ([CI#94] / [i915#1233])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-tgl-y/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#111407]) -> [FAIL][22] ([fdo#111096] / [i915#323])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623


Participating hosts (48 -> 44)
------------------------------

  Additional (4): fi-byt-j1900 fi-skl-lmem fi-gdg-551 fi-bsw-nick 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7984 -> Patchwork_16665

  CI-20190529: 20190529
  CI_DRM_7984: ab1d770e389d9407be633b5afbe6859e0072ca9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16665: 3ab4c43d8edeb92763b59976af686e7fefa08b08 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3ab4c43d8ede drm/i915/huc: Fix error reported by I915_PARAM_HUC_STATUS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16665/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
