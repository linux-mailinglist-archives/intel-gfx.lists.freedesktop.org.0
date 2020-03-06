Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CAB17BAA3
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 11:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6572A6ECCE;
	Fri,  6 Mar 2020 10:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 786A06ECCD;
 Fri,  6 Mar 2020 10:41:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 739EEA47E6;
 Fri,  6 Mar 2020 10:41:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 10:41:46 -0000
Message-ID: <158349130647.3081.16524982190663480637@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306071614.2846708-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200306071614.2846708-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Assert_requests_within_?=
 =?utf-8?q?a_context_are_submitted_in_order?=
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

Series: series starting with [1/3] drm/i915: Assert requests within a context are submitted in order
URL   : https://patchwork.freedesktop.org/series/74369/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8076 -> Patchwork_16856
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16856 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16856, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16856:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-cfl-8109u/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@live@ring_submission}:
    - fi-byt-j1900:       [PASS][2] -> [DMESG-FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8076/fi-byt-j1900/igt@i915_selftest@live@ring_submission.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-byt-j1900/igt@i915_selftest@live@ring_submission.html

  * igt@runner@aborted:
    - {fi-kbl-7560u}:     NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-kbl-7560u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16856 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8076/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8109u:       [PASS][7] -> [INCOMPLETE][8] ([i915#424])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8076/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-cfl-8109u/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][9] ([CI#94]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8076/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-snb-2520m:       [DMESG-WARN][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8076/fi-snb-2520m/igt@i915_selftest@live@gt_mocs.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-snb-2520m/igt@i915_selftest@live@gt_mocs.html

  * {igt@i915_selftest@live@ring_submission}:
    - fi-hsw-peppy:       [DMESG-FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8076/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html
    - fi-snb-2520m:       [INCOMPLETE][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8076/fi-snb-2520m/igt@i915_selftest@live@ring_submission.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-snb-2520m/igt@i915_selftest@live@ring_submission.html

  * igt@kms_addfb_basic@bad-pitch-63:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8076/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-63.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-63.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#504]: https://gitlab.freedesktop.org/drm/intel/issues/504


Participating hosts (45 -> 45)
------------------------------

  Additional (4): fi-hsw-4770r fi-skl-lmem fi-blb-e6850 fi-kbl-r 
  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8076 -> Patchwork_16856

  CI-20190529: 20190529
  CI_DRM_8076: bb93ee259288a580da4625a7a747bcd9bbedaf96 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16856: db242158bc8bf8624958f48705e4648475176312 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

db242158bc8b drm/i915/gem: Limit struct_mutex to eb_reserve
90bd5f316117 drm/i915: Always propagate the invocation to i915_schedule
2551a4bb7870 drm/i915: Assert requests within a context are submitted in order

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16856/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
