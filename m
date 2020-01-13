Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA97139194
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 14:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03AE789F85;
	Mon, 13 Jan 2020 13:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E85989F38;
 Mon, 13 Jan 2020 13:02:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56796A00E9;
 Mon, 13 Jan 2020 13:02:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 13 Jan 2020 13:02:20 -0000
Message-ID: <157892054032.25474.16187828753845213104@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113110613.1778894-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200113110613.1778894-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Sanitize_and_reset_GPU_before_removing_powercontext?=
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

Series: drm/i915/gt: Sanitize and reset GPU before removing powercontext
URL   : https://patchwork.freedesktop.org/series/71952/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7729 -> Patchwork_16069
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16069 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16069, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16069:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-cfl-guc:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-cfl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16069 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-guc:         [PASS][2] -> [INCOMPLETE][3] ([i915#140] / [i915#671])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-icl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-bxt-dsi:         [PASS][4] -> [INCOMPLETE][5] ([fdo#103927])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-guc:         [PASS][6] -> [INCOMPLETE][7] ([i915#671])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-skl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-skl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-apl-guc:         [PASS][8] -> [INCOMPLETE][9] ([fdo#103927] / [i915#671])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-apl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-apl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-guc:         [PASS][10] -> [INCOMPLETE][11] ([i915#671] / [i915#879])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-kbl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-kbl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][12] -> [FAIL][13] ([i915#217])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy-default:
    - {fi-ehl-1}:         [INCOMPLETE][14] ([i915#937]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-ehl-1/igt@gem_exec_fence@basic-busy-default.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-ehl-1/igt@gem_exec_fence@basic-busy-default.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [DMESG-WARN][16] ([i915#889]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [INCOMPLETE][18] ([i915#148]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][20] ([i915#725]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [DMESG-WARN][22] ([i915#889]) -> [INCOMPLETE][23] ([i915#505] / [i915#671])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][24] ([i915#553] / [i915#725]) -> [DMESG-FAIL][25] ([i915#770])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7729/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#148]: https://gitlab.freedesktop.org/drm/intel/issues/148
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (42 -> 41)
------------------------------

  Additional (7): fi-hsw-4770r fi-bdw-5557u fi-skl-6770hq fi-glk-dsi fi-snb-2520m fi-whl-u fi-bsw-kefka 
  Missing    (8): fi-kbl-soraka fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-bsw-nick 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7729 -> Patchwork_16069

  CI-20190529: 20190529
  CI_DRM_7729: 99867b455970a3243157609efd76f32b19f062ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16069: fabbc8e407e7c61c32ca332b04a696e88723ea27 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16069/build_32bit.log

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

fabbc8e407e7 drm/i915/gt: Sanitize and reset GPU before removing powercontext

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16069/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
