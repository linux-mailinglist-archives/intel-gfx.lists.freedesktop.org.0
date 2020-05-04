Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 031681C4A5B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 01:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F2A6E4F3;
	Mon,  4 May 2020 23:33:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBF736E4F4;
 Mon,  4 May 2020 23:33:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5576A47E8;
 Mon,  4 May 2020 23:33:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 04 May 2020 23:33:35 -0000
Message-ID: <158863521571.5817.15616945487848843117@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Rocket_Lake_=28rev4=29?=
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

Series: Introduce Rocket Lake (rev4)
URL   : https://patchwork.freedesktop.org/series/76826/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8424 -> Patchwork_17577
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17577/index.html

Known issues
------------

  Here are the changes found in Patchwork_17577 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][1] ([i915#62]) -> [FAIL][2] ([i915#62] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8424/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17577/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (51 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8424 -> Patchwork_17577

  CI-20190529: 20190529
  CI_DRM_8424: 69ecf47ef1aabcdc8a4e070584d0a717bbabf4fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17577: 9b58f54fa37eab9fb17fe54e748b8194eac9f57b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b58f54fa37e drm/i915/rkl: Add initial workarounds
0126c509f30f drm/i915/rkl: Disable PSR2
8b97223a1c60 drm/i915/rkl: Handle HTI
69bfbb9c7a02 drm/i915/rkl: Add DPLL4 support
5018930e1944 drm/i915/rkl: Handle comp master/slave relationships for PHYs
6906840e8b24 drm/i915/rkl: Don't try to read out DSI transcoders
b8b1dbd88b20 drm/i915/rkl: Don't try to access transcoder D
3c2d8a199e89 drm/i915/rkl: Add DDC pin mapping
196dbf07dad1 drm/i915/rkl: provide port/phy mapping for vbt
a8c3d67dc688 drm/i915/rkl: Setup ports/phys
1c3381316fe1 drm/i915/rkl: Check proper SDEISR bits for TC1 and TC2 outputs
02aa4c0c4f8f drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
7846d1a805b9 drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
fda2d4b25173 drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
f02fc9990788 drm/i915/rkl: Add power well support
a445dde7ad9f drm/i915/rkl: Limit number of universal planes to 5
dc4048963014 drm/i915/rkl: Update memory bandwidth parameters
1c85ab4847be drm/i915/rkl: Add PCH support
90f79585717f drm/i915/rkl: Load DMC firmware for Rocket Lake
630f1d4d8718 drm/i915/rkl: Re-use TGL GuC/HuC firmware
803b4f04888a x86/gpu: add RKL stolen memory support
e6bef4e2c937 drm/i915/rkl: Add RKL platform info and PCI ids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17577/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
