Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ABC1DCC90
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 14:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B28F6E92F;
	Thu, 21 May 2020 12:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B79C86E92E;
 Thu, 21 May 2020 12:04:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1A95A0BA8;
 Thu, 21 May 2020 12:04:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 May 2020 12:04:01 -0000
Message-ID: <159006264169.4442.16042525916899111894@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521112532.3157513-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200521112532.3157513-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc29m?=
 =?utf-8?q?tirq=3A_Kick_ksoftirqd_if_=5F=5Fdo=5Fsoftirq=28=29_is_incomplet?=
 =?utf-8?q?e?=
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

Series: softirq: Kick ksoftirqd if __do_softirq() is incomplete
URL   : https://patchwork.freedesktop.org/series/77508/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8517 -> Patchwork_17748
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17748/index.html

Known issues
------------

  Here are the changes found in Patchwork_17748 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2] ([i915#1874])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17748/fi-skl-lmem/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4] ([i915#489])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17748/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][5] ([i915#62]) -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8517/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17748/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (46 -> 42)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8517 -> Patchwork_17748

  CI-20190529: 20190529
  CI_DRM_8517: 7c5c05e694bf83e9d4ef64172ef6c9d55aa334a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5666: dfa3b1fdc9813a48314a43faaacb7dacc06112d6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17748: 0b4b1b4015c7e54a2598ff26dbc75fcfe6cbe488 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0b4b1b4015c7 softirq: Kick ksoftirqd if __do_softirq() is incomplete

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17748/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
