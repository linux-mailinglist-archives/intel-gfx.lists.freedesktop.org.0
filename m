Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B081AA1C8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 14:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DAC66E267;
	Wed, 15 Apr 2020 12:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B81976E1F8;
 Wed, 15 Apr 2020 12:48:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B18FEA432F;
 Wed, 15 Apr 2020 12:48:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Apr 2020 12:48:35 -0000
Message-ID: <158695491569.21013.10194185045103424218@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415100322.28378-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415100322.28378-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Exercise_basic_RPS_interrupt_generation_=28r?=
 =?utf-8?q?ev4=29?=
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

Series: drm/i915/selftests: Exercise basic RPS interrupt generation (rev4)
URL   : https://patchwork.freedesktop.org/series/75966/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8301 -> Patchwork_17307
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17307 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17307, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17307:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-icl-y/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-guc:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-cfl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6700k2:      [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-skl-6700k2/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-n3050:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-bsw-n3050/igt@i915_selftest@live@gt_pm.html
    - fi-skl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-icl-dsi:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-icl-dsi/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-icl-dsi/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-x1275:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-kefka:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
    - fi-tgl-y:           [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8700k:       NOTRUN -> [DMESG-FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-cfl-8700k/igt@i915_selftest@live@gt_pm.html
    - fi-icl-u2:          [PASS][22] -> [DMESG-FAIL][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6600u:       [PASS][24] -> [DMESG-FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8109u:       [PASS][26] -> [DMESG-FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-nick:        [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
    - fi-hsw-peppy:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-hsw-peppy/igt@i915_selftest@live@gt_pm.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-hsw-peppy/igt@i915_selftest@live@gt_pm.html
    - fi-skl-lmem:        [PASS][32] -> [DMESG-FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
    - fi-glk-dsi:         [PASS][34] -> [DMESG-FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
    - fi-apl-guc:         [PASS][36] -> [DMESG-FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-snb-2520m:       [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-8809g:       [PASS][40] -> [DMESG-FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [PASS][42] -> [DMESG-FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-bdw-5557u:       [PASS][44] -> [DMESG-FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-soraka:      [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6770hq:      NOTRUN -> [DMESG-FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-skl-6770hq/igt@i915_selftest@live@gt_pm.html
    - fi-hsw-4770:        [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-7500u:       [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-guc:         [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-kbl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-cml-u2:          [PASS][55] -> [DMESG-FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-cml-u2/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-whl-u/igt@i915_selftest@live@gt_pm.html
    - fi-ivb-3770:        [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html
    - fi-bxt-dsi:         [PASS][61] -> [DMESG-FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][63]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][64]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-snb-2520m/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-snb-2600/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][67]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-bsw-n3050/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {fi-tgl-dsi}:       [PASS][68] -> [DMESG-FAIL][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html
    - {fi-tgl-u}:         [PASS][70] -> [DMESG-FAIL][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-tgl-u/igt@i915_selftest@live@gt_pm.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-tgl-u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17307 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-snb-2600:        [PASS][72] -> [INCOMPLETE][73] ([i915#82])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-snb-2600/igt@i915_selftest@live@gt_pm.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/fi-snb-2600/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (50 -> 45)
------------------------------

  Additional (2): fi-skl-6770hq fi-cfl-8700k 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8301 -> Patchwork_17307

  CI-20190529: 20190529
  CI_DRM_8301: 7d2bdd2df0d18945bb274de8bc7560e14779e346 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5590: c7b4a43942be32245b1c00b5b4a38401d8ca6e0d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17307: 8d3af50cdf31583512f686427d68b4768b25c1c7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8d3af50cdf31 drm/i915/selftests: Exercise basic RPS interrupt generation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17307/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
