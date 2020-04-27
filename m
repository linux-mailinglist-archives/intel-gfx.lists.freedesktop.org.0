Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A961BA75C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 17:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B62576E30E;
	Mon, 27 Apr 2020 15:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CBEC6E30E;
 Mon, 27 Apr 2020 15:08:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E77CDA0099;
 Mon, 27 Apr 2020 15:08:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 27 Apr 2020 15:08:39 -0000
Message-ID: <158800011991.26357.3004203457320018306@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424231423.4065231-1-matthew.d.roper@intel.com>
In-Reply-To: <20200424231423.4065231-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_proper_fault_mask_in_interrupt_postinstall_too_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915: Use proper fault mask in interrupt postinstall too (rev2)
URL   : https://patchwork.freedesktop.org/series/76466/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8373 -> Patchwork_17478
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/index.html

Known issues
------------

  Here are the changes found in Patchwork_17478 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-FAIL][2] ([i915#1791])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-nick:        [PASS][3] -> [DMESG-FAIL][4] ([i915#1791])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-r:           [PASS][5] -> [DMESG-FAIL][6] ([i915#1791])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-7500u:       [PASS][7] -> [DMESG-FAIL][8] ([i915#1791])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
    - fi-ivb-3770:        [PASS][9] -> [DMESG-FAIL][10] ([i915#1791])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-ivb-3770/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bwr-2160:        [INCOMPLETE][11] ([i915#489]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-bwr-2160/igt@i915_selftest@live@gt_lrc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-bwr-2160/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-x1275:       [DMESG-FAIL][13] ([i915#1791]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
    - fi-icl-u2:          [DMESG-FAIL][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-skl-lmem:        [DMESG-FAIL][17] ([i915#1791]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8373/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html

  
  [i915#1791]: https://gitlab.freedesktop.org/drm/intel/issues/1791
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8373 -> Patchwork_17478

  CI-20190529: 20190529
  CI_DRM_8373: 9d63a10e83b2d271007e281fe875d6f650a1849e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5612: c8dc1fd926a550308b971ca7d83fe0a927a38152 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17478: 19c945f5e29700e084ee3e45ccb7e52c775d4819 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

19c945f5e297 drm/i915: Use proper fault mask in interrupt postinstall too

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17478/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
