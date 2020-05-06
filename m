Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F861C7DA1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 00:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E4966E8FC;
	Wed,  6 May 2020 22:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C28616E8FB;
 Wed,  6 May 2020 22:55:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BBC57A0078;
 Wed,  6 May 2020 22:55:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 06 May 2020 22:55:45 -0000
Message-ID: <158880574573.11895.11783269497906707719@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Rocket_Lake_=28rev5=29?=
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

Series: Introduce Rocket Lake (rev5)
URL   : https://patchwork.freedesktop.org/series/76826/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8438 -> Patchwork_17595
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17595/index.html

Known issues
------------

  Here are the changes found in Patchwork_17595 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][1] ([fdo#109271]) -> [FAIL][2] ([i915#579])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8438/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17595/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8438 -> Patchwork_17595

  CI-20190529: 20190529
  CI_DRM_8438: 9463611ee93f4b254044b8b2467a1e81f942ad01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5635: e83abfca61d407d12eee4d25bb0e8686337a7791 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17595: a956d64b89965d60f21052c98e2383108c95d17f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a956d64b8996 drm/i915/rkl: Add initial workarounds
b71b6be89206 drm/i915/rkl: Disable PSR2
a31143c0e350 drm/i915/rkl: Handle HTI
0728f1c7d53c drm/i915/rkl: Add DPLL4 support
f53b5ed86243 drm/i915/rkl: Handle comp master/slave relationships for PHYs
01eeaee24e99 drm/i915/rkl: Don't try to read out DSI transcoders
907417b5599f drm/i915/rkl: Don't try to access transcoder D
06afd0a313fb drm/i915/rkl: Add DDC pin mapping
c3f23b36db92 drm/i915/rkl: provide port/phy mapping for vbt
aa69de72e7ad drm/i915/rkl: Setup ports/phys
ffcedfb908db drm/i915/rkl: Check proper SDEISR bits for TC1 and TC2 outputs
cbc732494a17 drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
c601db6a20fd drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
58ad52c714dd drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
d2f8442de5ae drm/i915/rkl: Add power well support
baec83a0ef12 drm/i915/rkl: Limit number of universal planes to 5
79d1afd4876a drm/i915/rkl: Update memory bandwidth parameters
a828a46df1e1 drm/i915/rkl: Add PCH support
5077d28b310e drm/i915/rkl: Load DMC firmware for Rocket Lake
294ed2fa7047 drm/i915/rkl: Re-use TGL GuC/HuC firmware
15e40d80e929 x86/gpu: add RKL stolen memory support
992fe0e5bf6f drm/i915/rkl: Add RKL platform info and PCI ids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17595/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
