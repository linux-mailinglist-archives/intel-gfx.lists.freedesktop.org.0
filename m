Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E97140AC5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 14:33:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3BAC6F570;
	Fri, 17 Jan 2020 13:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AF306F56F;
 Fri, 17 Jan 2020 13:33:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21BC7A47DF;
 Fri, 17 Jan 2020 13:33:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Jan 2020 13:33:25 -0000
Message-ID: <157926800513.26754.633724905280901264@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117102418.2954557-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117102418.2954557-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Squelch_kerneldoc_complaints?=
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

Series: drm/i915/display: Squelch kerneldoc complaints
URL   : https://patchwork.freedesktop.org/series/72182/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7760 -> Patchwork_16149
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16149 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16149, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16149/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16149:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16149/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16149 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][3] -> [INCOMPLETE][4] ([i915#671])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16149/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_addfb_basic@basic-x-tiled:
    - fi-icl-dsi:         [PASS][5] -> [DMESG-WARN][6] ([i915#109])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/fi-icl-dsi/igt@kms_addfb_basic@basic-x-tiled.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16149/fi-icl-dsi/igt@kms_addfb_basic@basic-x-tiled.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][7] -> [DMESG-WARN][8] ([i915#44])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16149/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][9] ([i915#671]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7760/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16149/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671


Participating hosts (45 -> 43)
------------------------------

  Additional (3): fi-byt-n2820 fi-skl-6600u fi-elk-e7500 
  Missing    (5): fi-kbl-soraka fi-hsw-4770r fi-ilk-m540 fi-byt-squawks fi-bsw-cyan 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7760 -> Patchwork_16149

  CI-20190529: 20190529
  CI_DRM_7760: 4e091847574c5397364f14c7e24dea488f4be2d1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16149: 52e8cb9553764f3a26d81ea73f80cbdd06a0d262 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16149/build_32bit.log

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

52e8cb955376 drm/i915/display: Squelch kerneldoc complaints

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16149/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
