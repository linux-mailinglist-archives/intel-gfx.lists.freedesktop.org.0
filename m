Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E53C1B891D
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 21:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33BC66E10A;
	Sat, 25 Apr 2020 19:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B40F6E105;
 Sat, 25 Apr 2020 19:45:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A1E8A00CC;
 Sat, 25 Apr 2020 19:45:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 25 Apr 2020 19:45:04 -0000
Message-ID: <158784390407.28453.6082634196358849355@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200425175751.30358-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200425175751.30358-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/gt=3A_Always_enable_busy-s?=
 =?utf-8?q?tats_for_execlists_=28rev2=29?=
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

Series: series starting with [1/6] drm/i915/gt: Always enable busy-stats for execlists (rev2)
URL   : https://patchwork.freedesktop.org/series/76486/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8368 -> Patchwork_17464
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17464/index.html

Known issues
------------

  Here are the changes found in Patchwork_17464 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#1791])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8368/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17464/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4] ([i915#489])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8368/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17464/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-bsw-kefka:       [DMESG-FAIL][5] ([i915#1791]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8368/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17464/fi-bsw-kefka/igt@i915_selftest@live@gt_pm.html
    - fi-snb-2520m:       [DMESG-FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8368/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17464/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [DMESG-FAIL][9] ([i915#1791]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8368/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17464/fi-whl-u/igt@i915_selftest@live@gt_pm.html

  
  [i915#1791]: https://gitlab.freedesktop.org/drm/intel/issues/1791
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8368 -> Patchwork_17464

  CI-20190529: 20190529
  CI_DRM_8368: b4afa978863f35e0b3f709412e967b66bb3af00c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17464: 5720afa836ee9f5ab6c67f839f7f923f05909be4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5720afa836ee drm/i915/gt: Restore aggressive post-boost downclocking
50df497d84b8 drm/i915/gt: Apply the aggressive downclocking to parking
45476008bc61 drm/i915/gt: Switch to manual evaluation of RPS
40d0b5f06de0 drm/i915/gt: Track use of RPS interrupts in flags
580c6e4c2a06 drm/i915/gt: Move rps.enabled/active to flags
bd5217caba42 drm/i915/gt: Always enable busy-stats for execlists

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17464/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
