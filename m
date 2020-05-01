Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 343DD1C1CA5
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 20:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B8A6E055;
	Fri,  1 May 2020 18:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 801BC6E055;
 Fri,  1 May 2020 18:12:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 795B6A00E6;
 Fri,  1 May 2020 18:12:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 01 May 2020 18:12:51 -0000
Message-ID: <158835677146.18947.5713638949659192988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Rocket_Lake?=
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

Series: Introduce Rocket Lake
URL   : https://patchwork.freedesktop.org/series/76826/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8407 -> Patchwork_17545
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17545/index.html

Known issues
------------

  Here are the changes found in Patchwork_17545 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][1] ([fdo#109271]) -> [FAIL][2] ([i915#62] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17545/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-skl-guc:         [FAIL][3] ([i915#1423] / [i915#69]) -> [FAIL][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/fi-skl-guc/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17545/fi-skl-guc/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8407 -> Patchwork_17545

  CI-20190529: 20190529
  CI_DRM_8407: ecb91f743598d9d646fa046c7341058e48494e7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17545: 65c6f79b9f54d8e3fe159bd111961bd9a10e98eb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

65c6f79b9f54 drm/i915/rkl: Add initial workarounds
aa6f5ef1a546 drm/i915/rkl: Disable PSR2
24c8c479a130 drm/i915/rkl: Handle HTI
936464f47f15 drm/i915/rkl: Add DPLL4 support
501c237f151d drm/i915/rkl: Handle comp master/slave relationships for PHYs
3a7da186ddd7 drm/i915/rkl: Don't try to read out DSI transcoders
07088eeab0a1 drm/i915/rkl: Don't try to access transcoder D
a1cda3c475a6 drm/i915/rkl: Add DDC pin mapping
456084d5a557 drm/i915/rkl: provide port/phy mapping for vbt
83600292a992 drm/i915/rkl: Setup ports/phys
4ae77e0bd298 drm/i915/rkl: Check proper SDEISR bits for TC1 and TC2 outputs
843c377d0d43 drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
882fcf0349c1 drm/i915/rkl: Add cdclk support
549a5ab2d68d drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
ee76ad50fef4 drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
57e6334efb40 drm/i915/rkl: Add power well support
bebb0e020bdd drm/i915/rkl: Limit number of universal planes to 5
02738c459099 drm/i915/rkl: Update memory bandwidth parameters
d3ee665e5a73 drm/i915/rkl: Add PCH support
9ba10f2f55eb drm/i915/rkl: Load DMC firmware for Rocket Lake
75406d425834 drm/i915/rkl: Re-use TGL GuC/HuC firmware
247cb564856c x86/gpu: add RKL stolen memory support
e0c54705a263 drm/i915/rkl: Add RKL platform info and PCI ids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17545/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
