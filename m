Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333DC11A3B4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 06:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140416E0BA;
	Wed, 11 Dec 2019 05:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 813286E0BA;
 Wed, 11 Dec 2019 05:21:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77C5FA011A;
 Wed, 11 Dec 2019 05:21:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Wed, 11 Dec 2019 05:21:48 -0000
Message-ID: <157604170846.30690.5261626677733963491@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
In-Reply-To: <20191210204744.65276-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_ops_to_intel=5Fuc?=
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

Series: Add ops to intel_uc
URL   : https://patchwork.freedesktop.org/series/70716/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7534 -> Patchwork_15680
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15680 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15680, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15680:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_15680 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][2] -> [DMESG-FAIL][3] ([i915#725])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][4] -> [DMESG-FAIL][5] ([i915#725])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-u}:         [INCOMPLETE][6] ([fdo#111735]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-tgl-u/igt@gem_ctx_create@basic-files.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/fi-tgl-u/igt@gem_ctx_create@basic-files.html

  
#### Warnings ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [INCOMPLETE][8] ([i915#694]) -> [DMESG-FAIL][9] ([i915#722])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][10] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][11] ([i915#62] / [i915#92]) +6 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][12] ([i915#62] / [i915#92]) -> [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (53 -> 46)
------------------------------

  Additional (2): fi-hsw-4770r fi-kbl-7560u 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15680

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15680: fe773089ddebef6d9c956bb7fbcecb912202c2c0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fe773089ddeb drm/i915/uc: Add sanitize to to intel_uc_ops
b5bf30f4e353 drm/i915/uc: Add init/fini to to intel_uc_ops
32700bafdc26 drm/i915/uc: Add init_fw/fini_fw to to intel_uc_ops
954921ae8651 drm/i915/uc: Add ops to intel_uc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15680/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
