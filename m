Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366DA15FB3F
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 01:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF316E89C;
	Sat, 15 Feb 2020 00:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FEF46E89A;
 Sat, 15 Feb 2020 00:00:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28D72A47E8;
 Sat, 15 Feb 2020 00:00:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 15 Feb 2020 00:00:34 -0000
Message-ID: <158172483416.4008.3334889953748272814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214231917.4055677-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200214231917.4055677-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Declare_when_we_enab?=
 =?utf-8?q?led_timeslicing?=
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

Series: series starting with [1/2] drm/i915/gt: Declare when we enabled timeslicing
URL   : https://patchwork.freedesktop.org/series/73489/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7943 -> Patchwork_16579
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/index.html

Known issues
------------

  Here are the changes found in Patchwork_16579 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2] ([CI#80] / [fdo#106070] / [i915#424])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-7500u:       [PASS][3] -> [DMESG-FAIL][4] ([fdo#112406])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-ehl-1}:         [FAIL][5] ([i915#996]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-ehl-1/igt@gem_exec_parallel@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/fi-ehl-1/igt@gem_exec_parallel@basic.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [DMESG-FAIL][7] ([i915#765]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-icl-y/igt@i915_selftest@live_active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/fi-icl-y/igt@i915_selftest@live_active.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#996]: https://gitlab.freedesktop.org/drm/intel/issues/996


Participating hosts (41 -> 41)
------------------------------

  Additional (6): fi-kbl-soraka fi-bsw-n3050 fi-hsw-peppy fi-cfl-8109u fi-skl-lmem fi-blb-e6850 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7943 -> Patchwork_16579

  CI-20190529: 20190529
  CI_DRM_7943: 865945b076689b2e99bc1c52fad95cec05cff9ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5442: 3f6080996885b997685f08ecb8b416b2dc485290 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16579: 25daabe03b8615a03eea700db755531ac0b93a4c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

25daabe03b86 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
777ee926f053 drm/i915/gt: Declare when we enabled timeslicing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
