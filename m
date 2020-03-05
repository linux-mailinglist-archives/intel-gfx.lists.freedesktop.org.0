Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D807617B11F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 23:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 216856EC2C;
	Thu,  5 Mar 2020 22:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F5DE6EC2A;
 Thu,  5 Mar 2020 22:01:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B5ACA0071;
 Thu,  5 Mar 2020 22:01:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Mar 2020 22:01:52 -0000
Message-ID: <158344571204.17237.8893297793881411827@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305115322.2738977-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200305115322.2738977-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Add_mechanism_to_s?=
 =?utf-8?q?ubmit_a_context_WA_on_ring_submission?=
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

Series: series starting with [CI,1/2] drm/i915: Add mechanism to submit a context WA on ring submission
URL   : https://patchwork.freedesktop.org/series/74331/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8070 -> Patchwork_16837
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16837 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16837, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16837/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16837:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_selftest@live@ring_submission} (NEW):
    - fi-elk-e7500:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16837/fi-elk-e7500/igt@i915_selftest@live@ring_submission.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16837/fi-byt-j1900/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8070 and Patchwork_16837:

### New IGT tests (1) ###

  * igt@i915_selftest@live@ring_submission:
    - Statuses : 1 dmesg-fail(s) 1 incomplete(s) 34 pass(s)
    - Exec time: [0.0, 5.62] s

  

Known issues
------------

  Here are the changes found in Patchwork_16837 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][3] -> [FAIL][4] ([CI#94])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16837/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][5] -> [DMESG-FAIL][6] ([i915#877])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16837/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16837/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16837/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 38)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (12): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-kbl-x1275 fi-cfl-8109u fi-blb-e6850 fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8070 -> Patchwork_16837

  CI-20190529: 20190529
  CI_DRM_8070: d4e6f8b48e361f0cae9132f50f1778707b2546a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16837: 0a707ecdc6219190569615d208836e6476dea373 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0a707ecdc621 drm/i915/gen7: Clear all EU/L3 residual contexts
e0fd0fe40b02 drm/i915: Add mechanism to submit a context WA on ring submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16837/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
