Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5601E1E113D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 17:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD04289DFD;
	Mon, 25 May 2020 15:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3BB0989D9A;
 Mon, 25 May 2020 15:03:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35CD5A0099;
 Mon, 25 May 2020 15:03:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 15:03:57 -0000
Message-ID: <159041903721.4525.14689816893350726355@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200525120411.6543-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200525120411.6543-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Force_the_GT_reset_on_shutdown_=28rev2=29?=
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

Series: drm/i915/gt: Force the GT reset on shutdown (rev2)
URL   : https://patchwork.freedesktop.org/series/77633/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8530 -> Patchwork_17771
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17771 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17771, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17771:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-apl-guc/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-snb-2520m/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-kbl-soraka/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-bsw-n3050:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-bsw-n3050/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-bsw-n3050/igt@i915_module_load@reload.html
    - fi-ilk-650:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-ilk-650/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-ivb-3770:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-ivb-3770/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-ivb-3770/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-bsw-kefka/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-bsw-nick/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-bsw-nick/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@uncore:
    - fi-bxt-dsi:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-bxt-dsi/igt@i915_selftest@live@uncore.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-bxt-dsi/igt@i915_selftest@live@uncore.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-ehl-1}:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-ehl-1/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-ehl-1/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17771 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][21] -> [INCOMPLETE][22] ([i915#45])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-byt-j1900/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-elk-e7500:       [PASS][23] -> [INCOMPLETE][24] ([i915#66])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-elk-e7500/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-byt-n2820:       [PASS][25] -> [INCOMPLETE][26] ([i915#45])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-byt-n2820/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-byt-n2820/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][27] -> [INCOMPLETE][28] ([i915#58] / [k.org#198133])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-glk-dsi/igt@i915_module_load@reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-glk-dsi/igt@i915_module_load@reload.html
    - fi-snb-2600:        [PASS][29] -> [INCOMPLETE][30] ([i915#82])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/fi-snb-2600/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/fi-snb-2600/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (49 -> 44)
------------------------------

  Additional (2): fi-kbl-7560u fi-whl-u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8530 -> Patchwork_17771

  CI-20190529: 20190529
  CI_DRM_8530: 5837860f93ba9d456fc0432300968332c0aa65b4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5678: c1f30ee09ac2e7eb3e8e90245239731a169a6050 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17771: f1b3cd50fac20e040d89e7fb466f0c059e365c38 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f1b3cd50fac2 drm/i915/gt: Force the GT reset on shutdown

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17771/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
