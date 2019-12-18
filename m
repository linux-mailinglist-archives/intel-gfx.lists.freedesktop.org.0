Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F9512518A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 20:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88AD96EA59;
	Wed, 18 Dec 2019 19:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D6B86EA59;
 Wed, 18 Dec 2019 19:11:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65442A0087;
 Wed, 18 Dec 2019 19:11:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Wed, 18 Dec 2019 19:11:50 -0000
Message-ID: <157669631041.8356.16739319215625652851@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218151350.19579-1-animesh.manna@intel.com>
In-Reply-To: <20191218151350.19579-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRFAg?=
 =?utf-8?q?Phy_compliance_auto_test?=
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

Series: DP Phy compliance auto test
URL   : https://patchwork.freedesktop.org/series/71121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7599 -> Patchwork_15828
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/index.html

Known issues
------------

  Here are the changes found in Patchwork_15828 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-FAIL][4] ([i915#723])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-bsw-n3050/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][5] -> [INCOMPLETE][6] ([i915#45])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][7] ([fdo#111593]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][9] ([i915#725]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][11] ([i915#424]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([fdo#107139] / [i915#62] / [i915#92])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92]) -> [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7599/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 40)
------------------------------

  Additional (2): fi-snb-2520m fi-kbl-7500u 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-pnv-d510 fi-elk-e7500 fi-bsw-kefka fi-blb-e6850 fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7599 -> Patchwork_15828

  CI-20190529: 20190529
  CI_DRM_7599: 03dfaf2e5f39b632d0187544f3c988b8596f11b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15828: c81ef6762f122c61a6d7c3dbda225430fdb7db7b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c81ef6762f12 drm/i915/dp: [FIXME] Program vswing, pre-emphasis, test-pattern
644f91780a71 drm/i915/dp: Update the pattern as per request
ee3972d67e5d drm/i915/dp: Register definition for DP compliance register
5ba33dc9aa02 drm/i915/dp: Add debugfs entry for DP phy compliance.
391d0f4e1225 drm/i915/dsb: Send uevent to testapp.
0f5e33d5d6c0 drm/i915/dp: Preparation for DP phy compliance auto test
b553ef602d04 drm/i915/dp: Move vswing/pre-emphasis adjustment calculation
701d1cb86d03 drm/amd/display: Fix compilation issue.
b177259a3656 drm/dp: get/set phy compliance pattern

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15828/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
