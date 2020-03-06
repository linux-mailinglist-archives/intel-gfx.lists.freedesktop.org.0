Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6E417C454
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 18:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D936E4D7;
	Fri,  6 Mar 2020 17:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A2BD6E4D4;
 Fri,  6 Mar 2020 17:28:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31E23A00E7;
 Fri,  6 Mar 2020 17:28:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 17:28:11 -0000
Message-ID: <158351569117.3082.8586167046919147606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306113012.3184606-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200306113012.3184606-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/execlists=3A_Enable_timesl?=
 =?utf-8?q?ice_on_partial_virtual_engine_dequeue?=
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

Series: series starting with [1/3] drm/i915/execlists: Enable timeslice on partial virtual engine dequeue
URL   : https://patchwork.freedesktop.org/series/74384/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8084 -> Patchwork_16859
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16859 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16859, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16859:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-kbl-soraka/igt@i915_selftest@live@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/fi-kbl-soraka/igt@i915_selftest@live@gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@live@ring_submission}:
    - fi-hsw-peppy:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html

  
Known issues
------------

  Here are the changes found in Patchwork_16859 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][7] -> [FAIL][8] ([i915#217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][9] ([i915#877]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][11] ([i915#217]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][13] ([CI#94] / [i915#402]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8084/fi-tgl-y/igt@vgem_basic@setversion.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/fi-tgl-y/igt@vgem_basic@setversion.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (41 -> 41)
------------------------------

  Additional (7): fi-bsw-n3050 fi-skl-6770hq fi-glk-dsi fi-elk-e7500 fi-skl-6700k2 fi-blb-e6850 fi-skl-6600u 
  Missing    (7): fi-bdw-5557u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-cfl-8109u fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8084 -> Patchwork_16859

  CI-20190529: 20190529
  CI_DRM_8084: 36d1d55dd2ae3d50a3ff1899e576b567be7b7530 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5496: 00a8e400876f2c27f62ed7d418be6b55738a4ea6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16859: 9f74623d824db4a846d4c3bfd0c14910110e0613 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9f74623d824d drm/i915: Tweak scheduler's kick_submission()
d6fd89fdd21b drm/i915: Improve the start alignment of bonded pairs
fef8e6f63836 drm/i915/execlists: Enable timeslice on partial virtual engine dequeue

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16859/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
