Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0D01464D7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 10:50:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3462F6FB82;
	Thu, 23 Jan 2020 09:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E5586F9DE;
 Thu, 23 Jan 2020 09:50:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2485EA0087;
 Thu, 23 Jan 2020 09:50:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Jan 2020 09:50:35 -0000
Message-ID: <157977303512.1144.9268333143359983251@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122201822.889250-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122201822.889250-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_GTT_scratch_pages_=28rev4=29?=
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

Series: drm/i915/gt: Poison GTT scratch pages (rev4)
URL   : https://patchwork.freedesktop.org/series/72423/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7799 -> Patchwork_16226
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16226 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16226, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16226:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds:
    - fi-hsw-peppy:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-peppy/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-hsw-peppy/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-ivb-3770/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-ivb-3770/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-4770:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-4770r:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16226 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][11] -> [TIMEOUT][12] ([fdo#112271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [PASS][13] -> [DMESG-FAIL][14] ([i915#765])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-icl-y/igt@i915_selftest@live_active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][15] -> [DMESG-FAIL][16] ([i915#725])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][17] -> [DMESG-FAIL][18] ([i915#553])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][19] -> [INCOMPLETE][20] ([CI#80] / [i915#424])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-bsw-nick:        [PASS][21] -> [INCOMPLETE][22] ([i915#392])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-bsw-nick/igt@i915_selftest@live_gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-bsw-nick/igt@i915_selftest@live_gem_contexts.html
    - fi-bsw-kefka:       [PASS][23] -> [INCOMPLETE][24] ([i915#392])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-bsw-kefka/igt@i915_selftest@live_gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-bsw-kefka/igt@i915_selftest@live_gem_contexts.html
    - fi-bsw-n3050:       [PASS][25] -> [INCOMPLETE][26] ([i915#392])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-bsw-n3050/igt@i915_selftest@live_gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-bsw-n3050/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][27] ([i915#505] / [i915#671]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][29] -> [TIMEOUT][30] ([fdo#112271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7799/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-ilk-650 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7799 -> Patchwork_16226

  CI-20190529: 20190529
  CI_DRM_7799: 0f8a46a25a7781ef6ede604c9cb50f82cfb5e960 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16226: f03c220f7aa5c54ec5037e609756d9ad37aa144b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f03c220f7aa5 drm/i915/gt: Poison GTT scratch pages

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16226/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
