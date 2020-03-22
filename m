Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A1C18EB58
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 19:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50836E0E8;
	Sun, 22 Mar 2020 18:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 978DF6E0E6;
 Sun, 22 Mar 2020 18:05:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FF86A47E2;
 Sun, 22 Mar 2020 18:05:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Mar 2020 18:05:43 -0000
Message-ID: <158490034349.23728.3757793854453024546@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200322172817.9010-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200322172817.9010-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Avoid_live-lock_with_i915=5Fvma=5Fparked=28=29?=
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

Series: drm/i915: Avoid live-lock with i915_vma_parked()
URL   : https://patchwork.freedesktop.org/series/74949/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8170 -> Patchwork_17047
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17047 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17047, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17047/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17047:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@contexts:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-kbl-soraka/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17047/fi-kbl-soraka/igt@gem_exec_parallel@contexts.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17047/fi-kbl-soraka/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17047 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][4] -> [FAIL][5] ([CI#94])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17047/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][6] ([i915#656]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-icl-y/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17047/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [INCOMPLETE][8] ([i915#283] / [i915#656]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17047/fi-cml-u2/igt@i915_selftest@live@execlists.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (42 -> 43)
------------------------------

  Additional (6): fi-kbl-7560u fi-bsw-n3050 fi-hsw-peppy fi-skl-lmem fi-blb-e6850 fi-skl-6600u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8170 -> Patchwork_17047

  CI-20190529: 20190529
  CI_DRM_8170: e464286ae9b7c18b0fab5fc638dff07c8afc5999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17047: 4d14a8b7df4ffe6d5cff59edd56d7f46afbf4410 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4d14a8b7df4f drm/i915: Avoid live-lock with i915_vma_parked()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17047/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
