Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDE316538F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 01:27:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7EF26E899;
	Thu, 20 Feb 2020 00:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77E296E899;
 Thu, 20 Feb 2020 00:27:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70A67A47E9;
 Thu, 20 Feb 2020 00:27:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 20 Feb 2020 00:27:36 -0000
Message-ID: <158215845643.17409.18311719269085140051@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200210202853.1546453-1-matthew.d.roper@intel.com>
In-Reply-To: <20200210202853.1546453-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F22010178259=3Atgl_=28rev2=29?=
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

Series: drm/i915/tgl: Add Wa_22010178259:tgl (rev2)
URL   : https://patchwork.freedesktop.org/series/73255/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7967 -> Patchwork_16634
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/index.html

Known issues
------------

  Here are the changes found in Patchwork_16634 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][1] ([i915#694]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][3] ([i915#1052]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [DMESG-WARN][5] ([i915#585]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][7] ([i915#976]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][9] ([fdo#109315]) -> [SKIP][10] ([fdo#109315] / [i915#585])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (49 -> 38)
------------------------------

  Additional (1): fi-bsw-nick 
  Missing    (12): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-ivb-3770 fi-bsw-kefka fi-skl-lmem fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7967 -> Patchwork_16634

  CI-20190529: 20190529
  CI_DRM_7967: 0d3c3511d707cc46d78ffcf7fe39ac882c0030af @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5452: c05dc6cd816feb1cc518ce777ab3fd6c81893113 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16634: 432a7f4dd272a8a0dee928428627301f2a7bb7f7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

432a7f4dd272 drm/i915/tgl: Add Wa_22010178259:tgl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
