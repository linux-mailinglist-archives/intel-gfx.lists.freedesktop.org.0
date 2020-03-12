Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA6D18343D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 16:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35166EAD9;
	Thu, 12 Mar 2020 15:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E531F6E2E9;
 Thu, 12 Mar 2020 15:15:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDCC3A00FD;
 Thu, 12 Mar 2020 15:15:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Mar 2020 15:15:45 -0000
Message-ID: <158402614587.4947.4721962328668178918@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312103548.19962-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200312103548.19962-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/mm=3A_Use_debugobject_to_track_lifetimes_=28rev3=29?=
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

Series: drm/mm: Use debugobject to track lifetimes (rev3)
URL   : https://patchwork.freedesktop.org/series/74638/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8127 -> Patchwork_16953
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16953 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16953, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16953:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-pnv-d510/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-snb-2520m/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-snb-2600/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-bxt-dsi/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-blb-e6850/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-ivb-3770:        [FAIL][7] ([i915#1405]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/fi-ivb-3770/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-ivb-3770/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-tgl-dsi/igt@runner@aborted.html
    - {fi-ehl-1}:         NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-ehl-1/igt@runner@aborted.html
    - {fi-tgl-u}:         NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16953 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][12] ([i915#1209]) -> [FAIL][13] ([i915#192] / [i915#193] / [i915#194])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/fi-kbl-8809g/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1405]: https://gitlab.freedesktop.org/drm/intel/issues/1405
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194


Participating hosts (42 -> 43)
------------------------------

  Additional (8): fi-bsw-n3050 fi-cfl-guc fi-snb-2520m fi-kbl-x1275 fi-bsw-kefka fi-kbl-7560u fi-bsw-nick fi-kbl-r 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-7500u fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8127 -> Patchwork_16953

  CI-20190529: 20190529
  CI_DRM_8127: 6b843f994832ac95eafa8d380399c3aef2cab3e5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16953: c869cbdfdc9f89f38b1b14d2e2b2342f6dfe2e06 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c869cbdfdc9f drm/mm: Use debugobject to track lifetimes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16953/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
