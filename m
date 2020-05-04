Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6840A1C3E21
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 17:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAD56E0C6;
	Mon,  4 May 2020 15:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7C276E41B;
 Mon,  4 May 2020 15:08:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2577A010F;
 Mon,  4 May 2020 15:08:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 15:08:36 -0000
Message-ID: <158860491692.5817.2005739019023819902@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504135030.19210-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504135030.19210-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Mark_concurrent_submiss?=
 =?utf-8?q?ions_with_a_weak-dependency?=
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

Series: series starting with [1/6] drm/i915: Mark concurrent submissions with a weak-dependency
URL   : https://patchwork.freedesktop.org/series/76912/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8419 -> Patchwork_17569
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17569 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17569, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17569/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17569:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8419/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17569/fi-icl-u2/igt@i915_selftest@live@execlists.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8419 and Patchwork_17569:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 40 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17569 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][3] ([i915#262]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8419/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17569/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * {igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1}:
    - fi-pnv-d510:        [FAIL][5] ([i915#34]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8419/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17569/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8419 -> Patchwork_17569

  CI-20190529: 20190529
  CI_DRM_8419: 4331ff197d0a7330c311830569aee90bab940694 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17569: 8bd2f81ece028dc8a4c91f64d193d7f563ddcc64 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8bd2f81ece02 drm/i915/gt: Declare when we enabled timeslicing
ce52e4177208 drm/i915/gem: Allow combining submit-fences with syncobj
09b46dbf7d9f drm/i915/gem: Teach execbuf how to wait on future syncobj
2f097bd40cbf drm/syncobj: Allow use of dma-fence-proxy
55c216ab5caf dma-buf: Proxy fence, an unsignaled fence placeholder
aa08f9739363 drm/i915: Mark concurrent submissions with a weak-dependency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17569/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
