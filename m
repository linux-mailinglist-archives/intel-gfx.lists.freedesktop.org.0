Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E151C0DE2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 07:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 954666E216;
	Fri,  1 May 2020 05:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3ED06E216;
 Fri,  1 May 2020 05:47:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDE26A011B;
 Fri,  1 May 2020 05:47:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 01 May 2020 05:47:25 -0000
Message-ID: <158831204587.18947.14307449294197112888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
In-Reply-To: <20200430230951.2508-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVi?=
 =?utf-8?q?ased_Big_Joiner_patch_series_for_8K_2p1p_=28rev2=29?=
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

Series: Rebased Big Joiner patch series for 8K 2p1p (rev2)
URL   : https://patchwork.freedesktop.org/series/76791/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8404 -> Patchwork_17536
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/index.html

Known issues
------------

  Here are the changes found in Patchwork_17536 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@objects:
    - fi-bwr-2160:        [INCOMPLETE][1] ([i915#489]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8404/fi-bwr-2160/igt@i915_selftest@live@objects.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/fi-bwr-2160/igt@i915_selftest@live@objects.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8404 -> Patchwork_17536

  CI-20190529: 20190529
  CI_DRM_8404: ede1e290e2df393adaa971c1b79e83c9f754cbd6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5621: 87890a8dbf7e1c5230557a0249175a7543f32d00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17536: 1f5c8c3282266fa3d03c9449aea618730f09f30a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1f5c8c328226 drm/i915: Add debugfs dumping for bigjoiner, v3.
1a0ee38d7bf2 drm/i915: Add intel_update_bigjoiner handling.
6a6198bab3ce drm/i915: Add bigjoiner aware plane clipping checks
2faef9e70606 drm/i915: Link planes in a bigjoiner configuration, v3.
3196af092bbf drm/i915: Make hardware readout work on i915.
932c60670d5e drm/i915: Enable big joiner support in enable and disable sequences.
f0f07b9e56c8 drm/i915: Try to make bigjoiner work in atomic check
d739aa6e3760 drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
54437393256f drm/i915: Add hw.pipe_mode to allow bigjoiner pipe/transcoder split
ed5182840902 drm/i915: Remove hw.mode
7cc206446898 HAX to make DSC work on the icelake test system

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17536/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
