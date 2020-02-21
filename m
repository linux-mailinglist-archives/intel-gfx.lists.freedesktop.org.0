Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA73166C30
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 02:15:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A186E13D;
	Fri, 21 Feb 2020 01:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C41226E13D;
 Fri, 21 Feb 2020 01:15:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD504A47E1;
 Fri, 21 Feb 2020 01:15:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kees Cook" <keescook@chromium.org>
Date: Fri, 21 Feb 2020 01:15:27 -0000
Message-ID: <158224772777.7918.16113778473506192579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <202002201602.92CADF7D@keescook>
In-Reply-To: <202002201602.92CADF7D@keescook>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Distribute_switch_variables_for_initialization_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Distribute switch variables for initialization (rev2)
URL   : https://patchwork.freedesktop.org/series/73690/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7977 -> Patchwork_16651
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/index.html

Known issues
------------

  Here are the changes found in Patchwork_16651 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7977/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gtt:
    - fi-tgl-y:           [PASS][3] -> [TIMEOUT][4] ([CI#94] / [fdo#112126] / [fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7977/fi-tgl-y/igt@i915_selftest@live_gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/fi-tgl-y/igt@i915_selftest@live_gtt.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7977/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7977/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live_execlists:
    - fi-tgl-y:           [INCOMPLETE][9] ([CI#94] / [i915#647]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7977/fi-tgl-y/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/fi-tgl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][11] ([i915#877]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7977/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - {fi-tgl-dsi}:       [TIMEOUT][13] ([fdo#112126] / [fdo#112271]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7977/fi-tgl-dsi/igt@i915_selftest@live_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/fi-tgl-dsi/igt@i915_selftest@live_gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 42)
------------------------------

  Additional (2): fi-hsw-peppy fi-cfl-8109u 
  Missing    (9): fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-kefka fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7977 -> Patchwork_16651

  CI-20190529: 20190529
  CI_DRM_7977: 055793baa45ba27e36b40f1299cfaa19388b592d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16651: 514832edec7b53f1e100f802ae193102c63f22c9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

514832edec7b drm/i915: Distribute switch variables for initialization

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16651/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
