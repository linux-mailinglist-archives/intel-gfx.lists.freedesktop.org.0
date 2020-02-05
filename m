Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ECD1523B6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 01:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77B46E92F;
	Wed,  5 Feb 2020 00:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 860806E92F;
 Wed,  5 Feb 2020 00:03:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E81FA0119;
 Wed,  5 Feb 2020 00:03:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Wed, 05 Feb 2020 00:03:52 -0000
Message-ID: <158086103248.17320.16917874216068256202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204080513.GA612@plaxmina-desktop.iind.intel.com>
In-Reply-To: <20200204080513.GA612@plaxmina-desktop.iind.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUkZD?=
 =?utf-8?q?=3A_pipe_writeback_design_for_i915?=
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

Series: RFC: pipe writeback design for i915
URL   : https://patchwork.freedesktop.org/series/72958/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7866 -> Patchwork_16409
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/index.html

Known issues
------------

  Here are the changes found in Patchwork_16409 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-FAIL][2] ([i915#1052])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-8700k:       [PASS][3] -> [INCOMPLETE][4] ([i915#424])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][5] ([i915#45]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [FAIL][7] ([i915#694]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][9] ([fdo#108569]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-icl-y/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-kbl-x1275:       [DMESG-FAIL][11] ([i915#943]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [TIMEOUT][13] ([fdo#112271] / [i915#1084]) -> [FAIL][14] ([i915#694])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943


Participating hosts (46 -> 39)
------------------------------

  Additional (5): fi-skl-6770hq fi-ilk-650 fi-icl-u3 fi-kbl-8809g fi-icl-dsi 
  Missing    (12): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-glk-dsi fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-ivb-3770 fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7866 -> Patchwork_16409

  CI-20190529: 20190529
  CI_DRM_7866: bd8251861a5c1ac11e3510355f503675a05d26e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16409: aa098022234b16284b1ac5bbe45f77c21a4a5871 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

aa098022234b RFC: pipe writeback design for i915

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16409/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
