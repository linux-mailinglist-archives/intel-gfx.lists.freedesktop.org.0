Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2758168F6A
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 15:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219986E913;
	Sat, 22 Feb 2020 14:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AB816E913;
 Sat, 22 Feb 2020 14:52:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6183FA47E8;
 Sat, 22 Feb 2020 14:52:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin King" <colin.king@canonical.com>
Date: Sat, 22 Feb 2020 14:52:02 -0000
Message-ID: <158238312236.32577.3053576051876414404@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200222134755.134209-1-colin.king@canonical.com>
In-Reply-To: <20200222134755.134209-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_remove_redundant_assignment_to_variable_dw?=
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

Series: drm/i915/gt: remove redundant assignment to variable dw
URL   : https://patchwork.freedesktop.org/series/73808/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7986 -> Patchwork_16677
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16677/index.html

Known issues
------------

  Here are the changes found in Patchwork_16677 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7986/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16677/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [DMESG-WARN][3] ([i915#585]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7986/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16677/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][5] ([fdo#111096] / [i915#323]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7986/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16677/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7986/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16677/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][9] ([fdo#109315]) -> [SKIP][10] ([fdo#109315] / [i915#585])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7986/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16677/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585


Participating hosts (44 -> 37)
------------------------------

  Additional (4): fi-byt-j1900 fi-glk-dsi fi-gdg-551 fi-hsw-peppy 
  Missing    (11): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bwr-2160 fi-snb-2520m fi-ctg-p8600 fi-skl-lmem fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7986 -> Patchwork_16677

  CI-20190529: 20190529
  CI_DRM_7986: 7d005c577514b8148a13adbead1f6749f233c065 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16677: 8ef5beec2ea363e14c6a0c921e1bacea817e26fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8ef5beec2ea3 drm/i915/gt: remove redundant assignment to variable dw

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16677/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
