Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE4D173FC7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 19:40:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910026F4AF;
	Fri, 28 Feb 2020 18:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1FE66F4AF;
 Fri, 28 Feb 2020 18:40:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F468A47E6;
 Fri, 28 Feb 2020 18:40:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 28 Feb 2020 18:40:02 -0000
Message-ID: <158291520255.7474.15393160148636667835@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226203455.23032-1-imre.deak@intel.com>
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_DPLL_output/refclock_tracking_=28rev2=29?=
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

Series: drm/i915: Clean up DPLL output/refclock tracking (rev2)
URL   : https://patchwork.freedesktop.org/series/73977/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8032 -> Patchwork_16764
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/index.html

Known issues
------------

  Here are the changes found in Patchwork_16764 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [PASS][1] -> [INCOMPLETE][2] ([i915#151])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][3] -> [DMESG-FAIL][4] ([i915#877])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][9] ([i915#704]) -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#111096] / [i915#323]) -> [FAIL][12] ([fdo#111407])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8032/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#998]: https://gitlab.freedesktop.org/drm/intel/issues/998


Participating hosts (47 -> 44)
------------------------------

  Additional (4): fi-byt-j1900 fi-bdw-5557u fi-bsw-kefka fi-kbl-r 
  Missing    (7): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8032 -> Patchwork_16764

  CI-20190529: 20190529
  CI_DRM_8032: e61f34133ad908d4b455344daa7b4edb9fcf680c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16764: 8ab21b812217008f9addcd71af53a833e04e76f4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8ab21b812217 drm/i915: Unify the DPLL ref clock frequency tracking
7766f980fe46 drm/i915/hsw: Use the read-out WRPLL/SPLL state instead of reading out again
dcf2a96e2ea6 drm/i915/skl, cnl: Split out the WRPLL/LCPLL frequency calculation
7c9bf0760704 drm/i915/hsw: Split out the WRPLL, LCPLL, SPLL frequency calculation
9b1ae235617a drm/i915/hsw: Split out the SPLL parameter calculation
d44f7bddc44c drm/i915/hsw: Rename the get HDMI/DP DPLL funcs to get WRPLL/LCPLL
12c8e6996ea5 drm/i915/skl: Parametrize the DPLL ref clock instead of open-coding it
16cbb5c45f38 drm/i915: Move DPLL frequency calculation to intel_dpll_mgr.c
e7b63db4be61 drm/i915/hsw: Use the DPLL ID when calculating DPLL clock
b87324c7e4d4 drm/i915: Move the DPLL vfunc inits after the func defines
a46550bb063a drm/i915: Keep the global DPLL state in a DPLL specific struct
4a956a747f48 drm/i915: Move DPLL HW readout/sanitize fns to intel_dpll_mgr.c
19fd5dd4fc02 drm/i915: Fix bounds check in intel_get_shared_dpll_id()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16764/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
