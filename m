Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5462D1AB0E6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 21:02:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFFF76EA75;
	Wed, 15 Apr 2020 19:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E1306EA74;
 Wed, 15 Apr 2020 19:02:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08A81A47E2;
 Wed, 15 Apr 2020 19:02:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Apr 2020 19:02:28 -0000
Message-ID: <158697734800.21014.6819022922541404181@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415170318.16771-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415170318.16771-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/selftests=3A_Exercise?=
 =?utf-8?q?_basic_RPS_interrupt_generation?=
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

Series: series starting with [CI,1/2] drm/i915/selftests: Exercise basic RPS interrupt generation
URL   : https://patchwork.freedesktop.org/series/75983/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8302 -> Patchwork_17314
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/index.html

Known issues
------------

  Here are the changes found in Patchwork_17314 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_contexts:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#1726])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [PASS][3] -> [DMESG-FAIL][4] ([i915#1725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#1580])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/fi-icl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][7] ([i915#62] / [i915#95]) -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#1725]: https://gitlab.freedesktop.org/drm/intel/issues/1725
  [i915#1726]: https://gitlab.freedesktop.org/drm/intel/issues/1726
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (52 -> 45)
------------------------------

  Missing    (7): fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8302 -> Patchwork_17314

  CI-20190529: 20190529
  CI_DRM_8302: e022648f1633f24b4ec326805f1de22209826519 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5591: f57b7fdbe8d04ce3edf0433a03c7d9d5c3d96680 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17314: 8f0a2624ce986e0756ec6cf5148ca50c29b2c14f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8f0a2624ce98 drm/i915/gt: Update PMINTRMSK holding fw
fbb035e1d2f5 drm/i915/selftests: Exercise basic RPS interrupt generation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17314/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
