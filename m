Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 261EC1B7F52
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 21:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 125226EB11;
	Fri, 24 Apr 2020 19:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3EC906EB0F;
 Fri, 24 Apr 2020 19:48:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39388A0BC6;
 Fri, 24 Apr 2020 19:48:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Apr 2020 19:48:20 -0000
Message-ID: <158775770023.10800.2962235852959253292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424191410.27570-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200424191410.27570-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drop_rq-=3Ering-=3Evma_peeking_from_error_capture?=
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

Series: drm/i915: Drop rq->ring->vma peeking from error capture
URL   : https://patchwork.freedesktop.org/series/76448/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8362 -> Patchwork_17459
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17459 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17459, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17459/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17459:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-x1275:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8362/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17459/fi-kbl-x1275/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17459 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8362/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17459/fi-cml-s/igt@i915_selftest@live@gt_pm.html
    - fi-bsw-nick:        [DMESG-FAIL][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8362/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17459/fi-bsw-nick/igt@i915_selftest@live@gt_pm.html
    - fi-skl-lmem:        [DMESG-FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8362/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17459/fi-skl-lmem/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-8809g:       [DMESG-FAIL][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8362/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17459/fi-kbl-8809g/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-7500u:       [DMESG-FAIL][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8362/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17459/fi-kbl-7500u/igt@i915_selftest@live@gt_pm.html

  


Participating hosts (49 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8362 -> Patchwork_17459

  CI-20190529: 20190529
  CI_DRM_8362: b278b006fd6af2d5c0e7dd3b7057160c8cfbe445 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17459: 9b34e2293d36e0f120f277cb650b484c9691bd2c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b34e2293d36 drm/i915: Drop rq->ring->vma peeking from error capture

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17459/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
