Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 914F51E08BC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E26C789B84;
	Mon, 25 May 2020 08:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4686789B83;
 Mon, 25 May 2020 08:24:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4031EA3C0D;
 Mon, 25 May 2020 08:24:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 08:24:32 -0000
Message-ID: <159039507223.4528.2271604885448828112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200525075347.582-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200525075347.582-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915/gt=3A_Stop_cross-polluti?=
 =?utf-8?q?ng_PIN=5FGLOBAL_with_PIN=5FUSER_with_no-ppgtt?=
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

Series: series starting with [01/12] drm/i915/gt: Stop cross-polluting PIN_GLOBAL with PIN_USER with no-ppgtt
URL   : https://patchwork.freedesktop.org/series/77627/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8529 -> Patchwork_17767
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17767 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17767, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17767/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17767:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@flip:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bwr-2160/igt@kms_busy@basic@flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17767/fi-bwr-2160/igt@kms_busy@basic@flip.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8529 and Patchwork_17767:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 40 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17767 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@coherency:
    - fi-bwr-2160:        [INCOMPLETE][3] ([i915#489]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bwr-2160/igt@i915_selftest@live@coherency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17767/fi-bwr-2160/igt@i915_selftest@live@coherency.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (45 -> 43)
------------------------------

  Additional (3): fi-hsw-4770 fi-kbl-7560u fi-cfl-guc 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8529 -> Patchwork_17767

  CI-20190529: 20190529
  CI_DRM_8529: 9ae23ae1b437ee0d75ed2153eca05ecbd8c417bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5676: ff03d458f708583c8f9296f97c38df312055651a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17767: a2f70c5c2f5c3d04890dad3d0b682597963e4622 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a2f70c5c2f5c drm/i915/gem: Make relocations atomic within execbuf
c3e6e121ab28 drm/i915/gem: Add all GPU reloc awaits/signals en masse
df5c0d3ea02f drm/i915/gem: Lift GPU relocation allocation
aeb35c7b979b drm/i915/gem: Async GPU relocations only
01d3dc2a8e96 drm/i915: Add list_for_each_entry_safe_continue_reverse
b8b1cf238ad3 drm/i915: Unpeel awaits on a proxy fence
fa5d2c8489c4 dma-buf: Proxy fence, an unsignaled fence placeholder
95ae398ab244 drm/i915: Improve execute_cb struct packing
f248457f5a24 drm/i915/execlists: Shortcircuit queue_prio() for no internal levels
176bca8e32c4 drm/i915/gem: Suppress some random warnings
b10c80198f71 drm/i915/gt: Cancel the flush worker more thoroughly
e73ba84bc40f drm/i915/gt: Stop cross-polluting PIN_GLOBAL with PIN_USER with no-ppgtt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17767/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
