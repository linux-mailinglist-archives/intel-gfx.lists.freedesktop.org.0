Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C18B163991
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 02:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDAA46EAF7;
	Wed, 19 Feb 2020 01:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40B9A6EAF6;
 Wed, 19 Feb 2020 01:47:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36830A47E9;
 Wed, 19 Feb 2020 01:47:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 19 Feb 2020 01:47:14 -0000
Message-ID: <158207683419.21062.16653854999872108580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218202302.1326399-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218202302.1326399-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Protect_signaler_walk_with_RCU?=
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

Series: drm/i915/gt: Protect signaler walk with RCU
URL   : https://patchwork.freedesktop.org/series/73601/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963 -> Patchwork_16606
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/index.html

Known issues
------------

  Here are the changes found in Patchwork_16606 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u3:          [PASS][1] -> [INCOMPLETE][2] ([i915#189] / [i915#585])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-icl-u3/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-6600u:       [PASS][3] -> [TIMEOUT][4] ([fdo#111732] / [fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u3:          [PASS][5] -> [DMESG-WARN][6] ([i915#585]) +37 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][7] ([i915#694] / [i915#816]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [INCOMPLETE][9] ([i915#45]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_active:
    - fi-icl-dsi:         [DMESG-FAIL][11] ([i915#765]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-dsi/igt@i915_selftest@live_active.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-icl-dsi/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][13] ([i915#424]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [DMESG-FAIL][15] ([i915#877]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-kbl-7500u:       [DMESG-FAIL][17] ([fdo#112406]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-kbl-7500u/igt@i915_selftest@live_gt_heartbeat.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][19] ([i915#579]) -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-icl-u3:          [SKIP][21] ([fdo#109284] / [fdo#111827]) -> [SKIP][22] ([fdo#109284] / [fdo#111827] / [i915#585])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-icl-u3/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u3:          [SKIP][23] ([fdo#109285]) -> [SKIP][24] ([fdo#109285] / [i915#585])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/fi-icl-u3/igt@kms_force_connector_basic@force-load-detect.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (50 -> 39)
------------------------------

  Missing    (11): fi-kbl-soraka fi-ilk-m540 fi-tgl-dsi fi-bsw-n3050 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-bdw-samus fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16606

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16606: 9cc124f183ad53c535b952dd557c945a4006dab5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9cc124f183ad drm/i915/gt: Protect signaler walk with RCU

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16606/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
