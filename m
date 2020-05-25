Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B47A01E1010
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 16:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C75CB89E39;
	Mon, 25 May 2020 14:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54EA289ED3;
 Mon, 25 May 2020 14:05:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EA34A47EB;
 Mon, 25 May 2020 14:05:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 14:05:13 -0000
Message-ID: <159041551329.4526.15816563308884186700@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200525120411.6543-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200525120411.6543-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Force_the_GT_reset_on_shutdown?=
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

Series: drm/i915/gt: Force the GT reset on shutdown
URL   : https://patchwork.freedesktop.org/series/77633/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8529 -> Patchwork_17769
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17769 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17769, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17769:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-snb-2520m:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-snb-2520m/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-ilk-650/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-ivb-3770/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-ivb-3770/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_17769 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][7] -> [INCOMPLETE][8] ([k.org#204565])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-kbl-8809g/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-icl-u2:          [PASS][9] -> [INCOMPLETE][10] ([k.org#204565])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-icl-u2/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-cml-u2:          [PASS][11] -> [INCOMPLETE][12] ([k.org#204565])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-cml-u2/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [PASS][13] -> [INCOMPLETE][14] ([i915#45])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-byt-j1900/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-cfl-8700k:       [PASS][15] -> [INCOMPLETE][16] ([k.org#204565])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-cfl-8700k/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-cfl-8700k/igt@i915_module_load@reload.html
    - fi-kbl-r:           [PASS][17] -> [INCOMPLETE][18] ([k.org#204565])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-kbl-r/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-apl-guc:         [PASS][19] -> [INCOMPLETE][20] ([k.org#204565])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-apl-guc/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-bxt-dsi:         [PASS][21] -> [INCOMPLETE][22] ([k.org#204565])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bxt-dsi/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-whl-u:           [PASS][23] -> [INCOMPLETE][24] ([k.org#204565])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-whl-u/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-whl-u/igt@i915_module_load@reload.html
    - fi-cml-s:           [PASS][25] -> [INCOMPLETE][26] ([k.org#204565])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-cml-s/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-cml-s/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][27] -> [INCOMPLETE][28] ([i915#69] / [k.org#204565])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-skl-6600u/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-bsw-n3050:       [PASS][29] -> [INCOMPLETE][30] ([k.org#204565])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bsw-n3050/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-bsw-n3050/igt@i915_module_load@reload.html
    - fi-skl-lmem:        [PASS][31] -> [INCOMPLETE][32] ([k.org#204565])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-skl-lmem/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-skl-lmem/igt@i915_module_load@reload.html
    - fi-elk-e7500:       [PASS][33] -> [INCOMPLETE][34] ([i915#66])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-elk-e7500/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      [PASS][35] -> [INCOMPLETE][36] ([k.org#204565])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-skl-6700k2/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-skl-6700k2/igt@i915_module_load@reload.html
    - fi-icl-guc:         [PASS][37] -> [INCOMPLETE][38] ([k.org#204565])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-icl-guc/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-icl-guc/igt@i915_module_load@reload.html
    - fi-byt-n2820:       [PASS][39] -> [INCOMPLETE][40] ([i915#45])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-byt-n2820/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-byt-n2820/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][41] -> [INCOMPLETE][42] ([k.org#204565])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bsw-kefka/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bdw-5557u:       [PASS][43] -> [INCOMPLETE][44] ([k.org#204565])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bdw-5557u/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-bdw-5557u/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][45] -> [INCOMPLETE][46] ([i915#58] / [k.org#198133] / [k.org#204565])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-glk-dsi/igt@i915_module_load@reload.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       [PASS][47] -> [INCOMPLETE][48] ([k.org#204565])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-kbl-x1275/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-kbl-x1275/igt@i915_module_load@reload.html
    - fi-snb-2600:        [PASS][49] -> [INCOMPLETE][50] ([i915#82])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-snb-2600/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-snb-2600/igt@i915_module_load@reload.html
    - fi-skl-guc:         [PASS][51] -> [INCOMPLETE][52] ([k.org#204565])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-skl-guc/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-skl-guc/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][53] -> [INCOMPLETE][54] ([k.org#204565])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-kbl-guc/igt@i915_module_load@reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-cfl-8109u:       [PASS][55] -> [INCOMPLETE][56] ([k.org#204565])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-cfl-8109u/igt@i915_module_load@reload.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-cfl-8109u/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][57] -> [INCOMPLETE][58] ([k.org#204565])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-icl-y/igt@i915_module_load@reload.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-icl-y/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][59] -> [INCOMPLETE][60] ([k.org#204565])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bsw-nick/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-bsw-nick/igt@i915_module_load@reload.html
    - fi-kbl-7500u:       [PASS][61] -> [INCOMPLETE][62] ([k.org#204565])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-kbl-7500u/igt@i915_module_load@reload.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-kbl-7500u/igt@i915_module_load@reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@coherency:
    - fi-bwr-2160:        [INCOMPLETE][63] ([i915#489]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bwr-2160/igt@i915_selftest@live@coherency.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/fi-bwr-2160/igt@i915_selftest@live@coherency.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (45 -> 42)
------------------------------

  Additional (2): fi-hsw-4770 fi-cfl-guc 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8529 -> Patchwork_17769

  CI-20190529: 20190529
  CI_DRM_8529: 9ae23ae1b437ee0d75ed2153eca05ecbd8c417bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5676: ff03d458f708583c8f9296f97c38df312055651a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17769: b3a03dd149460b1f30c388fad8295ca278d5c8b4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b3a03dd14946 drm/i915/gt: Force the GT reset on shutdown

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17769/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
