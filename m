Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5447140416
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 07:43:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098F46F3CF;
	Fri, 17 Jan 2020 06:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 529F56F3CE;
 Fri, 17 Jan 2020 06:43:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 493A5A363B;
 Fri, 17 Jan 2020 06:43:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Fri, 17 Jan 2020 06:43:16 -0000
Message-ID: <157924339629.26754.12695440773419367351@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117134717.2703-1-shawn.c.lee@intel.com>
In-Reply-To: <20200117134717.2703-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_require_bandwidth_did_not_exceed_LSPCON_limitati?=
 =?utf-8?q?on?=
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

Series: drm/i915: Check require bandwidth did not exceed LSPCON limitation
URL   : https://patchwork.freedesktop.org/series/72157/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758 -> Patchwork_16143
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16143:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_store@basic-all:
    - {fi-ehl-1}:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-ehl-1/igt@gem_exec_store@basic-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-ehl-1/igt@gem_exec_store@basic-all.html

  * igt@gem_exec_suspend@basic-s0:
    - {fi-ehl-1}:         [INCOMPLETE][3] ([i915#937]) -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - {fi-ehl-1}:         NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-ehl-1/igt@gem_exec_suspend@basic-s3.html

  
Known issues
------------

  Here are the changes found in Patchwork_16143 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [PASS][6] -> [DMESG-WARN][7] ([i915#889])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [PASS][8] -> [INCOMPLETE][9] ([i915#671])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [PASS][10] -> [INCOMPLETE][11] ([i915#671])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][12] -> [SKIP][13] ([fdo#109271]) +27 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-icl-dsi:         [DMESG-WARN][14] ([i915#109]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-icl-dsi/igt@gem_exec_create@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-icl-dsi/igt@gem_exec_create@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][16] ([i915#553] / [i915#725]) -> [DMESG-FAIL][17] ([i915#563])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (47 -> 44)
------------------------------

  Additional (3): fi-kbl-soraka fi-byt-j1900 fi-byt-n2820 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bsw-kefka fi-blb-e6850 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16143

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16143: 33dd964d640714b4136000d72312d66e63339c7d @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16143/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  Building modules, stage 2.
  MODPOST 122 modules
ERROR: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1282: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

33dd964d6407 drm/i915: Check require bandwidth did not exceed LSPCON limitation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16143/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
