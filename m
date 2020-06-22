Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9596B203511
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 12:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F9A89CBC;
	Mon, 22 Jun 2020 10:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E9EE89CBC;
 Mon, 22 Jun 2020 10:47:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F8F3A00EF;
 Mon, 22 Jun 2020 10:47:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Mon, 22 Jun 2020 10:47:36 -0000
Message-ID: <159282285636.9210.15410265025014736951@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200622142519.16214-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200622142519.16214-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgVlJS?=
 =?utf-8?q?_capable_attach_prop_in_i915=2C_VRR_debugfs?=
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

Series: VRR capable attach prop in i915, VRR debugfs
URL   : https://patchwork.freedesktop.org/series/78670/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8650 -> Patchwork_18002
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18002 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18002, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18002/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18002:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8650/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18002/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_18002 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][3] -> [FAIL][4] ([i915#1888])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8650/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18002/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8650/fi-tgl-u2/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18002/fi-tgl-u2/igt@i915_module_load@reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [INCOMPLETE][7] ([i915#1932]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8650/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18002/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [DMESG-WARN][9] ([i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8650/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18002/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1932]: https://gitlab.freedesktop.org/drm/intel/issues/1932
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 10)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_18002 prevented too many machines from booting.

  Additional (1): fi-pnv-d510 
  Missing    (35): fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-icl-y fi-byt-n2820 fi-icl-dsi fi-icl-guc fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-cml-s fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-kbl-7560u fi-bsw-nick fi-ilk-m540 fi-ehl-1 fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8650 -> Patchwork_18002

  CI-20190529: 20190529
  CI_DRM_8650: 24b806b0a1dd38c734e771ece9dd1ab6492bbb96 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5714: f0ade50caf38574592886f55bb03cf80c574bb83 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18002: 6206d3194afbfc3b06d9b9436c799126ece2cdb0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6206d3194afb Revert "drm/amd/display: Expose connector VRR range via debugfs"
5d20cfadedc4 drm/debug: Expose connector VRR monitor range via debugfs
383b031f7157 drm/i915/dp: Attach and set drm connector VRR property

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18002/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
