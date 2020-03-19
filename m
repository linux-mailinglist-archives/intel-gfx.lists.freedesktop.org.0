Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF4718B10F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 11:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BEB46E9DF;
	Thu, 19 Mar 2020 10:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D46BA6E9DD;
 Thu, 19 Mar 2020 10:20:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC412A0088;
 Thu, 19 Mar 2020 10:20:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Mar 2020 10:20:06 -0000
Message-ID: <158461320683.17934.1885549204594244811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200319091943.7815-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Prefer_=27=25ps=27_for_?=
 =?utf-8?q?printing_function_symbol_names?=
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

Series: series starting with [1/6] drm/i915: Prefer '%ps' for printing function symbol names
URL   : https://patchwork.freedesktop.org/series/74865/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8157 -> Patchwork_17022
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/index.html

Known issues
------------

  Here are the changes found in Patchwork_17022 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927] / [i915#1430] / [i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [INCOMPLETE][5] ([i915#189]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-soraka:      [FAIL][7] ([IGT#5]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/fi-kbl-soraka/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([i915#323]) -> [FAIL][10] ([fdo#111407])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (41 -> 36)
------------------------------

  Additional (2): fi-skl-lmem fi-bwr-2160 
  Missing    (7): fi-byt-j1900 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-gdg-551 fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8157 -> Patchwork_17022

  CI-20190529: 20190529
  CI_DRM_8157: 4f297a639d15ec6c293b74ff0904de6146b18e4f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17022: 5ac96f1320c04c2e34bbc577ba9c130c2f5aabd3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5ac96f1320c0 drm/i915/gt: Cancel a hung context if already closed
24264f0110bf drm/i915: Use explicit flag to mark unreachable intel_context
0d627b859e10 drm/i915/gem: Wait until the context is finally retired before releasing engines
41e5d3f53cb8 drm/i915/execlists: Force single submission for sentinels
bfbf43d0da6a drm/i915/gem: Avoid gem_context->mutex for simple vma lookup
a8c2d338a0df drm/i915: Prefer '%ps' for printing function symbol names

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17022/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
