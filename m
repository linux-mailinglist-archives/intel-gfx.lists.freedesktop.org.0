Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E1E11D7C1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 21:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 926E86E1CE;
	Thu, 12 Dec 2019 20:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 970766E1C4;
 Thu, 12 Dec 2019 20:19:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D5BAA0091;
 Thu, 12 Dec 2019 20:19:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 20:19:28 -0000
Message-ID: <157618196855.32009.3656402305863773163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212160421.1631908-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212160421.1631908-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Set_vm_again_after_MI=5FSET=5FCONTEXT?=
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

Series: drm/i915/gt: Set vm again after MI_SET_CONTEXT
URL   : https://patchwork.freedesktop.org/series/70839/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7552 -> Patchwork_15726
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15726 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15726, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15726:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@runner@aborted:
    - fi-byt-n2820:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-byt-n2820/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15726 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-no-display:
    - fi-kbl-x1275:       [PASS][4] -> [DMESG-WARN][5] ([i915#62] / [i915#92])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-kbl-x1275/igt@i915_module_load@reload-no-display.html
    - fi-skl-lmem:        [PASS][6] -> [DMESG-WARN][7] ([i915#592])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-skl-lmem/igt@i915_module_load@reload-no-display.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-skl-lmem/igt@i915_module_load@reload-no-display.html

  * igt@i915_selftest@live_blt:
    - fi-byt-j1900:       [PASS][8] -> [DMESG-FAIL][9] ([i915#725])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-byt-j1900/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][10] -> [INCOMPLETE][11] ([i915#694])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [PASS][12] -> [DMESG-FAIL][13] ([i915#730])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][14] -> [FAIL][15] ([fdo#111407])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][16] ([fdo#111593]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@gem_wait@basic-busy-all:
    - fi-ivb-3770:        [FAIL][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-ivb-3770/igt@gem_wait@basic-busy-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-ivb-3770/igt@gem_wait@basic-busy-all.html

  * igt@i915_module_load@reload:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-kbl-x1275/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-kbl-x1275/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_requests:
    - fi-ivb-3770:        [INCOMPLETE][22] ([i915#773]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-ivb-3770/igt@i915_selftest@live_requests.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-ivb-3770/igt@i915_selftest@live_requests.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][24] ([i915#62] / [i915#92]) -> [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][27] ([i915#62] / [i915#92]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7552/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#584]: https://gitlab.freedesktop.org/drm/intel/issues/584
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#781]: https://gitlab.freedesktop.org/drm/intel/issues/781
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (53 -> 45)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7552 -> Patchwork_15726

  CI-20190529: 20190529
  CI_DRM_7552: 491a86a34502ffa5da51c110638b9cbc7dbd25c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15726: eed32677c7af3ef0b59c39cfd657e3669f0cc196 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eed32677c7af drm/i915/gt: Set vm again after MI_SET_CONTEXT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15726/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
