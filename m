Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0D61C1548
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 15:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88606E2BE;
	Fri,  1 May 2020 13:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E8096E2BD;
 Fri,  1 May 2020 13:53:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17402A011A;
 Fri,  1 May 2020 13:53:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 May 2020 13:53:43 -0000
Message-ID: <158834122306.18946.12453665825204809670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501130217.5708-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200501130217.5708-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gem=3A_Use_chained_reloc_b?=
 =?utf-8?q?atches?=
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

Series: series starting with [1/3] drm/i915/gem: Use chained reloc batches
URL   : https://patchwork.freedesktop.org/series/76818/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8405 -> Patchwork_17541
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/index.html

Known issues
------------

  Here are the changes found in Patchwork_17541 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - fi-bwr-2160:        [INCOMPLETE][1] ([i915#489]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8405/fi-bwr-2160/igt@i915_selftest@live@hugepages.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/fi-bwr-2160/igt@i915_selftest@live@hugepages.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8405 -> Patchwork_17541

  CI-20190529: 20190529
  CI_DRM_8405: 83efffba539b475ce7e3fb96aeae7ee744309ff7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5623: 8838c73169ea249e6e86aaed35e5178f60f4ef7d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17541: 33804e5f45d5966bd57174bcd53fe7cc0cf1ec01 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

33804e5f45d5 drm/i915/gem: Try an alternate engine for relocations
6490e47bafca drm/i915/gem: Use a single chained reloc batches for a single execbuf
25152ee6dda9 drm/i915/gem: Use chained reloc batches

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17541/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
