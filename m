Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8005141E93
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 15:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3CF66E3CE;
	Sun, 19 Jan 2020 14:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3B546E3C1;
 Sun, 19 Jan 2020 14:38:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAE10A010F;
 Sun, 19 Jan 2020 14:38:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 19 Jan 2020 14:38:32 -0000
Message-ID: <157944471273.23914.16802248119449871353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200119135558.3943738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200119135558.3943738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Acquire_ce-=3Eactive?=
 =?utf-8?q?_before_ce-=3Epin=5Fcount/ce-=3Epin=5Fmutex?=
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

Series: series starting with [1/2] drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
URL   : https://patchwork.freedesktop.org/series/72249/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7772 -> Patchwork_16168
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/index.html

Known issues
------------

  Here are the changes found in Patchwork_16168 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2] ([fdo#103375])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([fdo#111550])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-r:           [PASS][5] -> [DMESG-FAIL][6] ([i915#841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/fi-kbl-r/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_hangcheck:
    - fi-kbl-7500u:       [PASS][7] -> [DMESG-FAIL][8] ([i915#889]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/fi-kbl-7500u/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_vma:
    - fi-kbl-7500u:       [PASS][9] -> [DMESG-WARN][10] ([i915#889]) +23 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/fi-kbl-7500u/igt@i915_selftest@live_vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/fi-kbl-7500u/igt@i915_selftest@live_vma.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][11] ([i915#671]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][13] ([i915#178]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][15] ([IGT#4] / [i915#263]) -> [FAIL][16] ([fdo#103375])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7772/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#841]: https://gitlab.freedesktop.org/drm/intel/issues/841
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (40 -> 43)
------------------------------

  Additional (7): fi-bdw-5557u fi-hsw-peppy fi-snb-2520m fi-ivb-3770 fi-elk-e7500 fi-skl-lmem fi-snb-2600 
  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-bsw-n3050 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7772 -> Patchwork_16168

  CI-20190529: 20190529
  CI_DRM_7772: f65c394056d8637ff151fa83d5d1613adc0932d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5372: 0d00a27fbbd4d4a77d24499ea9811e07e65eb0ac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16168: d9228769075ac40a8364a750bf2d75ae70089e0e @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16168/build_32bit.log

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

d9228769075a drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release
a0bde5e9b518 drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16168/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
