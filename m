Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B2415B1D9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 21:29:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644DC6EAEE;
	Wed, 12 Feb 2020 20:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D314E6E10B;
 Wed, 12 Feb 2020 20:29:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA286A7525;
 Wed, 12 Feb 2020 20:29:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 12 Feb 2020 20:29:19 -0000
Message-ID: <158153935982.24264.14192095506120601797@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211230944.1203098-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200211230944.1203098-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Expand_bad_CS_completion_event_debug?=
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

Series: drm/i915/gt: Expand bad CS completion event debug
URL   : https://patchwork.freedesktop.org/series/73335/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7924 -> Patchwork_16532
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/index.html

Known issues
------------

  Here are the changes found in Patchwork_16532 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#694]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#189])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][5] -> [DMESG-FAIL][6] ([i915#1052])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][7] ([i915#178]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-u2:          [TIMEOUT][9] ([fdo#112271]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/fi-icl-u2/igt@i915_selftest@live_gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/fi-icl-u2/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][11] ([fdo#112271]) -> [FAIL][12] ([i915#694])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (43 -> 39)
------------------------------

  Additional (7): fi-hsw-4770 fi-kbl-x1275 fi-gdg-551 fi-bsw-kefka fi-kbl-7560u fi-skl-6700k2 fi-kbl-r 
  Missing    (11): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7924 -> Patchwork_16532

  CI-20190529: 20190529
  CI_DRM_7924: d4ea682de87f4e4378f34f0a196e8fa8983bd306 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5436: 00a64098aaae2ac3154841d76c7b034165380282 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16532: 9c4c9a0806edc1aa9e49cb27935a2fbe11aa58d2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9c4c9a0806ed drm/i915/gt: Expand bad CS completion event debug

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16532/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
