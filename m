Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5446C15833E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 20:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A79E56ED23;
	Mon, 10 Feb 2020 19:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3F106ED22;
 Mon, 10 Feb 2020 19:06:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9315AA0078;
 Mon, 10 Feb 2020 19:06:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 10 Feb 2020 19:06:04 -0000
Message-ID: <158136156457.3098.1689558994018906005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200210164215.528610-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200210164215.528610-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Avoid_resetting_ring-=3Ehead_outside_of_its_timelin?=
 =?utf-8?q?e_mutex?=
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

Series: drm/i915/gt: Avoid resetting ring->head outside of its timeline mutex
URL   : https://patchwork.freedesktop.org/series/73248/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7903 -> Patchwork_16504
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/index.html

Known issues
------------

  Here are the changes found in Patchwork_16504 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][3] ([i915#694]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][5] ([i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#553] / [i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][9] ([i915#623]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][11] ([i915#1052]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
    - fi-cfl-guc:         [INCOMPLETE][13] ([CI#80] / [fdo#106070] / [i915#424]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [DMESG-FAIL][15] ([i915#877]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-bdw-5557u:       [TIMEOUT][17] ([fdo#112271]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/fi-bdw-5557u/igt@i915_selftest@live_gtt.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (47 -> 42)
------------------------------

  Additional (4): fi-hsw-peppy fi-skl-lmem fi-gdg-551 fi-snb-2600 
  Missing    (9): fi-ilk-m540 fi-bdw-samus fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-ilk-650 fi-blb-e6850 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7903 -> Patchwork_16504

  CI-20190529: 20190529
  CI_DRM_7903: 47b768c475f4a11a48bc43e6228660f8b26a542b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5433: 6a96c17f3a1b4e1f90b1a0b0ce42a7219875d1a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16504: 3838891e9c6169eed76e9b91ad655d9f39e5595f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3838891e9c61 drm/i915/gt: Avoid resetting ring->head outside of its timeline mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16504/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
