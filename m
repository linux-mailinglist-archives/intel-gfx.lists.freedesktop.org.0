Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1283E1A8FB6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 02:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F98A6E7D5;
	Wed, 15 Apr 2020 00:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 615216E7D5;
 Wed, 15 Apr 2020 00:27:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55699A3ECB;
 Wed, 15 Apr 2020 00:27:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 15 Apr 2020 00:27:17 -0000
Message-ID: <158691043732.21014.1405140812689760661@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414131007.108377-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200414131007.108377-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/4=5D_drm/i915/perf=3A_break_OA_conf?=
 =?utf-8?q?ig_buffer_object_in_2?=
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

Series: series starting with [v6,1/4] drm/i915/perf: break OA config buffer object in 2
URL   : https://patchwork.freedesktop.org/series/75920/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8298 -> Patchwork_17296
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17296 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17296, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17296/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17296:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@perf:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-hsw-4770/igt@i915_selftest@live@perf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17296/fi-hsw-4770/igt@i915_selftest@live@perf.html
    - fi-hsw-peppy:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-hsw-peppy/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17296/fi-hsw-peppy/igt@i915_selftest@live@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_17296 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#1167])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17296/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  
  [i915#1167]: https://gitlab.freedesktop.org/drm/intel/issues/1167


Participating hosts (48 -> 44)
------------------------------

  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17296

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17296: 11441aa780740e455167c5c8dee447783c4314ae @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

11441aa78074 drm/i915/perf: enable filtering on multiple contexts
9dc9a1aaf289 drm/i915/perf: prepare driver to receive multiple ctx handles
bb4da53398c0 drm/i915/perf: stop using the kernel context
29791c84c5a1 drm/i915/perf: break OA config buffer object in 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17296/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
