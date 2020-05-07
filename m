Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F3F1C984E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 19:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8056EA47;
	Thu,  7 May 2020 17:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E82126EA46;
 Thu,  7 May 2020 17:50:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D93FFA0BCB;
 Thu,  7 May 2020 17:50:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 07 May 2020 17:50:16 -0000
Message-ID: <158887381686.2191.4622315799502878122@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200507152338.7452-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200507152338.7452-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/i915=3A_Mark_concurrent_submissi?=
 =?utf-8?q?ons_with_a_weak-dependency_=28rev3=29?=
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

Series: series starting with [v2] drm/i915: Mark concurrent submissions with a weak-dependency (rev3)
URL   : https://patchwork.freedesktop.org/series/77045/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8444 -> Patchwork_17606
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/index.html

Known issues
------------

  Here are the changes found in Patchwork_17606 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [SKIP][1] ([fdo#109271]) -> [PASS][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6700k2:      [INCOMPLETE][3] ([i915#151]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@reset:
    - fi-bwr-2160:        [INCOMPLETE][5] ([i915#489]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/fi-bwr-2160/igt@i915_selftest@live@reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/fi-bwr-2160/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][7] ([fdo#109271]) -> [FAIL][8] ([i915#62])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8444/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8444 -> Patchwork_17606

  CI-20190529: 20190529
  CI_DRM_8444: 39544482386ac801dc4140df00a7e7e5bbea4d8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5638: 50868ab3c532a86aa147fb555b69a1078c572b13 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17606: 51e347e643d7b35e05340cc9c7adbb9852a6a1ae @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

51e347e643d7 drm/i915: Remove wait priority boosting
e2db934f1637 drm/i915: Treat weak-dependencies as bidirectional when applying priorities
301b1676201d drm/i915: Mark concurrent submissions with a weak-dependency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17606/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
