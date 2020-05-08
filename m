Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 447701CA868
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 12:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752476E170;
	Fri,  8 May 2020 10:34:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4500B6E13C;
 Fri,  8 May 2020 10:34:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 349DCA47DA;
 Fri,  8 May 2020 10:34:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 08 May 2020 10:34:51 -0000
Message-ID: <158893409118.22724.14406262815782219130@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200508092933.738-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915=3A_Ignore_submit-fences_on?=
 =?utf-8?q?_the_same_timeline?=
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

Series: series starting with [1/9] drm/i915: Ignore submit-fences on the same timeline
URL   : https://patchwork.freedesktop.org/series/77072/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8450 -> Patchwork_17609
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8450 and Patchwork_17609:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 39 pass(s)
    - Exec time: [0.03, 0.11] s

  

Known issues
------------

  Here are the changes found in Patchwork_17609 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [INCOMPLETE][1] ([i915#489]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/fi-bwr-2160/igt@i915_selftest@live@mman.html

  * {igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1}:
    - fi-bsw-kefka:       [FAIL][3] ([i915#34]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][5] ([i915#62] / [i915#95]) -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8450/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8450 -> Patchwork_17609

  CI-20190529: 20190529
  CI_DRM_8450: 4c642c074acca27a763a00be28132b6f40bc361c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5640: 5efb4a1c9cc944eff129cae7794951ae617bca17 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17609: 96dc49eecf667ccb1418bcfac0bc189412868acb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

96dc49eecf66 drm/i915/gt: Declare when we enabled timeslicing
f44784ab7169 drm/i915/gem: Allow combining submit-fences with syncobj
61b47826215b drm/i915/gem: Teach execbuf how to wait on future syncobj
d5504a1bf6f5 drm/syncobj: Allow use of dma-fence-proxy
4e705a4d23cc dma-buf: Proxy fence, an unsignaled fence placeholder
fe5b438ff7a9 drm/i915: Tidy awaiting on dma-fences
fccd141053d3 drm/i915: Prevent using semaphores to chain up to external fences
d17611e9e0a3 drm/i915: Pull waiting on an external dma-fence into its routine
3db130b5548c drm/i915: Ignore submit-fences on the same timeline

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17609/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
