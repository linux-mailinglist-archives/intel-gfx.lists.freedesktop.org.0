Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB9413CED7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 22:23:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4D66EB46;
	Wed, 15 Jan 2020 21:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3D796EB46;
 Wed, 15 Jan 2020 21:23:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DADAEA010F;
 Wed, 15 Jan 2020 21:23:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: John.C.Harrison@Intel.com
Date: Wed, 15 Jan 2020 21:23:53 -0000
Message-ID: <157912343386.2009.12966523910242197541@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115024053.11333-1-John.C.Harrison@Intel.com>
In-Reply-To: <20200115024053.11333-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_FW_v40_=28rev2=29?=
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

Series: drm/i915/guc: Update to GuC FW v40 (rev2)
URL   : https://patchwork.freedesktop.org/series/72032/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7751 -> Patchwork_16117
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/index.html

Known issues
------------

  Here are the changes found in Patchwork_16117 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-tgl-y/igt@gem_exec_parallel@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-tgl-y/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [PASS][3] -> [DMESG-WARN][4] ([fdo#111764])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-apl-guc:         [PASS][7] -> [TIMEOUT][8] ([fdo#112271] / [i915#529])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-apl-guc/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-apl-guc/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][9] ([fdo#112271] / [i915#816]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [DMESG-WARN][11] ([i915#889]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6770hq:      [DMESG-WARN][13] ([i915#889]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][15] ([i915#656]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][19] ([fdo#109271]) -> [FAIL][20] ([i915#579])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [INCOMPLETE][21] ([i915#151]) -> [FAIL][22] ([i915#178])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (46 -> 37)
------------------------------

  Additional (4): fi-hsw-4770r fi-byt-n2820 fi-hsw-peppy fi-snb-2520m 
  Missing    (13): fi-ilk-m540 fi-bdw-5557u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-kbl-7500u fi-whl-u fi-gdg-551 fi-ivb-3770 fi-skl-lmem fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7751 -> Patchwork_16117

  CI-20190529: 20190529
  CI_DRM_7751: bffb5bf41a2e3d84ee5043dcccad49578656a012 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16117: d9ad0ee5cbb2843eef7aedbc0d04c9ac07668dba @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16117/build_32bit.log

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

d9ad0ee5cbb2 drm/i915/guc: Update to GuC FW v40

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16117/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
