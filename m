Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F3113CBA8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 19:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E889C6EA57;
	Wed, 15 Jan 2020 18:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE12A6EA57;
 Wed, 15 Jan 2020 18:06:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5381A363B;
 Wed, 15 Jan 2020 18:06:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 15 Jan 2020 18:06:59 -0000
Message-ID: <157911161971.2007.10089106366190997003@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Align_engine-=3Euabi=5Fclass/instance_with_i915=5Fdrm?=
 =?utf-8?q?=2Eh?=
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

Series: drm/i915: Align engine->uabi_class/instance with i915_drm.h
URL   : https://patchwork.freedesktop.org/series/72078/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7751 -> Patchwork_16114
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/index.html

Known issues
------------

  Here are the changes found in Patchwork_16114 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@basic-default:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-tgl-y/igt@gem_ctx_param@basic-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-tgl-y/igt@gem_ctx_param@basic-default.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [PASS][3] -> [DMESG-WARN][4] ([fdo#111764])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-glk-dsi:         [PASS][5] -> [INCOMPLETE][6] ([i915#58] / [k.org#198133])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-glk-dsi/igt@i915_module_load@reload-with-fault-injection.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-ehl-1}:         [INCOMPLETE][7] ([i915#937]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [DMESG-WARN][11] ([i915#889]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [DMESG-WARN][13] ([i915#889]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6600u:       [DMESG-WARN][15] ([i915#889]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [INCOMPLETE][17] ([i915#151]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][19] ([IGT#4] / [i915#263]) -> [FAIL][20] ([i915#217])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (46 -> 43)
------------------------------

  Additional (4): fi-hsw-4770r fi-blb-e6850 fi-byt-n2820 fi-hsw-peppy 
  Missing    (7): fi-ilk-m540 fi-bdw-5557u fi-byt-squawks fi-bsw-cyan fi-ivb-3770 fi-skl-lmem fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7751 -> Patchwork_16114

  CI-20190529: 20190529
  CI_DRM_7751: bffb5bf41a2e3d84ee5043dcccad49578656a012 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16114: 6122f6e7ddab862408cb9e9181546b95b0ca0dca @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16114/build_32bit.log

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

6122f6e7ddab drm/i915: Align engine->uabi_class/instance with i915_drm.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16114/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
