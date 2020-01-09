Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B9C1357DE
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 12:26:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0A46E02D;
	Thu,  9 Jan 2020 11:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A53E56E02D;
 Thu,  9 Jan 2020 11:25:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C764A0087;
 Thu,  9 Jan 2020 11:25:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 09 Jan 2020 11:25:56 -0000
Message-ID: <157856915661.4564.2904158449292251160@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108161954.29739-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200108161954.29739-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Revert_=22drm/i915/tgl=3A_Wa=5F1607138340=22?=
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

Series: drm/i915: Revert "drm/i915/tgl: Wa_1607138340"
URL   : https://patchwork.freedesktop.org/series/71774/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7705 -> Patchwork_16031
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16031:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_mmap_gtt@basic:
    - {fi-ehl-1}:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-ehl-1/igt@gem_mmap_gtt@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_16031 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][2] -> [FAIL][3] ([fdo#103375])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][4] ([i915#816]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_fence@nb-await-default:
    - {fi-ehl-1}:         [INCOMPLETE][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-ehl-1/igt@gem_exec_fence@nb-await-default.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-ehl-1/igt@gem_exec_fence@nb-await-default.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][8] ([fdo#111764]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][10] ([i915#505]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [INCOMPLETE][12] ([i915#879]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][14] ([fdo#109271]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][16] ([i915#553] / [i915#725]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-skl-6770hq:      [INCOMPLETE][18] ([i915#435]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][20] ([i915#563]) -> [DMESG-FAIL][21] ([i915#725])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879


Participating hosts (38 -> 35)
------------------------------

  Additional (5): fi-hsw-peppy fi-snb-2520m fi-gdg-551 fi-bsw-kefka fi-kbl-r 
  Missing    (8): fi-byt-squawks fi-tgl-y fi-ilk-650 fi-ctg-p8600 fi-elk-e7500 fi-kbl-7560u fi-byt-n2820 fi-bsw-nick 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7705 -> Patchwork_16031

  CI-20190529: 20190529
  CI_DRM_7705: b57ea8cadecd3444690439b4703d964afca476e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16031: 4c837000070d0256c45e0dc3e56b265339fdd8a7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4c837000070d drm/i915: Revert "drm/i915/tgl: Wa_1607138340"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
