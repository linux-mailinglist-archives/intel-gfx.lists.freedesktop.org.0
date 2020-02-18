Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8D016336B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 21:48:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8BAF6E3F0;
	Tue, 18 Feb 2020 20:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E300D6E3EF;
 Tue, 18 Feb 2020 20:48:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB1EAA00C7;
 Tue, 18 Feb 2020 20:48:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 20:48:50 -0000
Message-ID: <158205893086.31433.2817077313527600321@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218141305.1258394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218141305.1258394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Check_for_any_sign_of_request_starting_in_wa?=
 =?utf-8?b?aXRfZm9yX3N1Ym1pdCgp?=
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

Series: drm/i915/selftests: Check for any sign of request starting in wait_for_submit()
URL   : https://patchwork.freedesktop.org/series/73572/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7961 -> Patchwork_16599
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16599 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16599, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16599:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-cfl-8700k/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-cfl-8700k/igt@i915_selftest@live_execlists.html
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-skl-guc/igt@i915_selftest@live_execlists.html
    - fi-skl-lmem:        [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-skl-lmem/igt@i915_selftest@live_execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-skl-lmem/igt@i915_selftest@live_execlists.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-cfl-8109u/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16599 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_execlists:
    - fi-apl-guc:         [PASS][7] -> [INCOMPLETE][8] ([fdo#103927] / [fdo#112175])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-apl-guc/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-apl-guc/igt@i915_selftest@live_execlists.html
    - fi-kbl-x1275:       [PASS][9] -> [INCOMPLETE][10] ([fdo#112259])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-kbl-x1275/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-kbl-x1275/igt@i915_selftest@live_execlists.html
    - fi-icl-u2:          [PASS][11] -> [INCOMPLETE][12] ([fdo#112175] / [i915#140])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-icl-dsi:         [PASS][13] -> [INCOMPLETE][14] ([i915#140])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-icl-dsi/igt@i915_selftest@live_execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-icl-dsi/igt@i915_selftest@live_execlists.html
    - fi-cml-s:           [PASS][15] -> [INCOMPLETE][16] ([i915#283])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-cml-s/igt@i915_selftest@live_execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-cml-s/igt@i915_selftest@live_execlists.html
    - fi-skl-6700k2:      [PASS][17] -> [INCOMPLETE][18] ([fdo#112175])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-skl-6700k2/igt@i915_selftest@live_execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-skl-6700k2/igt@i915_selftest@live_execlists.html
    - fi-icl-y:           [PASS][19] -> [INCOMPLETE][20] ([i915#140])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-icl-y/igt@i915_selftest@live_execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-icl-y/igt@i915_selftest@live_execlists.html
    - fi-cml-u2:          [PASS][21] -> [INCOMPLETE][22] ([fdo#112175] / [i915#283])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-cml-u2/igt@i915_selftest@live_execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-cml-u2/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [INCOMPLETE][23] ([i915#151]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][25] ([i915#877]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7961/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (43 -> 43)
------------------------------

  Additional (6): fi-kbl-7500u fi-cfl-8109u fi-bsw-kefka fi-blb-e6850 fi-skl-6600u fi-snb-2600 
  Missing    (6): fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7961 -> Patchwork_16599

  CI-20190529: 20190529
  CI_DRM_7961: e922b318df45b82e75087ecfaceb998db2dd6213 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16599: 261fc108dea2b180b22c615512301b05cd1906e2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

261fc108dea2 drm/i915/selftests: Check for any sign of request starting in wait_for_submit()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16599/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
