Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0021668E5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 21:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE716EE55;
	Thu, 20 Feb 2020 20:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DC1E6EE55;
 Thu, 20 Feb 2020 20:50:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06D55A0003;
 Thu, 20 Feb 2020 20:50:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 20 Feb 2020 20:50:05 -0000
Message-ID: <158223180599.17407.12925694613294013424@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220160856.19888-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200220160856.19888-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_intel=5Fplane=5Fdata=5Frate_for_min=5Fcdclk_calcul?=
 =?utf-8?q?ation_=28rev2=29?=
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

Series: drm/i915: Use intel_plane_data_rate for min_cdclk calculation (rev2)
URL   : https://patchwork.freedesktop.org/series/73718/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7975 -> Patchwork_16647
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16647 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16647, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16647:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-gdg-551:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-gdg-551/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-gdg-551/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_busy@basic@flip}:
    - fi-icl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-icl-guc/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-icl-guc/igt@kms_busy@basic@flip.html
    - fi-hsw-4770:        [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-hsw-4770/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-hsw-4770/igt@kms_busy@basic@flip.html
    - {fi-tgl-u}:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-tgl-u/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-tgl-u/igt@kms_busy@basic@flip.html
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-kbl-7560u/igt@kms_busy@basic@flip.html
    - fi-cfl-guc:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-cfl-guc/igt@kms_busy@basic@flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-cfl-guc/igt@kms_busy@basic@flip.html
    - fi-bsw-n3050:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-bsw-n3050/igt@kms_busy@basic@flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-bsw-n3050/igt@kms_busy@basic@flip.html
    - fi-skl-guc:         [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-skl-guc/igt@kms_busy@basic@flip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-skl-guc/igt@kms_busy@basic@flip.html
    - fi-ilk-650:         [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-ilk-650/igt@kms_busy@basic@flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-ilk-650/igt@kms_busy@basic@flip.html
    - fi-icl-y:           [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-icl-y/igt@kms_busy@basic@flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-icl-y/igt@kms_busy@basic@flip.html
    - fi-hsw-4770r:       [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-hsw-4770r/igt@kms_busy@basic@flip.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-hsw-4770r/igt@kms_busy@basic@flip.html
    - fi-skl-6700k2:      [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-skl-6700k2/igt@kms_busy@basic@flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-skl-6700k2/igt@kms_busy@basic@flip.html
    - fi-icl-u2:          [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-icl-u2/igt@kms_busy@basic@flip.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-icl-u2/igt@kms_busy@basic@flip.html
    - fi-hsw-peppy:       [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-hsw-peppy/igt@kms_busy@basic@flip.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-hsw-peppy/igt@kms_busy@basic@flip.html
    - fi-cfl-8700k:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][32]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-tgl-dsi/igt@kms_busy@basic@flip.html
    - fi-snb-2520m:       NOTRUN -> [INCOMPLETE][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-snb-2520m/igt@kms_busy@basic@flip.html
    - fi-icl-dsi:         [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-icl-dsi/igt@kms_busy@basic@flip.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-icl-dsi/igt@kms_busy@basic@flip.html
    - fi-bsw-kefka:       [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-bsw-kefka/igt@kms_busy@basic@flip.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-bsw-kefka/igt@kms_busy@basic@flip.html
    - fi-bdw-5557u:       [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-bdw-5557u/igt@kms_busy@basic@flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-bdw-5557u/igt@kms_busy@basic@flip.html
    - fi-kbl-x1275:       [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-kbl-x1275/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-cfl-8109u/igt@kms_busy@basic@flip.html
    - fi-kbl-7500u:       [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-kbl-7500u/igt@kms_busy@basic@flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-kbl-7500u/igt@kms_busy@basic@flip.html
    - {fi-ehl-1}:         [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-ehl-1/igt@kms_busy@basic@flip.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-ehl-1/igt@kms_busy@basic@flip.html
    - fi-skl-lmem:        [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-skl-lmem/igt@kms_busy@basic@flip.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-skl-lmem/igt@kms_busy@basic@flip.html
    - fi-kbl-r:           NOTRUN -> [INCOMPLETE][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-kbl-r/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_16647 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-4770r:       [TIMEOUT][51] ([fdo#112271] / [i915#1084]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-hsw-4770r/igt@gem_close_race@basic-threads.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-hsw-4770r/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [INCOMPLETE][53] ([i915#45]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7975/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585


Participating hosts (47 -> 42)
------------------------------

  Additional (5): fi-tgl-dsi fi-glk-dsi fi-snb-2520m fi-kbl-7560u fi-kbl-r 
  Missing    (10): fi-ilk-m540 fi-bdw-samus fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7975 -> Patchwork_16647

  CI-20190529: 20190529
  CI_DRM_7975: f66891f7bdc3c60bb6f06fd6bc0718a0bd975896 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16647: c72d584adc34fccaacf86b8c033093ade8f9d71a @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_16647/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  MODPOST 121 modules
ERROR: "__udivdi3" [drivers/gpu/drm/i915/i915.ko] undefined!
scripts/Makefile.modpost:93: recipe for target '__modpost' failed
make[1]: *** [__modpost] Error 1
Makefile:1281: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

c72d584adc34 drm/i915: Use intel_plane_data_rate for min_cdclk calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16647/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
