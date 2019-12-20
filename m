Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D62B1278D9
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 11:08:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51246EBFB;
	Fri, 20 Dec 2019 10:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D19766E40F;
 Fri, 20 Dec 2019 10:08:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7A1FA0094;
 Fri, 20 Dec 2019 10:08:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 20 Dec 2019 10:08:20 -0000
Message-ID: <157683650078.9213.6647058082361489879@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220091150.256501-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191220091150.256501-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Drop_GEM_context_a?=
 =?utf-8?q?s_a_direct_link_from_i915=5Frequest?=
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

Series: series starting with [CI,1/4] drm/i915: Drop GEM context as a direct link from i915_request
URL   : https://patchwork.freedesktop.org/series/71204/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7612 -> Patchwork_15857
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15857 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15857, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15857:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_coherency:
    - fi-icl-u3:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-icl-u3/igt@i915_selftest@live_coherency.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-icl-u3/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_contexts:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-icl-u2/igt@i915_selftest@live_gt_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-icl-u2/igt@i915_selftest@live_gt_contexts.html

  * igt@i915_selftest@live_hangcheck:
    - fi-bsw-nick:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-bsw-nick/igt@i915_selftest@live_hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-bsw-nick/igt@i915_selftest@live_hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_15857 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_blits@basic:
    - fi-byt-j1900:       [PASS][7] -> [FAIL][8] ([i915#832])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-byt-j1900/igt@gem_tiled_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-byt-j1900/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][9] -> [DMESG-FAIL][10] ([i915#770])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [INCOMPLETE][11] ([i915#694]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [INCOMPLETE][13] ([i915#45]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][15] ([i915#109] / [i915#289]) -> [DMESG-WARN][16] ([i915#289])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-icl-u2/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][17] ([i915#725]) -> [DMESG-FAIL][18] ([i915#553] / [i915#725])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +9 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7612/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 42)
------------------------------

  Additional (4): fi-skl-guc fi-cfl-guc fi-bwr-2160 fi-whl-u 
  Missing    (11): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-kbl-7560u fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7612 -> Patchwork_15857

  CI-20190529: 20190529
  CI_DRM_7612: d8427504d16e1aa87eab972f812c02478522bd70 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15857: 9e5540faf0412271eec457e2fef4f583e71718d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9e5540faf041 drm/i915: Move i915_gem_init_contexts() earlier
bc9725c0ca2d drm/i915: Remove i915->kernel_context
a16a3146d30b drm/i915: Push the use-semaphore marker onto the intel_context
722191151fb4 drm/i915: Drop GEM context as a direct link from i915_request

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15857/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
