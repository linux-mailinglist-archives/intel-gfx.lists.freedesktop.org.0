Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0261F129AEC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 21:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F86D89FAC;
	Mon, 23 Dec 2019 20:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1954F89FAC;
 Mon, 23 Dec 2019 20:57:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F33F8A47DC;
 Mon, 23 Dec 2019 20:57:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 23 Dec 2019 20:57:41 -0000
Message-ID: <157713466196.16936.10851177165055871783@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
In-Reply-To: <20191223195850.25997-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUkZD?=
 =?utf-8?q?=3A_display/ddi=3A_keep_register_indexes_in_a_table?=
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

Series: RFC: display/ddi: keep register indexes in a table
URL   : https://patchwork.freedesktop.org/series/71330/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7630 -> Patchwork_15902
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15902 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15902, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15902:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_blt:
    - fi-snb-2520m:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-snb-2520m/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-snb-2520m/igt@i915_selftest@live_blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_15902 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#505] / [i915#671])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [PASS][5] -> [INCOMPLETE][6] ([i915#671])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][7] ([i915#505]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][9] ([i915#656]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_memory_region:
    - fi-bwr-2160:        [FAIL][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-bwr-2160/igt@i915_selftest@live_memory_region.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-bwr-2160/igt@i915_selftest@live_memory_region.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#725]) -> [DMESG-FAIL][14] ([i915#563])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92]) -> [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 45)
------------------------------

  Additional (8): fi-hsw-4770r fi-byt-j1900 fi-skl-6770hq fi-glk-dsi fi-whl-u fi-gdg-551 fi-ivb-3770 fi-snb-2600 
  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7630 -> Patchwork_15902

  CI-20190529: 20190529
  CI_DRM_7630: 28a2aa0ebf1520ea8a0dd89299f7ceea80dfd96f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15902: 910cfe50bff90c84cbb108c0287dbbaa3830010b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

910cfe50bff9 drm/i915/display: use port_info on intel_ddi_init
f6feacf14aa5 drm/i915/display: refer to vbt info as vbt_port_info
f385d919929d drm/i915/display: add phy, vbt and ddi indexes
ac1ca5913330 drm/i915/display: description-based initialization for remaining ddi platforms
409c886b29d7 drm/i915/display: move icl to description-based ddi init
7a1e8b409ea0 drm/i915/display: start description-based ddi initialization
ea2ec826034a drm/i915/display: prefer the more common dig_port name
4ed40d08b95f drm/i915/display: remove alias to dig_port
f9993b30fcc2 drm/i915/display: nuke skl workaround for pre-production hw

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15902/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
