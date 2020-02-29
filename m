Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E073E17446A
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 03:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2BF6F507;
	Sat, 29 Feb 2020 02:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A48D56F507;
 Sat, 29 Feb 2020 02:07:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 942D4A3C0D;
 Sat, 29 Feb 2020 02:07:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 29 Feb 2020 02:07:53 -0000
Message-ID: <158294207358.19637.4049362210342018163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200229012042.27487-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200229012042.27487-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/huc=3A_update_TGL_HuC?=
 =?utf-8?q?_to_v7=2E0=2E12?=
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

Series: series starting with [CI,1/2] drm/i915/huc: update TGL HuC to v7.0.12
URL   : https://patchwork.freedesktop.org/series/74099/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8035 -> Patchwork_16771
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/index.html

Known issues
------------

  Here are the changes found in Patchwork_16771 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2] ([i915#877])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][3] -> [INCOMPLETE][4] ([fdo#106070] / [i915#424])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [PASS][5] -> [INCOMPLETE][6] ([fdo#108569])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][7] -> [DMESG-WARN][8] ([i915#44])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][13] ([i915#424]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][15] ([i915#541]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][17] ([fdo#111407]) -> [FAIL][18] ([fdo#111096] / [i915#323])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (48 -> 42)
------------------------------

  Additional (2): fi-bwr-2160 fi-kbl-r 
  Missing    (8): fi-tgl-dsi fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8035 -> Patchwork_16771

  CI-20190529: 20190529
  CI_DRM_8035: cacad502dcd40516c6a9be38ca3ef0c1288f4cf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16771: b61d7556aa264d94c60c6b5c00dfd80a47378d86 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b61d7556aa26 HAX: drm/i915: default to enable_guc=2
74122925e04d drm/i915/huc: update TGL HuC to v7.0.12

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16771/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
