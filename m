Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A8A165D45
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 13:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9936ED38;
	Thu, 20 Feb 2020 12:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B467E6ED38;
 Thu, 20 Feb 2020 12:10:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A40C5A0009;
 Thu, 20 Feb 2020 12:10:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 20 Feb 2020 12:10:01 -0000
Message-ID: <158220060166.17408.1400566861951342400@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220105707.344522-1-matthew.auld@intel.com>
In-Reply-To: <20200220105707.344522-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_remove_the_other_slab=5Fdependencies?=
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

Series: drm/i915: remove the other slab_dependencies
URL   : https://patchwork.freedesktop.org/series/73701/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7972 -> Patchwork_16643
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16643 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16643, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16643:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_busy@basic-wait-before-default:
    - fi-skl-6770hq:      NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-skl-6770hq/igt@prime_busy@basic-wait-before-default.html

  
Known issues
------------

  Here are the changes found in Patchwork_16643 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][2] -> [INCOMPLETE][3] ([i915#694] / [i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [PASS][4] -> [DMESG-FAIL][5] ([i915#877])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-bxt-dsi:         [PASS][6] -> [TIMEOUT][7] ([fdo#112271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
    - fi-bdw-5557u:       [PASS][8] -> [TIMEOUT][9] ([fdo#112271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][10] -> [FAIL][11] ([i915#262])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-icl-u3:          [DMESG-WARN][12] ([i915#585]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-icl-u3/igt@i915_module_load@reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-icl-u3/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][14] ([fdo#108569]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-icl-y/igt@i915_selftest@live_execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][16] ([i915#730]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [TIMEOUT][18] ([fdo#112271]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [INCOMPLETE][20] ([fdo#108569]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7972/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (50 -> 43)
------------------------------

  Additional (2): fi-skl-6770hq fi-gdg-551 
  Missing    (9): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7972 -> Patchwork_16643

  CI-20190529: 20190529
  CI_DRM_7972: 858e6dfae5d9f401678831159b994d197b121e7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16643: eeb9d92e0efc49dd9f6cb222ad8566c2a75c3613 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eeb9d92e0efc drm/i915: remove the other slab_dependencies

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16643/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
