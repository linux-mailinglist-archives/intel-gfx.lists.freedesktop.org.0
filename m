Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 234711520F2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 20:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84EF66E8CB;
	Tue,  4 Feb 2020 19:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AD3F6E8C8;
 Tue,  4 Feb 2020 19:20:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27396A0009;
 Tue,  4 Feb 2020 19:20:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 04 Feb 2020 19:20:40 -0000
Message-ID: <158084404015.25087.1190954074976302573@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203151343.14378-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200203151343.14378-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Pimp_DP_DFP_handling?=
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

Series: drm/i915: Pimp DP DFP handling
URL   : https://patchwork.freedesktop.org/series/72928/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7864 -> Patchwork_16399
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16399 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16399, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16399:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-each:
    - fi-skl-6770hq:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-skl-6770hq/igt@gem_sync@basic-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-skl-6770hq/igt@gem_sync@basic-each.html

  
Known issues
------------

  Here are the changes found in Patchwork_16399 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][3] -> [INCOMPLETE][4] ([i915#45])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][5] -> [TIMEOUT][6] ([fdo#112271] / [i915#1084])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][7] -> [FAIL][8] ([CI#94])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][11] -> [DMESG-FAIL][12] ([i915#553] / [i915#725])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][13] -> [INCOMPLETE][14] ([fdo#106070] / [i915#424])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-x1275:       [PASS][15] -> [TIMEOUT][16] ([fdo#112271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-kbl-x1275/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-kbl-x1275/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u2:          [PASS][17] -> [INCOMPLETE][18] ([fdo#108569])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-icl-u2/igt@i915_selftest@live_hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-icl-u2/igt@i915_selftest@live_hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][19] ([fdo#108569]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-icl-y/igt@i915_selftest@live_execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-6600u:       [TIMEOUT][21] ([fdo#111732] / [fdo#112271]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_perf:
    - fi-apl-guc:         [INCOMPLETE][23] ([fdo#103927]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-apl-guc/igt@i915_selftest@live_perf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-apl-guc/igt@i915_selftest@live_perf.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][25] ([CI#94] / [i915#402]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][27] ([fdo#112271]) -> [FAIL][28] ([i915#694])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][29] ([i915#725]) -> [DMESG-FAIL][30] ([i915#553] / [i915#725])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (50 -> 43)
------------------------------

  Additional (3): fi-skl-lmem fi-glk-dsi fi-snb-2520m 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-byt-clapper fi-ivb-3770 fi-kbl-8809g fi-snb-2600 fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7864 -> Patchwork_16399

  CI-20190529: 20190529
  CI_DRM_7864: 5a140e2fc771e4c8b10d14e2db7bfb4996ee9d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16399: 2675d3dca335a78da4b91ef0d3b48e8c8b7f0e96 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2675d3dca335 drm/i915: Try to frob the TMDS buffer enable knob on DP++ dongles on DP DFPs
b6df3788e42c drm/i915: Try to probe DP++ dongles on DP++ downstream facing ports
334730414489 drm/i915: Decouple DP++ from the HDMI code
4570c3326269 drm/i915: Do YCbCr 444->420 conversion via DP protocol converters
3b38188f6d4b drm/dp: Add helpers for DFP YCbCr 4:2:0 handling
258639e92a7e drm/i915: DP->HDMI TMDS clock limits vs. deep color
004b2de6a4da drm/i915: Extract intel_hdmi_has_audio()
cc7d9efd1998 drm/i915: Handle downstream facing ports w/o EDID
cfe69f08a962 drm/dp: Add drm_dp_downstream_mode()
1e8824c04e15 drm/i915: Configure DP 1.3+ protocol converted HDMI mode
2699909da08b drm/i915: Deal with TMDS DFP clock limits
bd5a85914575 drm/dp: Add drm_dp_downstream_{min, max}_tmds_clock()
18bfccf2db60 drm/i915: Dump downstream facing port caps
225204d92e23 drm/i915: Reworkd DP DFP clock handling
a3791019b244 drm/dp: Redo drm_dp_downstream_max_clock() as drm_dp_downstream_max_dotclock()
cf9506a4476b drm/dp: Pimp drm_dp_downstream_max_bpc()
93acb70d4717 drm/dp: Add helpers to identify downstream facing port types
00f28ad2ea76 drm/i915: Reworkd DFP max bpc handling
25a89b50d5de drm/dp: Define more downstream facing port caps
046014a9c3c0 drm/dp: Define protocol converter DPCD registers
9128f5651fbf drm/i915/lspcon: Do not send infoframes to non-HDMI sinks
a548dc77b11e drm/dp: Include the AUX CH name in the debug messages
ca153f382d1c drm/i915: Add glk to intel_detect_preproduction_hw()
784501bdd7bb drm/i915: Drop WaDDIIOTimeout:glk
17f2f3466819 drm/i915: Limit display Wa_1405510057 to gen11
a94d44f51a6c drm/i915: Nuke pre-production GLK HDMI w/a 1139

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16399/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
