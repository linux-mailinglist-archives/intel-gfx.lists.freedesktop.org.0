Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA711D1E90
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 21:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24F96E282;
	Wed, 13 May 2020 19:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C6946E209;
 Wed, 13 May 2020 19:08:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85D32A00C7;
 Wed, 13 May 2020 19:08:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 19:08:58 -0000
Message-ID: <158939693851.25406.9203928745759504423@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513165937.9508-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513165937.9508-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/i915/gem=3A_Remove_redundant_exe?=
 =?utf-8?q?c=5Ffence_=28rev3=29?=
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

Series: series starting with [v2] drm/i915/gem: Remove redundant exec_fence (rev3)
URL   : https://patchwork.freedesktop.org/series/77235/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8475 -> Patchwork_17650
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8475 and Patchwork_17650:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 41 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17650 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/fi-bwr-2160/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/fi-bwr-2160/igt@i915_selftest@live@gt_engines.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (48 -> 45)
------------------------------

  Additional (2): fi-kbl-7560u fi-tgl-u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8475 -> Patchwork_17650

  CI-20190529: 20190529
  CI_DRM_8475: fdb67b76a2d3b315585813539269dac22e2305f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17650: b67343cec0c9c6f9e2ee43eaefacd1613be851f7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b67343cec0c9 drm/i915/gt: Declare when we enabled timeslicing
186fef4cf0c2 drm/i915/gem: Allow combining submit-fences with syncobj
80e21224756c drm/i915/gem: Teach execbuf how to wait on future syncobj
5581ddb7dd99 drm/syncobj: Allow use of dma-fence-proxy
6df249b03f5f dma-buf: Proxy fence, an unsignaled fence placeholder
56b752269be2 drm/i915: Mark the addition of the initial-breadcrumb in the request
c5d36cb78d92 drm/i915/gem: Remove redundant exec_fence

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17650/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
