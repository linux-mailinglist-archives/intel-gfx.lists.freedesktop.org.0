Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5F7144486
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 19:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F916EE2E;
	Tue, 21 Jan 2020 18:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AABFC6EE2E;
 Tue, 21 Jan 2020 18:45:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80925A0094;
 Tue, 21 Jan 2020 18:45:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 21 Jan 2020 18:45:41 -0000
Message-ID: <157963234149.11480.17979489665355779532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Global_state_rework_=28rev2=29?=
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

Series: drm/i915: Global state rework (rev2)
URL   : https://patchwork.freedesktop.org/series/72301/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7786 -> Patchwork_16191
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/index.html

Known issues
------------

  Here are the changes found in Patchwork_16191 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-no-display:
    - fi-glk-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#58] / [k.org#198133])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-glk-dsi/igt@i915_module_load@reload-no-display.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-glk-dsi/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#770])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-ivb-3770/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-ivb-3770/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][7] ([i915#656]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([CI#80] / [i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][11] ([i915#770]) -> [DMESG-FAIL][12] ([i915#725])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#563]) -> [DMESG-FAIL][14] ([i915#725])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][15] ([IGT#4] / [i915#263]) -> [DMESG-FAIL][16] ([IGT#4] / [i915#263])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-cml-s:           [FAIL][17] ([fdo#111764] / [i915#577]) -> [FAIL][18] ([i915#577])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7786/fi-cml-s/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#968]: https://gitlab.freedesktop.org/drm/intel/issues/968
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (45 -> 39)
------------------------------

  Additional (4): fi-skl-lmem fi-blb-e6850 fi-skl-6600u fi-elk-e7500 
  Missing    (10): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7786 -> Patchwork_16191

  CI-20190529: 20190529
  CI_DRM_7786: 72275204176397fc718218335edabb840f520024 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16191: c3282508b4ed1464aba5645604bf41750f53c96d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c3282508b4ed drm/i915: Store active_pipes bitmask in cdclk state
8b4ed3aff508 drm/i915: Convert cdclk to global state
81d4a119f677 drm/i915: Introduce intel_calc_active_pipes()
82426865c238 drm/i915: Convert bandwidth state to global state
91fd07c1cb34 drm/i915: Intrduce better global state handling
131e92e40122 drm/i915: Move intel_atomic_state_free() into intel_atomic.c
9e2da7c71fec drm/i915: s/init_cdclk/init_cdclk_hw/
49fde73eb22f drm/i915: swap() the entire cdclk state
156b0ecd892d drm/i915: Extract intel_cdclk_state
7cd74aefdc85 drm/i915: Simplify intel_set_cdclk_{pre, post}_plane_update() calling convention
882b4774005d drm/i915: s/cdclk_state/cdclk_config/
58762cf832fb drm/i915: s/need_cd2x_updare/can_cd2x_update/
2dc3b77d21ab drm/i915: Collect more cdclk state under the same roof
91a2393ccd09 drm/i915: Move more cdclk state handling into the cdclk code
3d4bad98ff35 drm/i915: Nuke skl wm.dirty_pipes bitmask
a5c714cbc1b1 drm/i915: Move linetime wms into the crtc state
6ee8aa846aab drm/i915: Polish WM_LINETIME register stuff

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16191/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
