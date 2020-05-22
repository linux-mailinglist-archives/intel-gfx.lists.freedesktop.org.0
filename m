Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A78021DE8DC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 16:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49FB66E9F6;
	Fri, 22 May 2020 14:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7454D6E9F4;
 Fri, 22 May 2020 14:27:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DB5FA363B;
 Fri, 22 May 2020 14:27:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 14:27:57 -0000
Message-ID: <159015767742.3046.13709808852833706640@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522132706.5133-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200522132706.5133-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_iterating_an_empty_list_=28rev2=29?=
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

Series: drm/i915/gem: Avoid iterating an empty list (rev2)
URL   : https://patchwork.freedesktop.org/series/77553/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8525 -> Patchwork_17760
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17760 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17760, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17760:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-kbl-8809g/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-kbl-8809g/boot.html
    - fi-icl-y:           [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-icl-y/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-icl-y/boot.html
    - fi-snb-2520m:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-snb-2520m/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-snb-2520m/boot.html
    - fi-icl-u2:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-icl-u2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-icl-u2/boot.html
    - fi-cfl-8109u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-cfl-8109u/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-cfl-8109u/boot.html
    - fi-skl-6600u:       [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-skl-6600u/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-skl-6600u/boot.html
    - fi-byt-j1900:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-byt-j1900/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-byt-j1900/boot.html
    - fi-cfl-8700k:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-cfl-8700k/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-cfl-8700k/boot.html
    - fi-icl-dsi:         [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-icl-dsi/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-icl-dsi/boot.html
    - fi-whl-u:           [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-whl-u/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-whl-u/boot.html
    - fi-ilk-650:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-ilk-650/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-ilk-650/boot.html
    - fi-skl-6700k2:      [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-skl-6700k2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-skl-6700k2/boot.html
    - fi-icl-guc:         [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-icl-guc/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-icl-guc/boot.html
    - fi-cml-s:           [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-cml-s/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-cml-s/boot.html
    - fi-byt-n2820:       [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-byt-n2820/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-byt-n2820/boot.html
    - fi-elk-e7500:       [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-elk-e7500/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-elk-e7500/boot.html
    - fi-skl-lmem:        [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-skl-lmem/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-skl-lmem/boot.html
    - fi-glk-dsi:         [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-glk-dsi/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-glk-dsi/boot.html
    - fi-ivb-3770:        [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-ivb-3770/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-ivb-3770/boot.html
    - fi-snb-2600:        [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-snb-2600/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-snb-2600/boot.html
    - fi-kbl-guc:         [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-kbl-guc/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-kbl-guc/boot.html
    - fi-kbl-x1275:       [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-kbl-x1275/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-kbl-x1275/boot.html
    - fi-bdw-gvtdvm:      [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-bdw-gvtdvm/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-bdw-gvtdvm/boot.html
    - fi-kbl-7500u:       [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-kbl-7500u/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-kbl-7500u/boot.html
    - fi-bwr-2160:        [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-bwr-2160/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-bwr-2160/boot.html
    - fi-bdw-5557u:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-bdw-5557u/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-bdw-5557u/boot.html
    - fi-skl-guc:         [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-skl-guc/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-skl-guc/boot.html
    - fi-kbl-r:           [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-kbl-r/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-kbl-r/boot.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-tgl-dsi}:       [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-tgl-dsi/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-tgl-dsi/boot.html
    - {fi-tgl-u}:         [PASS][59] -> [FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-tgl-u/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-tgl-u/boot.html
    - {fi-kbl-7560u}:     [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-kbl-7560u/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-kbl-7560u/boot.html
    - {fi-ehl-1}:         [PASS][63] -> [FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-ehl-1/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-ehl-1/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-gdg-551:         NOTRUN -> [FAIL][65]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-gdg-551/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-blb-e6850/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_busy@busy@all}:
    - fi-blb-e6850:       [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-blb-e6850/igt@gem_busy@busy@all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-blb-e6850/igt@gem_busy@busy@all.html

  
Known issues
------------

  Here are the changes found in Patchwork_17760 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bxt-dsi:         [PASS][69] -> [FAIL][70] ([i915#1529])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8525/fi-bxt-dsi/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/fi-bxt-dsi/boot.html

  

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1529]: https://gitlab.freedesktop.org/drm/intel/issues/1529
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299


Participating hosts (46 -> 36)
------------------------------

  Missing    (10): fi-cml-u2 fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-apl-guc fi-bsw-kefka fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8525 -> Patchwork_17760

  CI-20190529: 20190529
  CI_DRM_8525: 56110c7afae3bbeb681960494b92b745c6802e1f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5675: 74f7488fe4f8acf901b18fc9c6c4d45a972dcad5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17760: 68726d4faa0697bf958ef1f0c6c3fec111099d51 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

68726d4faa06 drm/i915/gem: Avoid iterating an empty list

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17760/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
