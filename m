Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EC51797CC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 19:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CBAD6E0DE;
	Wed,  4 Mar 2020 18:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 51BAC6E0D3;
 Wed,  4 Mar 2020 18:25:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F3CFA47DF;
 Wed,  4 Mar 2020 18:25:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 04 Mar 2020 18:25:19 -0000
Message-ID: <158334631922.430.11511387068979365292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304130353.2448417-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200304130353.2448417-1-chris@chris-wilson.co.uk>
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
URL   : https://patchwork.freedesktop.org/series/74266/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8066 -> Patchwork_16818
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16818 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16818, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16818:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_selftest@live@ring_submission} (NEW):
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-pnv-d510/igt@i915_selftest@live@ring_submission.html
    - fi-ilk-650:         NOTRUN -> [DMESG-FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-ilk-650/igt@i915_selftest@live@ring_submission.html
    - fi-elk-e7500:       NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-elk-e7500/igt@i915_selftest@live@ring_submission.html
    - fi-hsw-peppy:       NOTRUN -> [DMESG-FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html
    - fi-snb-2600:        NOTRUN -> [DMESG-FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-snb-2600/igt@i915_selftest@live@ring_submission.html
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-blb-e6850/igt@i915_selftest@live@ring_submission.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-snb-2520m/igt@i915_selftest@live@ring_submission.html

  * igt@runner@aborted:
    - fi-gdg-551:         NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-gdg-551/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8066 and Patchwork_16818:

### New IGT tests (1) ###

  * igt@i915_selftest@live@ring_submission:
    - Statuses : 7 dmesg-fail(s) 1 incomplete(s) 33 pass(s)
    - Exec time: [0.0, 3.08] s

  

Known issues
------------

  Here are the changes found in Patchwork_16818 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][9] -> [FAIL][10] ([CI#94])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([CI#94] / [i915#402]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@vgem_basic@setversion.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - fi-icl-guc:         [DMESG-FAIL][13] ([i915#922]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-icl-guc/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-icl-guc/igt@i915_selftest@live@workarounds.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#922]: https://gitlab.freedesktop.org/drm/intel/issues/922


Participating hosts (45 -> 42)
------------------------------

  Additional (5): fi-kbl-7500u fi-cfl-8109u fi-skl-lmem fi-blb-e6850 fi-kbl-r 
  Missing    (8): fi-hsw-4770r fi-icl-1065g7 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8066 -> Patchwork_16818

  CI-20190529: 20190529
  CI_DRM_8066: 9e1454777a07902c85ce3febcc9648837a2224fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5491: d52794b426ae16630cc1e0354ae435ec98f6174b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16818: 5fd0db494c4115d62d01ae7d548e5cdca7c87634 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5fd0db494c41 drm/i915/gen7: Clear all EU/L3 residual contexts
077cea8a78dd drm/i915: Add mechanism to submit a context WA on ring submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16818/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
