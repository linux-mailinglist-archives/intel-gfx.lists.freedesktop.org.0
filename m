Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 194EF1D9135
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 09:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649AE6E528;
	Tue, 19 May 2020 07:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9847A6E2E4;
 Tue, 19 May 2020 07:40:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9190AA00C7;
 Tue, 19 May 2020 07:40:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 07:40:30 -0000
Message-ID: <158987403056.31237.10072989633465265173@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200519063123.20673-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915=3A_Don=27t_set_queue-pri?=
 =?utf-8?q?ority_hint_when_supressing_the_reschedule?=
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

Series: series starting with [01/12] drm/i915: Don't set queue-priority hint when supressing the reschedule
URL   : https://patchwork.freedesktop.org/series/77389/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8498 -> Patchwork_17707
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17707/index.html

Known issues
------------

  Here are the changes found in Patchwork_17707 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_mocs:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/fi-bwr-2160/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17707/fi-bwr-2160/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (52 -> 44)
------------------------------

  Missing    (8): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8498 -> Patchwork_17707

  CI-20190529: 20190529
  CI_DRM_8498: 1493c649ae92207a758afa50a639275bd6c80e2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5659: 66ab5e42811fee3dea8c21ab29e70e323a0650de @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17707: 2dd47ed241085a15e7df5e1f79ac259a94eff274 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2dd47ed24108 drm/i915/gt: Resubmit the virtual engine on schedule-out
36097b3facaf drm/i915/gt: Decouple inflight virtual engines
05075f82f723 drm/i915/gt: Use virtual_engine during execlists_dequeue
be9b4c6a092f drm/i915/gt: Incorporate the virtual engine into timeslicing
0bbb9df18350 drm/i915/gt: Kick virtual siblings on timeslice out
dabfa4752751 drm/i915/selftests: Add tests for timeslicing virtual engines
1ebfae936ba7 drm/i915: Move saturated workload detection back to the context
841b9993f566 drm/i915/execlists: Shortcircuit queue_prio() for no internal levels
447b4e777a40 drm/i915/selftests: Check for an initial-breadcrumb in wait_for_submit()
160ec59b6ea7 drm/i915/selftests: Restore to default heartbeat
1d8f35d7152c drm/i915/selftests: Change priority overflow detection
364ab8bd9968 drm/i915: Don't set queue-priority hint when supressing the reschedule

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17707/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
