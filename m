Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D2F18C0F1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 21:00:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0D26EA5E;
	Thu, 19 Mar 2020 20:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 705106EA56;
 Thu, 19 Mar 2020 20:00:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 693B3A00CC;
 Thu, 19 Mar 2020 20:00:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Mar 2020 20:00:32 -0000
Message-ID: <158464803240.17935.9151189382086990886@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319170707.8262-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200319170707.8262-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Use_explicit_flag_?=
 =?utf-8?q?to_mark_unreachable_intel=5Fcontext?=
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

Series: series starting with [CI,1/2] drm/i915: Use explicit flag to mark unreachable intel_context
URL   : https://patchwork.freedesktop.org/series/74880/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8160 -> Patchwork_17026
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17026/index.html

Known issues
------------

  Here are the changes found in Patchwork_17026 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#283] / [i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17026/fi-cml-u2/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([i915#323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17026/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (37 -> 41)
------------------------------

  Additional (7): fi-bsw-n3050 fi-byt-j1900 fi-cfl-8109u fi-skl-6700k2 fi-kbl-7560u fi-bsw-nick fi-skl-6600u 
  Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8160 -> Patchwork_17026

  CI-20190529: 20190529
  CI_DRM_8160: 6ba1729e5025761ab74914f6b8aa3288f493e9c7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5523: cf6d524007ac51a7d5a48503ea3dd5f01fd4ebab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17026: b36c45f467a1434e58b545195c53129413c43e91 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b36c45f467a1 drm/i915/gt: Cancel a hung context if already closed
32d5c83274e0 drm/i915: Use explicit flag to mark unreachable intel_context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17026/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
