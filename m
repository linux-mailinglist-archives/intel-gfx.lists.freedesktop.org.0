Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C191AE7B9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 23:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E106EC0E;
	Fri, 17 Apr 2020 21:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3347B6EABC;
 Fri, 17 Apr 2020 21:43:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D4EBA0019;
 Fri, 17 Apr 2020 21:43:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Apr 2020 21:43:45 -0000
Message-ID: <158715982518.10466.9387220040123528833@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417152018.13079-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417152018.13079-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/selftests=3A_Move_gpu?=
 =?utf-8?q?_energy_measurement_into_its_own_little_lib?=
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

Series: series starting with [CI,1/2] drm/i915/selftests: Move gpu energy measurement into its own little lib
URL   : https://patchwork.freedesktop.org/series/76103/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8319 -> Patchwork_17354
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17354/index.html

Known issues
------------

  Here are the changes found in Patchwork_17354 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      [PASS][1] -> [DMESG-FAIL][2] ([i915#1744])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17354/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744


Participating hosts (51 -> 45)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8319 -> Patchwork_17354

  CI-20190529: 20190529
  CI_DRM_8319: 18043327e8a9cba095bca9f80cdc70900a51f92c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17354: eae11305b41ad9e78243406ab07e8caf5d8e8124 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eae11305b41a drm/i915/selftests: Check power consumption at min/max frequencies
b3ea59992e26 drm/i915/selftests: Move gpu energy measurement into its own little lib

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17354/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
