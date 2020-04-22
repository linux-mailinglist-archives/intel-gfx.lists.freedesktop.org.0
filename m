Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEEA1B3A71
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 10:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F2C6E373;
	Wed, 22 Apr 2020 08:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B39E36E370;
 Wed, 22 Apr 2020 08:41:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB197A47DB;
 Wed, 22 Apr 2020 08:41:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Apr 2020 08:41:49 -0000
Message-ID: <158754490966.5178.4598464194951264874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422073715.11770-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200422073715.11770-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_request_throughput_measurement_to_perf_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915/selftests: Add request throughput measurement to perf (rev5)
URL   : https://patchwork.freedesktop.org/series/73930/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8347 -> Patchwork_17414
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17414 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17414, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17414/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17414:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@blt:
    - fi-elk-e7500:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8347/fi-elk-e7500/igt@i915_selftest@live@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17414/fi-elk-e7500/igt@i915_selftest@live@blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17414 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-snb-2600:        [PASS][3] -> [FAIL][4] ([i915#1763]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8347/fi-snb-2600/igt@i915_selftest@live@late_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17414/fi-snb-2600/igt@i915_selftest@live@late_gt_pm.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][5] ([i915#1314]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8347/fi-icl-y/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17414/fi-icl-y/igt@i915_selftest@live@execlists.html

  
  [i915#1314]: https://gitlab.freedesktop.org/drm/intel/issues/1314
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8347 -> Patchwork_17414

  CI-20190529: 20190529
  CI_DRM_8347: 4acd2fd67fbcfe23e07130bab11a47d4b43d0bd4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17414: 10bc6b3b5e8038b75ddec2de376b11daee9f2e73 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

10bc6b3b5e80 drm/i915/selftests: Add request throughput measurement to perf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17414/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
