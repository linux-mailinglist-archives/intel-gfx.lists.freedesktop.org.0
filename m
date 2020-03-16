Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F3818762C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 00:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAB36E505;
	Mon, 16 Mar 2020 23:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 346446E4CF;
 Mon, 16 Mar 2020 23:19:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30D3AA363B;
 Mon, 16 Mar 2020 23:19:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 16 Mar 2020 23:19:22 -0000
Message-ID: <158440076219.18995.15307801718977192456@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316150010.9688-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316150010.9688-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Try_allocating_va_from_free_space?=
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

Series: drm/i915/gem: Try allocating va from free space
URL   : https://patchwork.freedesktop.org/series/74748/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8138 -> Patchwork_16983
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16983 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16983, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16983:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
    - fi-icl-dsi:         [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-icl-dsi/igt@gem_exec_gttfill@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-icl-dsi/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [PASS][6] -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-icl-u2/igt@gem_exec_gttfill@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-blb-e6850:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-blb-e6850/igt@gem_tiled_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-blb-e6850/igt@gem_tiled_blits@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {fi-ehl-1}:         [PASS][12] -> [DMESG-FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-ehl-1/igt@gem_exec_gttfill@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-ehl-1/igt@gem_exec_gttfill@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_16983 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-cml-s:           [PASS][14] -> [INCOMPLETE][15] ([i915#283])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-cml-s/igt@gem_exec_gttfill@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-cml-s/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][16] -> [FAIL][17] ([CI#94])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][18] -> [INCOMPLETE][19] ([i915#299])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-glk-dsi:         [PASS][20] -> [INCOMPLETE][21] ([i915#58] / [i915#656] / [k.org#198133])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-glk-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - fi-bwr-2160:        [INCOMPLETE][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-bwr-2160/igt@i915_selftest@live@perf.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/fi-bwr-2160/igt@i915_selftest@live@perf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (40 -> 42)
------------------------------

  Additional (7): fi-bdw-5557u fi-hsw-peppy fi-skl-6770hq fi-ilk-650 fi-ivb-3770 fi-cfl-8109u fi-snb-2600 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8138 -> Patchwork_16983

  CI-20190529: 20190529
  CI_DRM_8138: 652084cff0971058d1acb1746001f89ef8ea7321 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5512: f6fef7eff6f121e5e89afd7e70116f471ccd5b8b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16983: 3e3598aa5cb049febc29032168a511ea6307a543 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3e3598aa5cb0 drm/i915/gem: Try allocating va from free space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16983/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
