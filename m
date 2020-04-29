Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7A21BD0D0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 02:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DE16E9B0;
	Wed, 29 Apr 2020 00:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F1496E85E;
 Wed, 29 Apr 2020 00:08:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97CAFA47DF;
 Wed, 29 Apr 2020 00:08:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Apr 2020 00:08:26 -0000
Message-ID: <158811890659.6696.9899877753065407535@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428215511.15435-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428215511.15435-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Keep_a_no-frills_swa?=
 =?utf-8?q?ppable_copy_of_the_default_context_state?=
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

Series: series starting with [1/2] drm/i915/gt: Keep a no-frills swappable copy of the default context state
URL   : https://patchwork.freedesktop.org/series/76686/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8388 -> Patchwork_17502
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17502 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17502, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17502:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-icl-u2/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-icl-u2/igt@i915_selftest@live@gt_mocs.html
    - fi-icl-y:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-icl-y/igt@i915_selftest@live@gt_mocs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-icl-y/igt@i915_selftest@live@gt_mocs.html
    - fi-tgl-y:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-tgl-y/igt@i915_selftest@live@gt_mocs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-tgl-y/igt@i915_selftest@live@gt_mocs.html
    - fi-icl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-icl-guc/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-icl-guc/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - fi-skl-6700k2:      [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
    - fi-bsw-n3050:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
    - fi-cml-s:           [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-cml-s/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-cml-s/igt@i915_selftest@live@workarounds.html
    - fi-icl-y:           [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-icl-y/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-icl-y/igt@i915_selftest@live@workarounds.html
    - fi-kbl-x1275:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-kbl-x1275/igt@i915_selftest@live@workarounds.html
    - fi-cfl-guc:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-cfl-guc/igt@i915_selftest@live@workarounds.html
    - fi-tgl-y:           [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-tgl-y/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-tgl-y/igt@i915_selftest@live@workarounds.html
    - fi-skl-guc:         [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-skl-guc/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-skl-guc/igt@i915_selftest@live@workarounds.html
    - fi-skl-6600u:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-skl-6600u/igt@i915_selftest@live@workarounds.html
    - fi-glk-dsi:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-glk-dsi/igt@i915_selftest@live@workarounds.html
    - fi-apl-guc:         [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-apl-guc/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-apl-guc/igt@i915_selftest@live@workarounds.html
    - fi-kbl-8809g:       [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-kbl-8809g/igt@i915_selftest@live@workarounds.html
    - fi-bsw-kefka:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-bsw-kefka/igt@i915_selftest@live@workarounds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-bsw-kefka/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8700k:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
    - fi-kbl-r:           [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-kbl-r/igt@i915_selftest@live@workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-kbl-r/igt@i915_selftest@live@workarounds.html
    - fi-icl-guc:         [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-icl-guc/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-icl-guc/igt@i915_selftest@live@workarounds.html
    - fi-icl-u2:          [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-icl-u2/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-icl-u2/igt@i915_selftest@live@workarounds.html
    - fi-cfl-8109u:       [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-cfl-8109u/igt@i915_selftest@live@workarounds.html
    - fi-bsw-nick:        [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-bsw-nick/igt@i915_selftest@live@workarounds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-bsw-nick/igt@i915_selftest@live@workarounds.html
    - fi-skl-lmem:        [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-skl-lmem/igt@i915_selftest@live@workarounds.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-skl-lmem/igt@i915_selftest@live@workarounds.html
    - fi-kbl-guc:         [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-kbl-guc/igt@i915_selftest@live@workarounds.html
    - fi-bdw-5557u:       [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-bdw-5557u/igt@i915_selftest@live@workarounds.html
    - fi-kbl-soraka:      [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-kbl-soraka/igt@i915_selftest@live@workarounds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-kbl-soraka/igt@i915_selftest@live@workarounds.html
    - fi-whl-u:           [PASS][55] -> [DMESG-FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-whl-u/igt@i915_selftest@live@workarounds.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-whl-u/igt@i915_selftest@live@workarounds.html
    - fi-bxt-dsi:         [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-bxt-dsi/igt@i915_selftest@live@workarounds.html
    - fi-cml-u2:          [PASS][59] -> [DMESG-FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-cml-u2/igt@i915_selftest@live@workarounds.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-cml-u2/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_mocs:
    - {fi-tgl-dsi}:       [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-tgl-dsi/igt@i915_selftest@live@gt_mocs.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-tgl-dsi/igt@i915_selftest@live@gt_mocs.html
    - {fi-tgl-u}:         [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-tgl-u/igt@i915_selftest@live@gt_mocs.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-tgl-u/igt@i915_selftest@live@gt_mocs.html
    - {fi-ehl-1}:         [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-ehl-1/igt@i915_selftest@live@gt_mocs.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-ehl-1/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - {fi-tgl-dsi}:       [PASS][67] -> [DMESG-FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-tgl-dsi/igt@i915_selftest@live@workarounds.html
    - {fi-ehl-1}:         [PASS][69] -> [DMESG-FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-ehl-1/igt@i915_selftest@live@workarounds.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-ehl-1/igt@i915_selftest@live@workarounds.html
    - {fi-tgl-u}:         [PASS][71] -> [DMESG-FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-tgl-u/igt@i915_selftest@live@workarounds.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-tgl-u/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17502 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-glk-dsi:         [INCOMPLETE][73] ([i915#58] / [k.org#198133]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8388 -> Patchwork_17502

  CI-20190529: 20190529
  CI_DRM_8388: 12346af5b9d3ccf046d5e736c02851eec98e49ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17502: 933a5f26fe796218febe9b9c20a23f91bca9cf49 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

933a5f26fe79 drm/i915/gt: Stop keeping the pinned_default_state
f78daa371c45 drm/i915/gt: Keep a no-frills swappable copy of the default context state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17502/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
