Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 138B8143FA3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 15:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F686ED27;
	Tue, 21 Jan 2020 14:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EA796ED26;
 Tue, 21 Jan 2020 14:34:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56D80A0094;
 Tue, 21 Jan 2020 14:34:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 14:34:55 -0000
Message-ID: <157961729532.11478.5500785026253371629@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121132107.267709-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200121132107.267709-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_show_the_blank_process_name_for_internal/simul?=
 =?utf-8?q?ated_errors?=
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

Series: drm/i915: Don't show the blank process name for internal/simulated errors
URL   : https://patchwork.freedesktop.org/series/72337/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7783 -> Patchwork_16188
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16188 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16188, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16188:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [INCOMPLETE][1] ([i915#45] / [i915#999]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16188 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [PASS][3] -> [DMESG-WARN][4] ([i915#889])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [DMESG-WARN][7] ([i915#889]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [INCOMPLETE][9] ([i915#151]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [INCOMPLETE][11] ([i915#671]) -> [DMESG-WARN][12] ([i915#889])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [DMESG-WARN][13] ([IGT#4]) -> [FAIL][14] ([i915#217])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (44 -> 36)
------------------------------

  Additional (5): fi-glk-dsi fi-gdg-551 fi-bsw-kefka fi-bsw-nick fi-snb-2600 
  Missing    (13): fi-ilk-m540 fi-bdw-5557u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-snb-2520m fi-ctg-p8600 fi-whl-u fi-kbl-8809g fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7783 -> Patchwork_16188

  CI-20190529: 20190529
  CI_DRM_7783: 3ee976286895f0bd54388efc16b12f62c624ff19 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16188: 17188d18afa72cc78b03403c29397915ac2fe879 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

17188d18afa7 drm/i915: Don't show the blank process name for internal/simulated errors

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16188/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
