Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F16219C6F5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 18:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFC96EAC4;
	Thu,  2 Apr 2020 16:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7491C6EAC1;
 Thu,  2 Apr 2020 16:20:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D5B7A00FD;
 Thu,  2 Apr 2020 16:20:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 16:20:04 -0000
Message-ID: <158584440442.24296.6009406166722257976@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402152856.25407-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200402152856.25407-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_per-engine_request_pools_=28rev5=29?=
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

Series: drm/i915: Use per-engine request pools (rev5)
URL   : https://patchwork.freedesktop.org/series/75415/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8238 -> Patchwork_17185
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17185 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17185, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17185:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-icl-dsi/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-icl-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-snb-2520m/igt@i915_selftest@live@gem_contexts.html
    - fi-hsw-peppy:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-hsw-peppy/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-hsw-peppy/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-u2:          [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-icl-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-y:           [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-icl-y/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-icl-y/igt@i915_selftest@live@gem_contexts.html
    - fi-ivb-3770:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-ivb-3770/igt@i915_selftest@live@gem_contexts.html
    - fi-ilk-650:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-ilk-650/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-ilk-650/igt@i915_selftest@live@gem_contexts.html
    - fi-hsw-4770:        [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-guc:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-icl-guc/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-icl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bdw-5557u:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-ehl-1}:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-ehl-1/igt@i915_selftest@live@gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-ehl-1/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17185 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6600u:       [PASS][23] -> [INCOMPLETE][24] ([i915#1591])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-kefka:       [PASS][25] -> [INCOMPLETE][26] ([i915#392])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
    - fi-apl-guc:         [PASS][27] -> [INCOMPLETE][28] ([i915#1591])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-apl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-elk-e7500:       [PASS][29] -> [INCOMPLETE][30] ([i915#66])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-elk-e7500/igt@i915_selftest@live@gem_contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-elk-e7500/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6700k2:      [PASS][31] -> [INCOMPLETE][32] ([i915#1591])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8700k:       [PASS][33] -> [INCOMPLETE][34] ([i915#1591])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-n3050:       [PASS][35] -> [INCOMPLETE][36] ([i915#392])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
    - fi-cml-s:           [PASS][37] -> [INCOMPLETE][38] ([i915#1591])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-guc:         [PASS][39] -> [INCOMPLETE][40] ([i915#1591])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-skl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][41] -> [INCOMPLETE][42] ([fdo#106070] / [i915#1591])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-snb-2600:        [PASS][43] -> [INCOMPLETE][44] ([i915#82])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-snb-2600/igt@i915_selftest@live@gem_contexts.html
    - fi-bxt-dsi:         [PASS][45] -> [INCOMPLETE][46] ([i915#1591])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-cml-u2:          [PASS][47] -> [INCOMPLETE][48] ([i915#1591])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-cml-u2/igt@i915_selftest@live@gem_contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-cml-u2/igt@i915_selftest@live@gem_contexts.html
    - fi-byt-j1900:       [PASS][49] -> [INCOMPLETE][50] ([i915#45])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-byt-j1900/igt@i915_selftest@live@gem_contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-byt-j1900/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][51] -> [INCOMPLETE][52] ([i915#1591] / [i915#794])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - fi-byt-n2820:       [PASS][53] -> [INCOMPLETE][54] ([i915#45])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-byt-n2820/igt@i915_selftest@live@gem_contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-byt-n2820/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-r:           [PASS][55] -> [INCOMPLETE][56] ([i915#1591] / [i915#794])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-kbl-r/igt@i915_selftest@live@gem_contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-kbl-r/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8109u:       [PASS][57] -> [INCOMPLETE][58] ([i915#1591])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][59] -> [INCOMPLETE][60] ([i915#1591])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-soraka:      [PASS][61] -> [INCOMPLETE][62] ([i915#1591] / [i915#794])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-guc:         [PASS][63] -> [INCOMPLETE][64] ([i915#1591] / [i915#794])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-kbl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-nick:        [PASS][65] -> [INCOMPLETE][66] ([i915#392])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7500u:       [PASS][67] -> [INCOMPLETE][68] ([i915#1591] / [i915#794])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-x1275:       [PASS][69] -> [INCOMPLETE][70] ([i915#1591] / [i915#794])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/fi-kbl-x1275/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [i915#1591]: https://gitlab.freedesktop.org/drm/intel/issues/1591
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-glk-dsi fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8238 -> Patchwork_17185

  CI-20190529: 20190529
  CI_DRM_8238: 840f70602a47208a2f1e444ba276f412f10e38df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17185: 3e219f23c59a609dc60dd3b92ccfa74969478498 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3e219f23c59a drm/i915: Use per-engine request pools

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17185/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
