Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C99511EF6E
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 02:04:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2726EE2C;
	Sat, 14 Dec 2019 01:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C14216E131;
 Sat, 14 Dec 2019 01:04:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B974FA0096;
 Sat, 14 Dec 2019 01:04:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 14 Dec 2019 01:04:49 -0000
Message-ID: <157628548973.13803.13607901223691616058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213174348.27261-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213174348.27261-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_Add_new_modes_from_CTA-861-G_=28rev3=29?=
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

Series: drm/edid: Add new modes from CTA-861-G (rev3)
URL   : https://patchwork.freedesktop.org/series/63554/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7566 -> Patchwork_15754
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/index.html

Known issues
------------

  Here are the changes found in Patchwork_15754 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][3] ([i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][5] ([fdo#111593]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@gem_sync@basic-all:
    - fi-tgl-y:           [INCOMPLETE][7] ([i915#470]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-tgl-y/igt@gem_sync@basic-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-tgl-y/igt@gem_sync@basic-all.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][9] ([i915#725]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [INCOMPLETE][11] ([i915#424]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [INCOMPLETE][13] ([i915#694]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770:        [INCOMPLETE][15] ([i915#773]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-hsw-4770/igt@i915_selftest@live_requests.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][17] ([fdo#109271]) -> [FAIL][18] ([i915#579])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][20] ([i915#62] / [i915#92]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92]) -> [DMESG-WARN][22] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (54 -> 47)
------------------------------

  Additional (1): fi-hsw-4770r 
  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7566 -> Patchwork_15754

  CI-20190529: 20190529
  CI_DRM_7566: 87c99602f2beb1b0ee7bdb3310bf12133f4d3f7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15754: 1eb2087450a1e802554fcd950feff6b55a145fcd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1eb2087450a1 drm/edid: Make sure the CEA mode arrays have the correct amount of modes
04407c04c8f5 drm/edid: Throw away the dummy VIC 0 cea mode
1e2d560339b9 drm/edid: Add CTA-861-G modes with VIC >= 193
f65c5faeb690 drm/edid: Abstract away cea_edid_modes[]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
