Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AD018130F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 09:35:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABFD6E933;
	Wed, 11 Mar 2020 08:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F9986E92F;
 Wed, 11 Mar 2020 08:35:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 88AACA011A;
 Wed, 11 Mar 2020 08:35:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 08:35:27 -0000
Message-ID: <158391572753.13949.16383009786477338057@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310101720.9944-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200310101720.9944-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Defer_semaphore_priority_bumping_to_a_workqueue?=
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

Series: drm/i915: Defer semaphore priority bumping to a workqueue
URL   : https://patchwork.freedesktop.org/series/74496/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8110 -> Patchwork_16904
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16904/index.html

Known issues
------------

  Here are the changes found in Patchwork_16904 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8110/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16904/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8110/fi-tgl-y/igt@prime_vgem@basic-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16904/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-llseek-size:
    - fi-tgl-y:           [DMESG-WARN][5] ([CI#94] / [i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8110/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16904/fi-tgl-y/igt@prime_self_import@basic-llseek-size.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 37)
------------------------------

  Additional (5): fi-skl-6770hq fi-ilk-650 fi-snb-2520m fi-kbl-x1275 fi-bsw-nick 
  Missing    (14): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-gdg-551 fi-cfl-8109u fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8110 -> Patchwork_16904

  CI-20190529: 20190529
  CI_DRM_8110: 34de7240602b03b0406eac5fc5b4fc6f28c0fe57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16904: d51ab69aeff9b2532903900105a2a83a5ca54c72 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d51ab69aeff9 drm/i915: Defer semaphore priority bumping to a workqueue

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16904/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
