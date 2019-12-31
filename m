Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EFA12D8A1
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 13:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A7F06E21E;
	Tue, 31 Dec 2019 12:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DC7D6E21D;
 Tue, 31 Dec 2019 12:44:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 449A9A00C7;
 Tue, 31 Dec 2019 12:44:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 12:44:20 -0000
Message-ID: <157779626025.26890.1642498226225853625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231120857.4014900-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231120857.4014900-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Tweak_flushes_around_ivb_ppgtt?=
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

Series: drm/i915/gt: Tweak flushes around ivb ppgtt
URL   : https://patchwork.freedesktop.org/series/71519/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7657 -> Patchwork_15952
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/index.html

Known issues
------------

  Here are the changes found in Patchwork_15952 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([fdo#103375])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([fdo#111550])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [PASS][7] -> [DMESG-WARN][8] ([i915#592])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_execlists:
    - fi-bwr-2160:        [PASS][9] -> [FAIL][10] ([i915#878])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-bwr-2160/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-bwr-2160/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [INCOMPLETE][11] ([fdo#111736] / [i915#460]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][13] ([i915#505] / [i915#671]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [INCOMPLETE][15] ([i915#671]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-guc:         [INCOMPLETE][17] ([i915#151]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][19] ([i915#725]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [INCOMPLETE][21] ([i915#140]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][23] ([i915#553] / [i915#725]) -> [DMESG-FAIL][24] ([i915#725])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][26] ([i915#62] / [i915#92]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][27] ([i915#62] / [i915#92]) -> [DMESG-WARN][28] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7657/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#878]: https://gitlab.freedesktop.org/drm/intel/issues/878
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 46)
------------------------------

  Additional (5): fi-tgl-u fi-hsw-peppy fi-glk-dsi fi-snb-2520m fi-blb-e6850 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7657 -> Patchwork_15952

  CI-20190529: 20190529
  CI_DRM_7657: 265f77c05e67b37169ac1a9d750a2e2936928ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5355: 2ead76177f2546d3eec0abbd0d9e47cd36588199 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15952: 670665f712503142a04ff8cb27c0d5d1acdd00cb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

670665f71250 drm/i915/gt: Tweak flushes around ivb ppgtt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15952/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
