Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDC514D560
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 04:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D43489857;
	Thu, 30 Jan 2020 03:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF16D89857;
 Thu, 30 Jan 2020 03:35:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B47A4A00C7;
 Thu, 30 Jan 2020 03:35:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Thu, 30 Jan 2020 03:35:41 -0000
Message-ID: <158035534171.21032.7169566521782590934@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129224729.4684-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200129224729.4684-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hotplug=3A_Use_phy_to_get_the_hpd=5Fpin_instead_of_the_po?=
 =?utf-8?q?rt?=
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

Series: drm/i915/hotplug: Use phy to get the hpd_pin instead of the port
URL   : https://patchwork.freedesktop.org/series/72747/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7839 -> Patchwork_16322
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16322 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16322, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16322:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-cfl-8109u:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cfl-8109u/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-cfl-8109u/igt@i915_selftest@live_execlists.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-bsw-kefka/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [FAIL][4] ([fdo#103375]) -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  
Known issues
------------

  Here are the changes found in Patchwork_16322 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][6] -> [TIMEOUT][7] ([fdo#112271] / [i915#816])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_basic@basic@bcs0:
    - fi-byt-j1900:       [PASS][8] -> [FAIL][9] ([i915#694]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-j1900/igt@gem_exec_basic@basic@bcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-byt-j1900/igt@gem_exec_basic@basic@bcs0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][10] -> [FAIL][11] ([i915#178])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][12] -> [DMESG-FAIL][13] ([i915#770])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][14] -> [DMESG-FAIL][15] ([i915#725])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][16] -> [INCOMPLETE][17] ([fdo#106070] / [i915#424])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [FAIL][18] ([fdo#103375]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-j1900:       [FAIL][20] ([i915#694]) -> [TIMEOUT][21] ([fdo#112271])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7839/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/fi-byt-j1900/igt@gem_exec_parallel@contexts.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (47 -> 39)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (9): fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-whl-u fi-gdg-551 fi-bdw-samus fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7839 -> Patchwork_16322

  CI-20190529: 20190529
  CI_DRM_7839: 41a9319a45aaf77e220c8101d6ce76ec66036ffc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5406: 786c79af483a9f6e4688811f74116030c734ca1f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16322: 43a8820537ab3c6f5878324d9af0298a349e5df1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

43a8820537ab drm/i915/hotplug: Use phy to get the hpd_pin instead of the port

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16322/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
