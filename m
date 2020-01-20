Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4629E143429
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 23:38:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAB96EB57;
	Mon, 20 Jan 2020 22:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB4A86E865;
 Mon, 20 Jan 2020 22:38:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CE96A00C7;
 Mon, 20 Jan 2020 22:38:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 22:38:07 -0000
Message-ID: <157955988761.680.3974317771584768115@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_intel-ci=3A_Drop_gem=5Fctx=5Fswitch?=
 =?utf-8?q?_from_fast_feedback?=
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

Series: series starting with [1/3] intel-ci: Drop gem_ctx_switch from fast feedback
URL   : https://patchwork.freedesktop.org/series/72275/
State : failure

== Summary ==

CI Bug Log - changes from IGT_5373 -> IGTPW_3951
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with IGTPW_3951 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in IGTPW_3951, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in IGTPW_3951:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-byt-n2820:       NOTRUN -> [FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-byt-n2820/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in IGTPW_3951 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][2] -> [INCOMPLETE][3] ([fdo#103927])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][4] -> [DMESG-FAIL][5] ([i915#722])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [PASS][6] -> [INCOMPLETE][7] ([fdo#106070] / [i915#424])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][8] -> [FAIL][9] ([fdo#111096] / [i915#323])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][10] ([fdo#112271] / [i915#816]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-7500u:       [INCOMPLETE][12] ([i915#879]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-kbl-7500u/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [INCOMPLETE][14] ([i915#671]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][16] ([i915#563]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][18] ([i915#563]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/IGT_5373/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5373 -> IGTPW_3951

  CI-20190529: 20190529
  CI_DRM_7778: 8442e59b2b3aa0f081ee31fc13dcd0f31e5981e5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_3951: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/index.html
  IGT_5373: 224e565df36693ab8ae8f58eb6ae42600c2464e2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_3951/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
