Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB661DC4B6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 03:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92AEF6E8EE;
	Thu, 21 May 2020 01:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93A7E6E8EE;
 Thu, 21 May 2020 01:26:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 649E8A47E6;
 Thu, 21 May 2020 01:26:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 21 May 2020 01:26:35 -0000
Message-ID: <159002439538.4440.14868821936965432658@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_DG1?=
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

Series: Introduce DG1
URL   : https://patchwork.freedesktop.org/series/77496/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8515 -> Patchwork_17740
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/index.html

Known issues
------------

  Here are the changes found in Patchwork_17740 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [INCOMPLETE][1] ([i915#1803]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8515/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803


Participating hosts (49 -> 41)
------------------------------

  Missing    (8): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-hsw-4770 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8515 -> Patchwork_17740

  CI-20190529: 20190529
  CI_DRM_8515: 41f9bb782f3bb2f30be09683184bbeecb1fd31bb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5665: c5e5b0ce26fc321591a6d0235c639a1e8ec3cdfa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17740: bc44bd9a82afa9176ff124f0b0772fb0e76f6851 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bc44bd9a82af drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
c2d80f1b6f74 drm/i915/dg1: Add initial DG1 workarounds
78c4ae0c9519 drm/i915/dg1: Load DMC
193af3a3fa98 drm/i915/dg1: enable PORT C/D aka D/E
f4fbfddf277b drm/i915/dg1: map/unmap pll clocks
4a55aec7a032 drm/i915/dg1: provide port/phy mapping for vbt
aa02226ddf5c drm/i915/dg1: Update voltage swing tables for DP
4b16f7612edc drm/i915/dg1: Update comp master/slave relationships for PHYs
abb9e6fb2b34 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
f09b2dfb4b4b drm/i915/dg1: Enable first 2 ports for DG1
1dade3145d62 drm/i915/dg1: Log counter on SLM ECC error
f97a2a7d014c drm/i915/dg1: Handle GRF/IC ECC error irq
cc507b9ee4a3 drm/i915/dg1: gmbus pin mapping
ec9aba37c1bc drm/i915/dg1: invert HPD pins
ee35c0b01372 drm/i915/dg1: add hpd interrupt handling
b71cffc572c1 drm/i915/dg1: Enable DPLL for DG1
a479afd96b2f drm/i915/dg1: Add and setup DPLLs for DG1
8ce1edf79a8b drm/i915/dg1: Add DPLL macros for DG1
1374e1028fdd drm/i915/dg1: Wait for pcode/uncore handshake at startup
ae8f9beefdc3 drm/i915/dg1: add support for the master unit interrupt
c3003b9fc682 drm/i915/dg1: Increase mmio size to 4MB
afeb7e41f94f drm/i915/dg1: Add DG1 power wells
56eeab2dc631 drm/i915/dg1: Define MOCS table for DG1
3dbe2b7cdf3b drm/i915/dg1: Initialize RAWCLK properly
cb1bcd5b7bed drm/i915/dg1: Add fake PCH
40ca1f1b6295 drm/i915/dg1: Add DG1 PCI IDs
5b325ece80ab drm/i915/dg1: add initial DG-1 definitions
24d7987fb08f drm/i915: add pcie snoop flag
4aa7cd7024ae drm/i915: Add has_master_unit_irq flag
84c20511222a drm/i915: make intel_{uncore, de}_rmw() more useful
7afbe335b525 drm/i915/rkl: Add initial workarounds
33974ed52c17 drm/i915/rkl: Handle comp master/slave relationships for PHYs
a33d8a84bd52 drm/i915/rkl: Handle HTI
03cb728ff5e5 drm/i915/rkl: provide port/phy mapping for vbt
470f943d8711 drm/i915/rkl: Setup ports/phys
8eb7430370e7 drm/i915/rkl: Add DDC pin mapping
eb8bcc051bcb drm/i915/rkl: Add DPLL4 support

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17740/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
