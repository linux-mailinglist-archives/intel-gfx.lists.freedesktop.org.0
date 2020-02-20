Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6661656AB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 06:22:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACDBE6E0F4;
	Thu, 20 Feb 2020 05:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46AE46E0F3;
 Thu, 20 Feb 2020 05:22:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36FF1A00C7;
 Thu, 20 Feb 2020 05:22:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Feb 2020 05:22:39 -0000
Message-ID: <158217615919.17409.10863698368917042441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220014325.1527804-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200220014325.1527804-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Add_mechanism_to_submit?=
 =?utf-8?q?_a_context_WA_on_ring_submission?=
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

Series: series starting with [1/4] drm/i915: Add mechanism to submit a context WA on ring submission
URL   : https://patchwork.freedesktop.org/series/73688/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7970 -> Patchwork_16640
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16640/index.html

Known issues
------------

  Here are the changes found in Patchwork_16640 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16640/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][3] -> [DMESG-WARN][4] ([i915#585])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16640/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - {fi-tgl-dsi}:       [INCOMPLETE][5] ([i915#529] / [i915#647]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-tgl-dsi/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16640/fi-tgl-dsi/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [TIMEOUT][7] ([fdo#112271]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16640/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-icl-u3:          [SKIP][9] ([fdo#109315] / [i915#585]) -> [SKIP][10] ([fdo#109315])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16640/fi-icl-u3/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@runner@aborted:
    - fi-byt-n2820:       [FAIL][11] ([i915#999]) -> [FAIL][12] ([i915#816])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-byt-n2820/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16640/fi-byt-n2820/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (48 -> 39)
------------------------------

  Additional (3): fi-gdg-551 fi-skl-6600u fi-snb-2600 
  Missing    (12): fi-ilk-m540 fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-hsw-peppy fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-bsw-kefka fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7970 -> Patchwork_16640

  CI-20190529: 20190529
  CI_DRM_7970: 6b8b833350142345f4b1a6af9486db7d316a7ff1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5452: c05dc6cd816feb1cc518ce777ab3fd6c81893113 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16640: 2e93e87685a1aa49a5611a2fe26941d9d456a302 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e93e87685a1 tidy
986254d23dbb fix
c85cf8225fe4 drm/i915/gen7: Clear all EU/L3 residual contexts
6fa7e7f3fc3a drm/i915: Add mechanism to submit a context WA on ring submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16640/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
