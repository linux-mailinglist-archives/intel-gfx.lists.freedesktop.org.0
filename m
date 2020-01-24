Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879B1148673
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 15:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE91572ABF;
	Fri, 24 Jan 2020 14:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24AAE72ABB;
 Fri, 24 Jan 2020 14:01:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1CBB6A00E9;
 Fri, 24 Jan 2020 14:01:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Jan 2020 14:01:29 -0000
Message-ID: <157987448908.15091.3392001868275764717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124105138.40660-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200124105138.40660-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Tighten_atomicity_of_i9?=
 =?utf-8?q?15=5Factive=5Facquire_vs_i915=5Factive=5Frelease?=
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

Series: series starting with [1/2] drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release
URL   : https://patchwork.freedesktop.org/series/72523/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7809 -> Patchwork_16251
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/index.html

Known issues
------------

  Here are the changes found in Patchwork_16251 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][3] -> [INCOMPLETE][4] ([i915#45])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6700k2:      [PASS][5] -> [INCOMPLETE][6] ([i915#198])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][7] -> [FAIL][8] ([CI#94])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_coherency:
    - fi-cfl-guc:         [PASS][9] -> [DMESG-FAIL][10] ([i915#889]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-cfl-guc/igt@i915_selftest@live_coherency.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-cfl-guc/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_timelines:
    - fi-cfl-guc:         [PASS][11] -> [DMESG-WARN][12] ([i915#889]) +23 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-cfl-guc/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_addfb_basic@invalid-set-prop:
    - fi-icl-dsi:         [PASS][13] -> [DMESG-WARN][14] ([i915#109])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-icl-dsi/igt@kms_addfb_basic@invalid-set-prop.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-icl-dsi/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@vgem_basic@dmabuf-export:
    - fi-tgl-y:           [PASS][15] -> [DMESG-WARN][16] ([CI#94] / [i915#402])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@vgem_basic@dmabuf-export.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-tgl-y/igt@vgem_basic@dmabuf-export.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       [INCOMPLETE][19] ([i915#879]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#889]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][23] ([i915#424]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-kbl-x1275:       [INCOMPLETE][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-x1275/igt@i915_selftest@live_sanitycheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-kbl-x1275/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][27] ([fdo#111096] / [i915#323]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][29] ([i915#553] / [i915#725]) -> [DMESG-FAIL][30] ([i915#725])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7809/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7809 -> Patchwork_16251

  CI-20190529: 20190529
  CI_DRM_7809: 861f608ce6e3c1a1ad320a5d18055601cff36e45 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16251: 15959f6a786eff1adedc705cc388b877eba610bc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

15959f6a786e drm/i915/gt: Acquire ce->active before ce->pin_count/ce->pin_mutex
092875f84719 drm/i915: Tighten atomicity of i915_active_acquire vs i915_active_release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16251/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
