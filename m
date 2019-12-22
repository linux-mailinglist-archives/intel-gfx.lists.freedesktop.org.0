Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08084129025
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 23:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6661C6E0DE;
	Sun, 22 Dec 2019 22:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3B3F89F27;
 Sun, 22 Dec 2019 22:10:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB53DA0119;
 Sun, 22 Dec 2019 22:10:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 22:10:43 -0000
Message-ID: <157705264373.8699.10605941961200869943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222210256.2066451-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222210256.2066451-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Add_a_simple_is-bound_c?=
 =?utf-8?q?heck_before_unbinding?=
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

Series: series starting with [1/3] drm/i915: Add a simple is-bound check before unbinding
URL   : https://patchwork.freedesktop.org/series/71276/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7623 -> Patchwork_15888
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15888 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15888, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15888:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_15888 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([fdo#103375])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([fdo#111550])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][7] -> [DMESG-FAIL][8] ([i915#553] / [i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][9] -> [DMESG-FAIL][10] ([i915#563])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [PASS][11] -> [DMESG-FAIL][12] ([i915#333] / [i915#419])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_hugepages:
    - fi-byt-j1900:       [PASS][13] -> [DMESG-FAIL][14] ([i915#845])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@i915_selftest@live_hugepages.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-byt-j1900/igt@i915_selftest@live_hugepages.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][15] ([i915#505]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][17] ([i915#725]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-u2:          [INCOMPLETE][19] ([fdo#112175] / [i915#140]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-kbl-soraka:      [DMESG-FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [INCOMPLETE][23] ([fdo#112175] / [fdo#112259]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-kbl-r/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [INCOMPLETE][25] ([i915#45]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][28] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][29] ([IGT#4] / [i915#263]) -> [FAIL][30] ([fdo#103375])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-kbl-x1275:       [DMESG-WARN][31] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][32] ([i915#62] / [i915#92])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][33] ([i915#62] / [i915#92]) -> [DMESG-WARN][34] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#333]: https://gitlab.freedesktop.org/drm/intel/issues/333
  [i915#419]: https://gitlab.freedesktop.org/drm/intel/issues/419
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#845]: https://gitlab.freedesktop.org/drm/intel/issues/845
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 40)
------------------------------

  Additional (8): fi-hsw-peppy fi-skl-guc fi-bwr-2160 fi-snb-2520m fi-kbl-7500u fi-skl-lmem fi-byt-n2820 fi-skl-6600u 
  Missing    (8): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15888

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15888: 0f62734069c73345b5643bbf6d1562f691afec1c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0f62734069c7 drm/i915: Replace vma parking with a clock aging algorithm
2220d957ae60 drm/i915: Introduce a vma.kref
6121b0cc88da drm/i915: Add a simple is-bound check before unbinding

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15888/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
