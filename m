Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2E4166364
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 17:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE4C6EDDF;
	Thu, 20 Feb 2020 16:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB53F6EDDF;
 Thu, 20 Feb 2020 16:47:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E463BA47E1;
 Thu, 20 Feb 2020 16:47:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 20 Feb 2020 16:47:28 -0000
Message-ID: <158221724890.17407.11023391021755540314@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support?=
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

Series: Refactor Gen11+ SAGV support
URL   : https://patchwork.freedesktop.org/series/73703/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7973 -> Patchwork_16644
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16644 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16644, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16644:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-hsw-peppy:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-gdg-551/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-byt-n2820/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-ivb-3770/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-elk-e7500:       [FAIL][9] ([fdo#110446]) -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-elk-e7500/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-elk-e7500/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-ehl-1/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7973 and Patchwork_16644:

### New IGT tests (4) ###

  * igt@i915_pm_backlight@basic-brightness:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rpm@basic-rte:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@basic-api:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16644 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-nick:        [PASS][12] -> [INCOMPLETE][13] ([i915#392])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
    - fi-bdw-5557u:       [PASS][14] -> [INCOMPLETE][15] ([i915#146])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-n3050:       [PASS][16] -> [INCOMPLETE][17] ([i915#392])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-n2820:       [PASS][18] -> [INCOMPLETE][19] ([i915#45])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][20] ([i915#1209]) -> [FAIL][21] ([i915#192] / [i915#193] / [i915#194])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7973/fi-kbl-8809g/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#110446]: https://bugs.freedesktop.org/show_bug.cgi?id=110446
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45


Participating hosts (49 -> 29)
------------------------------

  Additional (2): fi-ivb-3770 fi-pnv-d510 
  Missing    (22): fi-skl-6770hq fi-apl-guc fi-snb-2520m fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-glk-dsi fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-kbl-r fi-ilk-m540 fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7973 -> Patchwork_16644

  CI-20190529: 20190529
  CI_DRM_7973: 07350317e4b2be54b1de7f1e73f77875df5e43f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16644: b0b1b0e549ad74fa7344f75fd33303542e12ef37 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b0b1b0e549ad drm/i915: Enable SAGV support for Gen12
e96fefdd8ad6 drm/i915: Restrict qgv points which don't have enough bandwidth.
0acee8e77bfd drm/i915: Added required new PCode commands
44d1ee8de76a drm/i915: Refactor intel_can_enable_sagv
44448ba23cf9 drm/i915: Init obj state in intel_atomic_get_old/new_global_obj_state
0ada6eb4565d drm/i915: Introduce skl_plane_wm_level accessor.
5d070083c766 drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16644/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
