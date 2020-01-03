Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A78C12F261
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 01:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1BF06E15E;
	Fri,  3 Jan 2020 00:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 217FB6E15E;
 Fri,  3 Jan 2020 00:52:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0779DA0BCB;
 Fri,  3 Jan 2020 00:52:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Fri, 03 Jan 2020 00:52:04 -0000
Message-ID: <157801272400.20615.8891494424925504727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103000050.8223-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200103000050.8223-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Parse_the_I2C_element_from_the_VBT_MIPI_sequence_b?=
 =?utf-8?q?lock?=
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

Series: drm/i915/dsi: Parse the I2C element from the VBT MIPI sequence block
URL   : https://patchwork.freedesktop.org/series/71581/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7668 -> Patchwork_15983
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15983 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15983, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15983:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-kbl-7500u/igt@i915_selftest@live_gt_pm.html

  * igt@i915_selftest@live_uncore:
    - fi-kbl-7500u:       [PASS][3] -> [DMESG-FAIL][4] +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-kbl-7500u/igt@i915_selftest@live_uncore.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-kbl-7500u/igt@i915_selftest@live_uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_15983 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6] ([i915#505])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][7] -> [INCOMPLETE][8] ([i915#671])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][9] -> [DMESG-FAIL][10] ([i915#553] / [i915#725])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][11] -> [DMESG-FAIL][12] ([i915#722])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - fi-kbl-r:           [DMESG-FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-kbl-r/igt@i915_selftest@live_active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-kbl-r/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [DMESG-FAIL][15] ([i915#725]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-byt-j1900/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem:
    - fi-bdw-5557u:       [FAIL][17] -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-bdw-5557u/igt@i915_selftest@live_gem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-bdw-5557u/igt@i915_selftest@live_gem.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][19] ([fdo#109635]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][21] ([i915#553] / [i915#725]) -> [DMESG-FAIL][22] ([i915#725])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7668/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (48 -> 45)
------------------------------

  Additional (6): fi-skl-guc fi-bwr-2160 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-kbl-7560u 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-ctg-p8600 fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7668 -> Patchwork_15983

  CI-20190529: 20190529
  CI_DRM_7668: e63e1b81764ac9d3edbf178821a6cbbc8d7eab9d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15983: 0dfa4d1be7d2eb1cdd22b358ea67d9727003beaf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0dfa4d1be7d2 drm/i915/dsi: Parse the I2C element from the VBT MIPI sequence block

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15983/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
