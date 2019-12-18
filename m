Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0CC123DB6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 04:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A806E129;
	Wed, 18 Dec 2019 03:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1DBF6E10C;
 Wed, 18 Dec 2019 03:10:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA340A0BC6;
 Wed, 18 Dec 2019 03:10:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 18 Dec 2019 03:10:41 -0000
Message-ID: <157663864173.8354.15802388385274859479@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
In-Reply-To: <20191218014208.7916-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZGlz?=
 =?utf-8?q?play=3A_prefer_3-letter_acronym?=
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

Series: display: prefer 3-letter acronym
URL   : https://patchwork.freedesktop.org/series/71079/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7591 -> Patchwork_15822
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/index.html

Known issues
------------

  Here are the changes found in Patchwork_15822 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][1] -> [DMESG-FAIL][2] ([i915#770])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][3] -> [INCOMPLETE][4] ([i915#45])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-y:           [PASS][5] -> [INCOMPLETE][6] ([i915#435] / [i915#667])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-u}:         [INCOMPLETE][7] ([fdo#111735]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-u/igt@gem_ctx_create@basic-files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/fi-tgl-u/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [INCOMPLETE][9] ([fdo#111593]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/fi-tgl-guc/igt@gem_exec_gttfill@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][11] ([i915#178]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7591/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (51 -> 27)
------------------------------

  Missing    (24): fi-snb-2520m fi-skl-lmem fi-icl-guc fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-byt-j1900 fi-glk-dsi fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-hsw-4770 fi-elk-e7500 fi-ilk-m540 fi-cfl-8700k fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7591 -> Patchwork_15822

  CI-20190529: 20190529
  CI_DRM_7591: 977eb2b7ca4efceca4baf88a612e751f5f819999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15822: a4de0a21a8155c710cfc7379d0cd1d244dad297c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a4de0a21a815 drm/i915/display: prefer 3-letter acronym for ironlake
81aef5d3814d drm/i915/display: prefer 3-letter acronym for icelake
b292edbc52f1 drm/i915/display: prefer 3-letter acronym for cannonlake
3abc3a1d32ce drm/i915/display: prefer 3-letter acronym for skylake
6c1cdecc46e5 drm/i915/display: prefer 3-letter acronym for haswell

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15822/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
