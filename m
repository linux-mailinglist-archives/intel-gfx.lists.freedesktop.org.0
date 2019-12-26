Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 853A412AC37
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 13:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C6F89350;
	Thu, 26 Dec 2019 12:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8B11F89310;
 Thu, 26 Dec 2019 12:28:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8356BA0BA8;
 Thu, 26 Dec 2019 12:28:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Dec 2019 12:28:08 -0000
Message-ID: <157736328850.14822.14890634279256534809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191226111834.2545953-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191226111834.2545953-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Apply_sanitiization_just_before_resume_=28rev2=29?=
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

Series: drm/i915/gt: Apply sanitiization just before resume (rev2)
URL   : https://patchwork.freedesktop.org/series/71334/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7636 -> Patchwork_15926
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15926 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15926, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15926:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-bwr-2160/igt@i915_selftest@live_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-bwr-2160/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_15926 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6770hq:      [PASS][3] -> [INCOMPLETE][4] ([i915#671])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-skl-6770hq/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([fdo#111407])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [INCOMPLETE][7] ([fdo#103927]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hugepages:
    - fi-bwr-2160:        [FAIL][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-bwr-2160/igt@i915_selftest@live_hugepages.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-bwr-2160/igt@i915_selftest@live_hugepages.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([fdo#107139] / [i915#62] / [i915#92])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][15] ([i915#879]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][18] ([i915#62] / [i915#92]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7636/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 38)
------------------------------

  Additional (4): fi-bsw-kefka fi-skl-lmem fi-tgl-y fi-gdg-551 
  Missing    (13): fi-hsw-4770r fi-bdw-samus fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-skl-6700k2 fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7636 -> Patchwork_15926

  CI-20190529: 20190529
  CI_DRM_7636: 57c982a802fb336cf9c10d811dfd88dd49103f48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15926: 951b038ccba6695702644833747b6a7e2481898f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

951b038ccba6 drm/i915/gt: Apply sanitiization just before resume

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15926/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
