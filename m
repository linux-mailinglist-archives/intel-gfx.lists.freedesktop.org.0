Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8DB1BE48B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 19:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C09B6EAB0;
	Wed, 29 Apr 2020 17:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 259956E9E7;
 Wed, 29 Apr 2020 17:01:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1362A47EE;
 Wed, 29 Apr 2020 17:01:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Apr 2020 17:01:19 -0000
Message-ID: <158817967996.6698.13955567058604324276@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429112151.5263-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200429112151.5263-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Keep_a_no-frill?=
 =?utf-8?q?s_swappable_copy_of_the_default_context_state_=28rev4=29?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Keep a no-frills swappable copy of the default context state (rev4)
URL   : https://patchwork.freedesktop.org/series/76719/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8392 -> Patchwork_17516
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17516 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17516, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17516:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
    - fi-cml-s:           [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-cml-s/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-cml-s/igt@i915_selftest@live@workarounds.html
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
    - fi-cfl-guc:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
    - fi-skl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-skl-guc/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-skl-guc/igt@i915_selftest@live@workarounds.html
    - fi-skl-6600u:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
    - fi-glk-dsi:         [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
    - fi-apl-guc:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-apl-guc/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-apl-guc/igt@i915_selftest@live@workarounds.html
    - fi-kbl-8809g:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
    - fi-bsw-kefka:       [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-bsw-kefka/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-bsw-kefka/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8700k:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
    - fi-kbl-r:           [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-kbl-r/igt@i915_selftest@live@workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-kbl-r/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8109u:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
    - fi-bsw-nick:        [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-bsw-nick/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-bsw-nick/igt@i915_selftest@live@workarounds.html
    - fi-skl-lmem:        [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-skl-lmem/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-skl-lmem/igt@i915_selftest@live@workarounds.html
    - fi-kbl-guc:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
    - fi-bdw-5557u:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html
    - fi-kbl-soraka:      [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-kbl-soraka/igt@i915_selftest@live@workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-kbl-soraka/igt@i915_selftest@live@workarounds.html
    - fi-whl-u:           [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-whl-u/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-whl-u/igt@i915_selftest@live@workarounds.html
    - fi-cml-u2:          [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-cml-u2/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-cml-u2/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17516 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - fi-bwr-2160:        [INCOMPLETE][43] ([i915#489]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-bwr-2160/igt@i915_selftest@live@workarounds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-bwr-2160/igt@i915_selftest@live@workarounds.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8392 -> Patchwork_17516

  CI-20190529: 20190529
  CI_DRM_8392: c5ceaac881b4dc4eca6473abeb27342663c898d3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17516: 0ee170aee8d90212f1049f617beb921e7b67294a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0ee170aee8d9 drm/i915/gt: Stop keeping the pinned_default_state
33c25886e49a drm/i915/gt: Keep a no-frills swappable copy of the default context state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
