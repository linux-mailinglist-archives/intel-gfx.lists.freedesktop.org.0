Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F62128F3C
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 19:15:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361996E081;
	Sun, 22 Dec 2019 18:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FB946E05C;
 Sun, 22 Dec 2019 18:15:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77539A0091;
 Sun, 22 Dec 2019 18:15:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 18:15:04 -0000
Message-ID: <157703850446.8699.7564821347602572648@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222173545.1819316-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222173545.1819316-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Tidy_up_checking_active_timelines_during_retirement?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915/gt: Tidy up checking active timelines during retirement (rev2)
URL   : https://patchwork.freedesktop.org/series/71266/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7623 -> Patchwork_15883
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15883 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15883, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15883:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-hsw-4770:        [PASS][4] -> [DMESG-WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_late_gt_pm:
    - fi-hsw-4770r:       [PASS][6] -> [FAIL][7] +5 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_selftest@live_late_gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-hsw-4770r/igt@i915_selftest@live_late_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_15883 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][8] -> [INCOMPLETE][9] ([fdo#103927])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][10] ([i915#435]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-tgl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][12] ([fdo#111736]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-u/igt@gem_exec_create@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [INCOMPLETE][16] ([fdo#112175] / [fdo#112259]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-kbl-r/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [INCOMPLETE][18] ([i915#45]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][21] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][22] -> [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_busy@basic-flip-pipe-c:
    - fi-kbl-x1275:       [DMESG-WARN][24] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][25] ([i915#62] / [i915#92]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-c.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-c.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][26] ([i915#62] / [i915#92]) -> [DMESG-WARN][27] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 37)
------------------------------

  Additional (7): fi-hsw-peppy fi-skl-guc fi-snb-2520m fi-kbl-7500u fi-whl-u fi-skl-lmem fi-skl-6600u 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-ivb-3770 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15883

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15883: 1a323ea479c3a9993c49619bb3275386e88da020 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1a323ea479c3 drm/i915/gt: Tidy up checking active timelines during retirement

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15883/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
