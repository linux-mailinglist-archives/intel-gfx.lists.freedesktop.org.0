Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CDA13CF88
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 22:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00946E0D7;
	Wed, 15 Jan 2020 21:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82F206E0D0;
 Wed, 15 Jan 2020 21:57:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79803A47EB;
 Wed, 15 Jan 2020 21:57:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jan 2020 21:57:35 -0000
Message-ID: <157912545546.2007.7299041333871930762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115205245.2772800-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200115205245.2772800-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Inject_a_cond=5Fresched=28=29_into_long_drm=5Fclflush=5Fsg?=
 =?utf-8?b?KCk=?=
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

Series: drm: Inject a cond_resched() into long drm_clflush_sg()
URL   : https://patchwork.freedesktop.org/series/72085/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7751 -> Patchwork_16118
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/index.html

Known issues
------------

  Here are the changes found in Patchwork_16118 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-tgl-y/igt@gem_exec_parallel@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-tgl-y/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [PASS][3] -> [DMESG-WARN][4] ([fdo#111764])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6700k2:      [PASS][5] -> [INCOMPLETE][6] ([i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][7] -> [FAIL][8] ([i915#217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][9] ([fdo#112271] / [i915#816]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-ehl-1}:         [INCOMPLETE][11] ([i915#937]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][13] ([i915#402]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [DMESG-WARN][15] ([i915#889]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [DMESG-WARN][17] ([i915#889]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6600u:       [DMESG-WARN][19] ([i915#889]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [INCOMPLETE][21] ([i915#151]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][23] ([i915#656]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][25] ([fdo#111096] / [i915#323]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (46 -> 45)
------------------------------

  Additional (4): fi-hsw-4770r fi-blb-e6850 fi-byt-n2820 fi-snb-2520m 
  Missing    (5): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-bsw-kefka fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7751 -> Patchwork_16118

  CI-20190529: 20190529
  CI_DRM_7751: bffb5bf41a2e3d84ee5043dcccad49578656a012 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16118: f1c4f0dc10f6c419538bac61eeae8002e3491cf4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16118/build_32bit.log

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

f1c4f0dc10f6 drm: Inject a cond_resched() into long drm_clflush_sg()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
