Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E72E1170FAE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 05:33:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C4C6E4B5;
	Thu, 27 Feb 2020 04:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 68C016E4B5;
 Thu, 27 Feb 2020 04:33:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6167AA011B;
 Thu, 27 Feb 2020 04:33:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 27 Feb 2020 04:33:23 -0000
Message-ID: <158277800339.29656.15075188375909859063@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226203455.23032-1-imre.deak@intel.com>
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_DPLL_output/refclock_tracking?=
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

Series: drm/i915: Clean up DPLL output/refclock tracking
URL   : https://patchwork.freedesktop.org/series/73977/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8010 -> Patchwork_16725
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16725:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16725 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][5] ([CI#94] / [i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (51 -> 41)
------------------------------

  Missing    (10): fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-cfl-8109u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8010 -> Patchwork_16725

  CI-20190529: 20190529
  CI_DRM_8010: 97bbec4d80df1c6573fc7063ad830e8beefe07c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16725: a5e019011c6b18582d2c4722209a2d8fd5b0ed38 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a5e019011c6b drm/i915: Unify the DPLL ref clock frequency tracking
fcda3e44c96b drm/i915/hsw: Use the read-out WRPLL/SPLL state instead of reading out again
cd28115faa3a drm/i915/skl, cnl: Split out the WRPLL/LCPLL frequency calculation
713fb8dc5a64 drm/i915/hsw: Split out the WRPLL, LCPLL, SPLL frequency calculation
08a1ec87a9d9 drm/i915/hsw: Split out the SPLL parameter calculation
b20cdae29985 drm/i915/hsw: Rename the get HDMI/DP DPLL funcs to get WRPLL/LCPLL
fcb70a2a2063 drm/i915/skl: Parametrize the DPLL ref clock instead of open-coding it
60a8609aa55a drm/i915: Move DPLL frequency calculation to intel_dpll_mgr.c
c6344edea0b3 drm/i915/hsw: Use the DPLL ID when calculating DPLL clock
75d78cadd4ca drm/i915: Move the DPLL vfunc inits after the func defines
0d005a5d024f drm/i915: Keep the global DPLL state in a DPLL specific struct
649c52ce9987 drm/i915: Move DPLL HW readout/sanitize fns to intel_dpll_mgr.c
3ad933d04ce1 drm/i915: Fix bounds check in intel_get_shared_dpll_id()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
