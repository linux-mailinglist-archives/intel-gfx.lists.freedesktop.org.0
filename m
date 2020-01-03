Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7CA12F8FF
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 15:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1CE6E31E;
	Fri,  3 Jan 2020 14:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDC8B6E31A;
 Fri,  3 Jan 2020 14:00:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5A05A0099;
 Fri,  3 Jan 2020 14:00:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jan 2020 14:00:48 -0000
Message-ID: <157806004891.20614.17323680244837193516@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103121505.1862904-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200103121505.1862904-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gem=3A_Extend_mmap_support?=
 =?utf-8?q?_for_lmem?=
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

Series: series starting with [1/2] drm/i915/gem: Extend mmap support for lmem
URL   : https://patchwork.freedesktop.org/series/71601/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7673 -> Patchwork_15986
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15986:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@basic-busy-default:
    - {fi-ehl-1}:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-ehl-1/igt@gem_exec_fence@basic-busy-default.html

  
Known issues
------------

  Here are the changes found in Patchwork_15986 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][2] -> [TIMEOUT][3] ([i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][4] -> [DMESG-FAIL][5] ([i915#722])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_store@basic-all:
    - fi-byt-n2820:       [FAIL][6] ([i915#894]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-byt-n2820/igt@gem_exec_store@basic-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-byt-n2820/igt@gem_exec_store@basic-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][8] ([i915#505] / [i915#671]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-hsw-4770:        [SKIP][10] ([fdo#109271]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_execlists:
    - fi-skl-6770hq:      [DMESG-FAIL][12] ([i915#841]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-skl-6770hq/igt@i915_selftest@live_execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-skl-6770hq/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][14] ([i915#722]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][16] ([fdo#111407]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7673/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#841]: https://gitlab.freedesktop.org/drm/intel/issues/841
  [i915#894]: https://gitlab.freedesktop.org/drm/intel/issues/894


Participating hosts (45 -> 44)
------------------------------

  Additional (8): fi-kbl-soraka fi-ehl-1 fi-bwr-2160 fi-snb-2520m fi-ilk-650 fi-elk-e7500 fi-skl-lmem fi-blb-e6850 
  Missing    (9): fi-ilk-m540 fi-bdw-5557u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7673 -> Patchwork_15986

  CI-20190529: 20190529
  CI_DRM_7673: 6e3335ed7b56aaf9d55ddf51cddea4d844dc3a78 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15986: e550fd5b9f6cf15f7f0b869ba29ae4e61b2d7c54 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e550fd5b9f6c drm/i915/selftests: Extend fault handler selftests to all memory regions
b0a72df86a8d drm/i915/gem: Extend mmap support for lmem

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15986/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
