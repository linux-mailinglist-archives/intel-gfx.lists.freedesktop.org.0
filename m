Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5121703D0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 17:10:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD5E6EABE;
	Wed, 26 Feb 2020 16:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C3256E037;
 Wed, 26 Feb 2020 16:10:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B54CA41FB;
 Wed, 26 Feb 2020 16:10:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 16:10:02 -0000
Message-ID: <158273340254.21012.16022467285146403643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225132342.427055-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225132342.427055-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Mark_up_the_racy_use_of_perf-=3Eexclusive=5Fstrea?=
 =?utf-8?q?m?=
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

Series: drm/i915/perf: Mark up the racy use of perf->exclusive_stream
URL   : https://patchwork.freedesktop.org/series/73905/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8004_full -> Patchwork_16703_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16703_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16703_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16703_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_blits@normal:
    - shard-apl:          NOTRUN -> [TIMEOUT][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/shard-apl3/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_rpm@pm-tiling:
    - shard-iclb:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/shard-iclb2/igt@i915_pm_rpm@pm-tiling.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-kbl:          NOTRUN -> [TIMEOUT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/shard-kbl2/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-skl:          NOTRUN -> [TIMEOUT][4] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/shard-skl5/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-glk:          NOTRUN -> [TIMEOUT][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/shard-glk4/igt@sw_sync@sync_multi_producer_single_consumer.html

  


Participating hosts (8 -> 10)
------------------------------

  Additional (2): pig-skl-6260u pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8004 -> Patchwork_16703
  * Piglit: None -> piglit_4509

  CI-20190529: 20190529
  CI_DRM_8004: 1a2e0cce5af4a9ad9694995610ed64578ccc430f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5464: 8cf2f8684992052ab89de1cf328c418224c0c2a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16703: 0dd2fa1856167d951facb19c40185fb2929cf67d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16703/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
