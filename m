Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D06D3166EB5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 06:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3DB6E1E5;
	Fri, 21 Feb 2020 05:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A4E56E1E5;
 Fri, 21 Feb 2020 05:09:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30B14A0087;
 Fri, 21 Feb 2020 05:09:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Fri, 21 Feb 2020 05:09:50 -0000
Message-ID: <158226179016.7917.1362363711787630512@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205173316.21739-1-shawn.c.lee@intel.com>
In-Reply-To: <20200205173316.21739-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/lspcon=3A_Make_sure_link_rate_did_not_exceed_downstream_a?=
 =?utf-8?q?nd_lspcon_limitation_=28rev2=29?=
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

Series: drm/i915/lspcon: Make sure link rate did not exceed downstream and lspcon limitation (rev2)
URL   : https://patchwork.freedesktop.org/series/73012/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7978 -> Patchwork_16652
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/index.html

Known issues
------------

  Here are the changes found in Patchwork_16652 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111096] / [i915#323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-snb-2520m:       [PASS][5] -> [FAIL][6] ([i915#978])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-snb-2520m/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-snb-2520m/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][7] ([i915#694] / [i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [DMESG-WARN][9] ([i915#585]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][13] ([fdo#109315]) -> [SKIP][14] ([fdo#109315] / [i915#585])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u3:          [SKIP][15] ([fdo#109284] / [fdo#111827] / [i915#585]) -> [SKIP][16] ([fdo#109284] / [fdo#111827])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-icl-u3/igt@kms_chamelium@dp-edid-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-icl-u3/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u3:          [SKIP][17] ([fdo#109284] / [fdo#111827]) -> [SKIP][18] ([fdo#109284] / [fdo#111827] / [i915#585])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7978/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#978]: https://gitlab.freedesktop.org/drm/intel/issues/978


Participating hosts (49 -> 42)
------------------------------

  Additional (2): fi-blb-e6850 fi-ivb-3770 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-icl-u2 fi-bwr-2160 fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7978 -> Patchwork_16652

  CI-20190529: 20190529
  CI_DRM_7978: 7c683e19acbb062afcf4e598dd63aad2c52aac54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16652: d74c49cdbcb23528ea7eef71983e093173f2c45f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d74c49cdbcb2 drm/i915/lspcon: Make sure link rate did not exceed downstream and lspcon limitation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16652/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
