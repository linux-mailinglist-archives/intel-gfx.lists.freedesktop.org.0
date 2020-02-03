Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F70A15038F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 10:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1DD6EB88;
	Mon,  3 Feb 2020 09:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FD7E6EB87;
 Mon,  3 Feb 2020 09:49:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9815BA0119;
 Mon,  3 Feb 2020 09:49:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 03 Feb 2020 09:49:29 -0000
Message-ID: <158072336961.3015.15126975279091125695@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203085833.4127135-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200203085833.4127135-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Hold_reference_to_previous_active_fence_as_we_queue?=
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

Series: drm/i915: Hold reference to previous active fence as we queue
URL   : https://patchwork.freedesktop.org/series/72904/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7857 -> Patchwork_16388
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16388 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16388, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16388:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16388 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][3] -> [DMESG-FAIL][4] ([i915#722])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][5] ([i915#553] / [i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][7] ([fdo#106070] / [i915#424]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][9] ([i915#694]) -> [TIMEOUT][10] ([fdo#112271] / [i915#1084])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][11] ([i915#553] / [i915#725]) -> [DMESG-FAIL][12] ([i915#725])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111096] / [i915#323]) -> [FAIL][14] ([fdo#111407])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (47 -> 43)
------------------------------

  Additional (5): fi-bdw-5557u fi-skl-6770hq fi-bwr-2160 fi-kbl-7560u fi-bsw-nick 
  Missing    (9): fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ivb-3770 fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7857 -> Patchwork_16388

  CI-20190529: 20190529
  CI_DRM_7857: 8ec40a15b9a930df9e445f17c5e01cdb6f80353a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5411: 86c6ab8a0b6696bdb2153febd350af7fa02fbb00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16388: 4bb39a619139e76c503dba8067ac5c9d54cf315d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4bb39a619139 drm/i915: Hold reference to previous active fence as we queue

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16388/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
