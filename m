Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D40713DF34
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 16:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479A96E227;
	Thu, 16 Jan 2020 15:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4A616E227;
 Thu, 16 Jan 2020 15:50:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA61BA011C;
 Thu, 16 Jan 2020 15:50:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 16 Jan 2020 15:50:17 -0000
Message-ID: <157918981773.12912.17874787854101363155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200115152437.13207-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Align_engine-=3Euabi=5Fclass/instance_with_i915=5Fdrm?=
 =?utf-8?b?LmggKHJldjIp?=
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

Series: drm/i915: Align engine->uabi_class/instance with i915_drm.h (rev2)
URL   : https://patchwork.freedesktop.org/series/72078/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7754 -> Patchwork_16130
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/index.html

Known issues
------------

  Here are the changes found in Patchwork_16130 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][3] -> [DMESG-WARN][4] ([i915#889])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [PASS][5] -> [INCOMPLETE][6] ([CI#80] / [i915#424])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][7] ([fdo#111096] / [i915#323]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_vgem@basic-busy-default:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/fi-tgl-y/igt@prime_vgem@basic-busy-default.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/fi-tgl-y/igt@prime_vgem@basic-busy-default.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (48 -> 39)
------------------------------

  Additional (3): fi-byt-n2820 fi-snb-2520m fi-ehl-1 
  Missing    (12): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-6770hq fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-byt-clapper fi-bsw-nick fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7754 -> Patchwork_16130

  CI-20190529: 20190529
  CI_DRM_7754: 4db14301dfa813d24cd2ad46552af83d493c5d12 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16130: a81c58f048d6eaa408fc35cf652354a65efc7b28 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16130/build_32bit.log

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

a81c58f048d6 drm/i915: Align engine->uabi_class/instance with i915_drm.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16130/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
