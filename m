Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 781DD13B11E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 18:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479CB6E43A;
	Tue, 14 Jan 2020 17:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 516556E438;
 Tue, 14 Jan 2020 17:38:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48BDAA66C7;
 Tue, 14 Jan 2020 17:38:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 17:38:23 -0000
Message-ID: <157902350326.24909.3424757826812102441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114145639.2406801-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200114145639.2406801-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Undo_partial_gt-pm_enabling_on_error_paths?=
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

Series: drm/i915/gt: Undo partial gt-pm enabling on error paths
URL   : https://patchwork.freedesktop.org/series/72010/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7740 -> Patchwork_16095
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/index.html

Known issues
------------

  Here are the changes found in Patchwork_16095 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-tgl-y/igt@gem_ctx_param@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-tgl-y/igt@gem_ctx_param@basic.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#289]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-icl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][5] -> [FAIL][6] ([i915#178])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gt_engines:
    - fi-bxt-dsi:         [PASS][7] -> [DMESG-FAIL][8] ([i915#889]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-bxt-dsi/igt@i915_selftest@live_gt_engines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-bxt-dsi/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [PASS][9] -> [DMESG-WARN][10] ([i915#889]) +23 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][11] -> [FAIL][12] ([fdo#109635] / [i915#217])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][13] ([i915#505] / [i915#671]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [DMESG-WARN][15] ([i915#889]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [INCOMPLETE][17] ([i915#151]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][19] ([i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-tgl-y:           [DMESG-WARN][21] ([i915#402]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-tgl-y/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-tgl-y/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][23] ([i915#263]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][25] ([i915#44]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][27] ([i915#323]) -> [DMESG-WARN][28] ([IGT#4] / [i915#263])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (52 -> 47)
------------------------------

  Additional (1): fi-ehl-1 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7740 -> Patchwork_16095

  CI-20190529: 20190529
  CI_DRM_7740: a31eba35b99535ec8c9b5b22b53800b8ba82aae7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16095: f8907a4476b30e58e164ec02a4305a90b9fffebe @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16095/build_32bit.log

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

f8907a4476b3 drm/i915/gt: Undo partial gt-pm enabling on error paths

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
