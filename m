Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A1C1B820A
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 00:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1BEA6EB69;
	Fri, 24 Apr 2020 22:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E40E96EB68;
 Fri, 24 Apr 2020 22:29:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCD4DA0088;
 Fri, 24 Apr 2020 22:29:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Fri, 24 Apr 2020 22:29:20 -0000
Message-ID: <158776736087.10800.7741615498903750145@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424214841.28076-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200424214841.28076-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Add_engine_scratch_regi?=
 =?utf-8?q?ster_to_live=5Flrc=5Ffixed?=
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

Series: series starting with [1/4] drm/i915: Add engine scratch register to live_lrc_fixed
URL   : https://patchwork.freedesktop.org/series/76460/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8363 -> Patchwork_17460
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17460 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17460, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17460:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8363/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-x1275:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8363/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
    - fi-snb-2520m:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8363/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8363/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-7500u:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8363/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17460 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [PASS][11] -> [SKIP][12] ([fdo#109271]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8363/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-bsw-kefka:       [DMESG-FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8363/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
    - fi-bdw-5557u:       [DMESG-FAIL][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8363/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Participating hosts (50 -> 44)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8363 -> Patchwork_17460

  CI-20190529: 20190529
  CI_DRM_8363: dbfcd301433f070fbf416772817fcec778c8e5d0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17460: 5a28ec4512da0730446edcd1dd6fb77f12d53390 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5a28ec4512da drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL
4c47318cc563 drm/i915: Add live selftests for indirect ctx batchbuffers
70ee6bcc1e36 drm/i915: Add per ctx batchbuffer wa for timestamp
d5008c5aac16 drm/i915: Add engine scratch register to live_lrc_fixed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17460/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
