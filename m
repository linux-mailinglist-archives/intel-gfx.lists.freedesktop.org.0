Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBE4179A8B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 21:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C026EB69;
	Wed,  4 Mar 2020 20:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D2E76E0FF;
 Wed,  4 Mar 2020 20:59:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94FB3A363D;
 Wed,  4 Mar 2020 20:59:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 04 Mar 2020 20:59:56 -0000
Message-ID: <158335559660.426.16517262175688726643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304174835.2459324-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200304174835.2459324-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Tweak_scheduler=27s_kick=5Fsubmission=28=29?=
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

Series: drm/i915: Tweak scheduler's kick_submission()
URL   : https://patchwork.freedesktop.org/series/74279/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8066 -> Patchwork_16824
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16824 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16824, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16824/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16824:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-kbl-r:           NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16824/fi-kbl-r/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16824 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][2] -> [FAIL][3] ([CI#94])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16824/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([CI#94] / [i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16824/fi-tgl-y/igt@i915_module_load@reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - fi-icl-guc:         [DMESG-FAIL][6] ([i915#922]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-icl-guc/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16824/fi-icl-guc/igt@i915_selftest@live@workarounds.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][8] ([CI#94] / [i915#402]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16824/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#922]: https://gitlab.freedesktop.org/drm/intel/issues/922


Participating hosts (45 -> 40)
------------------------------

  Additional (4): fi-skl-lmem fi-blb-e6850 fi-kbl-r fi-kbl-7500u 
  Missing    (9): fi-icl-1065g7 fi-skl-guc fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8066 -> Patchwork_16824

  CI-20190529: 20190529
  CI_DRM_8066: 9e1454777a07902c85ce3febcc9648837a2224fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5491: d52794b426ae16630cc1e0354ae435ec98f6174b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16824: 780aa744d9be937a68475138a7a7ad0627d3b665 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

780aa744d9be drm/i915: Tweak scheduler's kick_submission()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16824/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
