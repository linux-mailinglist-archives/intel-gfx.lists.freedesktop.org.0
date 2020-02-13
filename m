Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8797115C84E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 17:34:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743836E369;
	Thu, 13 Feb 2020 16:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18D706E311;
 Thu, 13 Feb 2020 16:34:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 118DBA0078;
 Thu, 13 Feb 2020 16:34:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 13 Feb 2020 16:34:46 -0000
Message-ID: <158161168604.17962.819224745438664086@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213140150.3639027-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200213140150.3639027-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Exercise_timeslice_rewinding_=28rev2=29?=
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

Series: drm/i915/selftests: Exercise timeslice rewinding (rev2)
URL   : https://patchwork.freedesktop.org/series/73198/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7932 -> Patchwork_16558
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16558/index.html

Known issues
------------

  Here are the changes found in Patchwork_16558 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16558/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([fdo#112406])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/fi-kbl-guc/igt@i915_selftest@live_gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16558/fi-kbl-guc/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-u2:          [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/fi-icl-u2/igt@i915_selftest@live_gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16558/fi-icl-u2/igt@i915_selftest@live_gtt.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45


Participating hosts (44 -> 45)
------------------------------

  Additional (9): fi-hsw-peppy fi-skl-6770hq fi-bwr-2160 fi-kbl-r fi-gdg-551 fi-skl-lmem fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (8): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7932 -> Patchwork_16558

  CI-20190529: 20190529
  CI_DRM_7932: da6301c2a1bda78897e67fb22e011c1574b7c6a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5439: ed1f7d96d4d5d4565bcd3adb3a23b2002a25419e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16558: 9c851daea682b44925e1aed1af1c49c0ea86715d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9c851daea682 drm/i915/selftests: Exercise timeslice rewinding

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16558/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
