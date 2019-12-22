Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B71C6128FF1
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 22:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BD676E0D8;
	Sun, 22 Dec 2019 21:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FE636E0D5;
 Sun, 22 Dec 2019 21:04:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58AEBA0073;
 Sun, 22 Dec 2019 21:04:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 21:04:52 -0000
Message-ID: <157704869236.8699.16425241559339386667@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222201920.1942326-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222201920.1942326-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Tidy_up_checking_active_timelines_during_retirement?=
 =?utf-8?q?_=28rev5=29?=
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

Series: drm/i915/gt: Tidy up checking active timelines during retirement (rev5)
URL   : https://patchwork.freedesktop.org/series/71266/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7623 -> Patchwork_15886
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15886 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15886, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15886:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-glk-dsi:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-glk-dsi/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-glk-dsi/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bsw-nick:        [PASS][4] -> [DMESG-FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-bsw-nick/igt@i915_selftest@live_gt_heartbeat.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-bsw-nick/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_selftest@live_perf:
    - fi-ivb-3770:        [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_selftest@live_perf.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-ivb-3770/igt@i915_selftest@live_perf.html

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770r:       [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_selftest@live_requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-hsw-4770r/igt@i915_selftest@live_requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_15886 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][10] -> [FAIL][11] ([fdo#103375])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][12] -> [FAIL][13] ([fdo#111550])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][14] -> [DMESG-FAIL][15] ([i915#553] / [i915#725])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][16] ([i915#435]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-tgl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][18] ([fdo#111736]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-u/igt@gem_exec_create@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][20] ([i915#725]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-u2:          [INCOMPLETE][22] ([fdo#112175] / [i915#140]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-kbl-soraka:      [DMESG-FAIL][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [INCOMPLETE][26] ([fdo#112175] / [fdo#112259]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-kbl-r/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [INCOMPLETE][28] ([i915#45]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][30] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][31] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][32] ([IGT#4] / [i915#263]) -> [FAIL][33] ([fdo#103375])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][34] ([i915#62] / [i915#92]) -> [DMESG-WARN][35] ([i915#62] / [i915#92] / [i915#95]) +9 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-x1275:       [DMESG-WARN][36] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][37] ([i915#62] / [i915#92]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/fi-kbl-x1275/igt@kms_force_connector_basic@force-connector-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 42)
------------------------------

  Additional (9): fi-hsw-peppy fi-skl-guc fi-bwr-2160 fi-snb-2520m fi-kbl-7500u fi-whl-u fi-skl-lmem fi-byt-n2820 fi-skl-6600u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15886

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15886: a40f64ed6e9f7f0a42889731c8c5de9d959c07ea @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a40f64ed6e9f drm/i915/gt: Tidy up checking active timelines during retirement

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15886/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
