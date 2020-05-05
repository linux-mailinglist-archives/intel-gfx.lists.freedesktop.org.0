Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7063F1C5D6A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 18:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4F6E6E29A;
	Tue,  5 May 2020 16:24:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35ABA6E227;
 Tue,  5 May 2020 16:24:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EFB9A47EB;
 Tue,  5 May 2020 16:24:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 16:24:32 -0000
Message-ID: <158869587218.25914.13421308705396267820@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504135030.19210-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504135030.19210-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Mark_concurrent_submiss?=
 =?utf-8?q?ions_with_a_weak-dependency_=28rev3=29?=
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

Series: series starting with [1/6] drm/i915: Mark concurrent submissions with a weak-dependency (rev3)
URL   : https://patchwork.freedesktop.org/series/76912/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8430 -> Patchwork_17584
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17584/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8430 and Patchwork_17584:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 40 pass(s)
    - Exec time: [0.02, 0.09] s

  


Changes
-------

  No changes found


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8430 -> Patchwork_17584

  CI-20190529: 20190529
  CI_DRM_8430: 2daa6f8cad645f49a898158190a20a893b4aabe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5632: e630cb8cd2ec01d6d5358eb2a3f6ea70498b8183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17584: 7e5f8efa9a8d423a289def24f06bd53489a08ad2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7e5f8efa9a8d drm/i915/gt: Declare when we enabled timeslicing
f3459c71c608 drm/i915/gem: Allow combining submit-fences with syncobj
e796d58b1084 drm/i915/gem: Teach execbuf how to wait on future syncobj
f3138b0d84f7 drm/syncobj: Allow use of dma-fence-proxy
19243ac2eee1 dma-buf: Proxy fence, an unsignaled fence placeholder
d336bdf650f8 drm/i915: Mark concurrent submissions with a weak-dependency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17584/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
