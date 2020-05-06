Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 238FE1C7265
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 16:02:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6449E6E2B4;
	Wed,  6 May 2020 14:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EF1116E883;
 Wed,  6 May 2020 14:02:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9B98A47E6;
 Wed,  6 May 2020 14:02:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Wed, 06 May 2020 14:02:42 -0000
Message-ID: <158877376295.11897.9365995945016274217@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506131112.19581-1-animesh.manna@intel.com>
In-Reply-To: <20200506131112.19581-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsb=3A_Pre_allocate_and_late_cleanup_of_cmd_buffer_=28rev?=
 =?utf-8?q?4=29?=
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

Series: drm/i915/dsb: Pre allocate and late cleanup of cmd buffer (rev4)
URL   : https://patchwork.freedesktop.org/series/73036/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8433 -> Patchwork_17589
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17589/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17589:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/fi-tgl-dsi/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17589/fi-tgl-dsi/igt@i915_module_load@reload.html
    - {fi-tgl-u}:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/fi-tgl-u/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17589/fi-tgl-u/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_17589 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@perf:
    - fi-bwr-2160:        [PASS][5] -> [INCOMPLETE][6] ([i915#489])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/fi-bwr-2160/igt@i915_selftest@live@perf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17589/fi-bwr-2160/igt@i915_selftest@live@perf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8433 -> Patchwork_17589

  CI-20190529: 20190529
  CI_DRM_8433: db68fed086f2ddcdc30e0d9ca5faaba5e55d0d01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5633: c8c2e5ed5cd8e4b7a69a903f3f1653612086abcc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17589: 6353a74d2b4ce9736369c905a92f0d2ec45651e6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6353a74d2b4c drm/i915/dsb: Pre allocate and late cleanup of cmd buffer

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17589/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
