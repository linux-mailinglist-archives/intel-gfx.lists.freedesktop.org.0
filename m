Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A8154B37
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 19:33:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68146FB0A;
	Thu,  6 Feb 2020 18:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B57EB6FB09;
 Thu,  6 Feb 2020 18:33:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D847A0119;
 Thu,  6 Feb 2020 18:33:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 18:33:34 -0000
Message-ID: <158101401457.15032.2403533196319855536@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Apply_Enable_Boot_Fetch_to_MBC_control_register_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915/gt: Apply Enable Boot Fetch to MBC control register (rev2)
URL   : https://patchwork.freedesktop.org/series/73107/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7876 -> Patchwork_16465
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16465 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16465, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16465:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem:
    - fi-snb-2600:        NOTRUN -> [DMESG-WARN][1] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-snb-2600/igt@i915_selftest@live_gem.html

  * igt@i915_selftest@live_gt_pm:
    - fi-hsw-4770r:       [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-4770r/igt@i915_selftest@live_gt_pm.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-hsw-4770r/igt@i915_selftest@live_gt_pm.html

  * igt@i915_selftest@live_reset:
    - fi-snb-2520m:       NOTRUN -> [DMESG-WARN][4] +22 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-snb-2520m/igt@i915_selftest@live_reset.html
    - fi-ivb-3770:        NOTRUN -> [DMESG-WARN][5] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-ivb-3770/igt@i915_selftest@live_reset.html

  * igt@i915_selftest@live_uncore:
    - fi-byt-n2820:       [PASS][6] -> [DMESG-WARN][7] +36 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-n2820/igt@i915_selftest@live_uncore.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-byt-n2820/igt@i915_selftest@live_uncore.html

  * igt@i915_selftest@live_workarounds:
    - fi-ivb-3770:        NOTRUN -> [DMESG-FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-ivb-3770/igt@i915_selftest@live_workarounds.html
    - fi-snb-2600:        NOTRUN -> [DMESG-FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-snb-2600/igt@i915_selftest@live_workarounds.html
    - fi-hsw-4770r:       [PASS][10] -> [DMESG-FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-4770r/igt@i915_selftest@live_workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-hsw-4770r/igt@i915_selftest@live_workarounds.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-snb-2520m/igt@i915_selftest@live_workarounds.html
    - fi-byt-n2820:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-n2820/igt@i915_selftest@live_workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-byt-n2820/igt@i915_selftest@live_workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_16465 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][15] -> [INCOMPLETE][16] ([i915#45])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][17] -> [DMESG-FAIL][18] ([i915#553] / [i915#725])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-hsw-4770r:       [PASS][19] -> [INCOMPLETE][20] ([i915#857])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-4770r/igt@i915_selftest@live_hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-hsw-4770r/igt@i915_selftest@live_hangcheck.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][21] ([i915#694]) -> [TIMEOUT][22] ([fdo#112271] / [i915#1084])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#857]: https://gitlab.freedesktop.org/drm/intel/issues/857


Participating hosts (41 -> 40)
------------------------------

  Additional (7): fi-kbl-7560u fi-snb-2520m fi-gdg-551 fi-ivb-3770 fi-blb-e6850 fi-skl-6700k2 fi-snb-2600 
  Missing    (8): fi-bsw-n3050 fi-hsw-peppy fi-byt-squawks fi-hsw-4770 fi-cfl-8109u fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7876 -> Patchwork_16465

  CI-20190529: 20190529
  CI_DRM_7876: 6ac39d9964f464065511d439afcf4da065ff96db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5421: 40946e61f9c47e23fdf1fff8090fadee8a4d7d3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16465: 7128af3fb576fe49815de056f790f915bf1d40d0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7128af3fb576 drm/i915/gt: Apply Enable Boot Fetch to MBC control register

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16465/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
