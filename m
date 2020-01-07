Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE40132CFD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 18:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88DA66E832;
	Tue,  7 Jan 2020 17:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C17B6E831;
 Tue,  7 Jan 2020 17:29:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 241E4A0114;
 Tue,  7 Jan 2020 17:29:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jan 2020 17:29:30 -0000
Message-ID: <157841817014.8942.15103642666127860942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106234703.645168-1-matthew.auld@intel.com>
In-Reply-To: <20200106234703.645168-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gtt=3A_split_up_i915=5Fgem=5Fgtt_=28rev2=29?=
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

Series: drm/i915/gtt: split up i915_gem_gtt (rev2)
URL   : https://patchwork.freedesktop.org/series/71678/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7695 -> Patchwork_16012
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/index.html

Known issues
------------

  Here are the changes found in Patchwork_16012 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [PASS][1] -> [DMESG-WARN][2] ([i915#889]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([i915#765])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-icl-y/igt@i915_selftest@live_active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][7] -> [DMESG-FAIL][8] ([i915#770])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_lrc:
    - fi-skl-6600u:       [PASS][9] -> [DMESG-FAIL][10] ([i915#889]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-skl-6600u/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_late_gt_pm:
    - fi-skl-6600u:       [PASS][11] -> [DMESG-WARN][12] ([i915#889]) +23 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-skl-6600u/igt@i915_selftest@live_late_gt_pm.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-skl-lmem:        [PASS][13] -> [INCOMPLETE][14] ([i915#198])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-skl-lmem/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][15] -> [FAIL][16] ([fdo#111407])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-byt-n2820:       [FAIL][17] ([i915#694]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [DMESG-FAIL][19] ([i915#723]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-bsw-nick/igt@i915_selftest@live_blt.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][21] ([i915#192] / [i915#193] / [i915#194]) -> [FAIL][22] ([i915#858])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/fi-kbl-8809g/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/fi-kbl-8809g/igt@runner@aborted.html

  
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (53 -> 44)
------------------------------

  Missing    (9): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7695 -> Patchwork_16012

  CI-20190529: 20190529
  CI_DRM_7695: 8df346a062d56d97ab53555d3f5829c26f950233 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16012: b50ab2add6b64821d1126db93f7565398bc228e1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b50ab2add6b6 drm/i915/gtt: split up i915_gem_gtt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16012/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
