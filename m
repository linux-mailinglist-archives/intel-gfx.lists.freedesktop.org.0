Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46EC13B5EE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 00:36:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470B66E5C1;
	Tue, 14 Jan 2020 23:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69E946E5BE;
 Tue, 14 Jan 2020 23:36:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6099FA47E8;
 Tue, 14 Jan 2020 23:36:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Akeem G Abodunrin" <akeem.g.abodunrin@intel.com>
Date: Tue, 14 Jan 2020 23:36:07 -0000
Message-ID: <157904496737.24906.8505925182887019458@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114145136.65373-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200114145136.65373-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7_and_Gen7=2E5?=
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

Series: Security mitigation for Intel Gen7 and Gen7.5
URL   : https://patchwork.freedesktop.org/series/72022/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7746 -> Patchwork_16099
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/index.html

Known issues
------------

  Here are the changes found in Patchwork_16099 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271] / [i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-tgl-y/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/fi-tgl-y/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       [PASS][5] -> [INCOMPLETE][6] ([i915#879])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][7] -> [DMESG-FAIL][8] ([i915#770])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [PASS][9] -> [DMESG-FAIL][10] ([i915#656])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][11] ([fdo#112271] / [i915#816]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#770]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@vgem_basic@dmabuf-export:
    - fi-tgl-y:           [DMESG-WARN][15] ([i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/fi-tgl-y/igt@vgem_basic@dmabuf-export.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/fi-tgl-y/igt@vgem_basic@dmabuf-export.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (42 -> 42)
------------------------------

  Additional (7): fi-bsw-kefka fi-elk-e7500 fi-pnv-d510 fi-icl-y fi-icl-guc fi-icl-dsi fi-snb-2600 
  Missing    (7): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-icl-u3 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7746 -> Patchwork_16099

  CI-20190529: 20190529
  CI_DRM_7746: 84d16aa256204bccaaf382504a69fe0822e67ba0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16099: 499c2a70065d4f5bec9823df98568ac5ac4df433 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16099/build_32bit.log

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

499c2a70065d drm/i915/gen7: Clear all EU/L3 residual contexts
b4809d0d433d drm/i915: Add mechanism to submit a context WA on ring submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
