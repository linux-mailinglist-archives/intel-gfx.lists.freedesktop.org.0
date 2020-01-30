Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F7D14E0A1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295236E8C0;
	Thu, 30 Jan 2020 18:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78A666E8C0;
 Thu, 30 Jan 2020 18:14:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70965A0019;
 Thu, 30 Jan 2020 18:14:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 30 Jan 2020 18:14:48 -0000
Message-ID: <158040808845.21034.2414125648466044589@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_extract_engine_WA_progr?=
 =?utf-8?q?amming_to_common_resume_function_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915: extract engine WA programming to common resume function (rev2)
URL   : https://patchwork.freedesktop.org/series/72753/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7844 -> Patchwork_16338
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16338 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16338, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16338:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-bwr-2160:        [PASS][1] -> [DMESG-WARN][2] +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-bwr-2160/igt@i915_selftest@live_gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/fi-bwr-2160/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_selftest@live_uncore:
    - fi-bwr-2160:        [PASS][3] -> [DMESG-FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-bwr-2160/igt@i915_selftest@live_uncore.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/fi-bwr-2160/igt@i915_selftest@live_uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_16338 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#563])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [TIMEOUT][7] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [FAIL][9] ([i915#178]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#111096] / [i915#323]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][13] ([fdo#109271]) -> [FAIL][14] ([i915#704])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (46 -> 43)
------------------------------

  Additional (7): fi-glk-dsi fi-ilk-650 fi-whl-u fi-cfl-8109u fi-blb-e6850 fi-skl-6600u fi-kbl-r 
  Missing    (10): fi-icl-1065g7 fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-skl-lmem fi-kbl-7560u fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7844 -> Patchwork_16338

  CI-20190529: 20190529
  CI_DRM_7844: 47faa2a989ef89a15089190a5f942a2d2a34fda5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16338: 0ffdd4bb5d73aa6965410f663afa73268f3427d8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0ffdd4bb5d73 drm/i915: Move ringbuffer WAs to engine workaround list
60ab9a27c1fb drm/i915: extract engine WA programming to common resume function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16338/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
