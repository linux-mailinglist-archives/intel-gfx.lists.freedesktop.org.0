Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2839111D61F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 19:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896586E0E0;
	Thu, 12 Dec 2019 18:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D8EDD8987A;
 Thu, 12 Dec 2019 18:45:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D16F1A47DF;
 Thu, 12 Dec 2019 18:45:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 18:45:26 -0000
Message-ID: <157617632685.32008.17467292006997828155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212151409.1631067-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212151409.1631067-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Silence_powerell_debug?=
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

Series: drm/i915/display: Silence powerell debug
URL   : https://patchwork.freedesktop.org/series/70836/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7551 -> Patchwork_15724
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15724 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15724, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15724:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-byt-j1900/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15724 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][4] -> [INCOMPLETE][5] ([i915#424])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [PASS][6] -> [DMESG-FAIL][7] ([i915#722])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_requests:
    - fi-ivb-3770:        [PASS][8] -> [INCOMPLETE][9] ([i915#773])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-ivb-3770/igt@i915_selftest@live_requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-ivb-3770/igt@i915_selftest@live_requests.html

  
#### Possible fixes ####

  * igt@gem_sync@basic-each:
    - {fi-tgl-u}:         [INCOMPLETE][10] ([i915#472] / [i915#707]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-tgl-u/igt@gem_sync@basic-each.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-tgl-u/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][12] ([i915#722]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [FAIL][14] ([i915#217]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][16] ([fdo#111096] / [i915#323]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][19] ([i915#62] / [i915#92]) +6 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([fdo#107139] / [i915#62] / [i915#92]) -> [DMESG-WARN][21] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92]) -> [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7551/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-gdg-551 
  Missing    (7): fi-icl-1065g7 fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7551 -> Patchwork_15724

  CI-20190529: 20190529
  CI_DRM_7551: e60aa4ffc106f910452d28f2ea49ae2ff44d85d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15724: a375381ab8b7d5f4724a717fa0eedab9b125776b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a375381ab8b7 drm/i915/display: Silence powerell debug

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15724/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
