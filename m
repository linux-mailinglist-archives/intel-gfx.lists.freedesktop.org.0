Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB081805A1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 18:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38BED6E8BF;
	Tue, 10 Mar 2020 17:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E7256E8BF;
 Tue, 10 Mar 2020 17:56:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36EBEA00FD;
 Tue, 10 Mar 2020 17:56:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Tue, 10 Mar 2020 17:56:51 -0000
Message-ID: <158386301119.1150.3074335548719714850@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1583766715.git.jani.nikula@intel.com>
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_conversion_to_drm=5Fdevice_based_logging_macro?=
 =?utf-8?q?s_=28rev6=29?=
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

Series: drm/i915/display: conversion to drm_device based logging macros (rev6)
URL   : https://patchwork.freedesktop.org/series/72760/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8106 -> Patchwork_16901
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16901/index.html

Known issues
------------

  Here are the changes found in Patchwork_16901 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_flink_basic@bad-open:
    - fi-tgl-y:           [DMESG-WARN][1] ([CI#94] / [i915#402]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-y/igt@gem_flink_basic@bad-open.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16901/fi-tgl-y/igt@gem_flink_basic@bad-open.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][3] ([i915#1209]) -> [FAIL][4] ([i915#192] / [i915#193] / [i915#194])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-8809g/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16901/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Additional (5): fi-bdw-5557u fi-kbl-7500u fi-cfl-8109u fi-skl-6600u fi-snb-2600 
  Missing    (9): fi-kbl-7560u fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8106 -> Patchwork_16901

  CI-20190529: 20190529
  CI_DRM_8106: 5b0076e8066ea8218e7857ee1aa28b0670acde94 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16901: 4d3a4d7c1f6498c4c369ab68de5be7b0270ef3dc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4d3a4d7c1f64 drm/i915/overlay: convert to drm_device based logging.
1eca7c5e271a drm/i915/lvds: convert to drm_device based logging macros.
62a278bf95cb drm/i915/lpe_audio: convert to drm_device based logging macros.
0538804f90d2 drm/i915/hotplug: convert to drm_device based logging.
8e4437f36baf drm/i915/hdcp: convert to struct drm_device based logging.
d013e210c934 drm/i915/gmbus: convert to drm_device based logging,
33f35a10a5da drm/i915/fifo_underrun: convert to drm_device based logging.
6c4d85ced842 drm/i915/fbdev: convert to drm_device based logging.
ffc752ecce02 drm/i915/fbc: convert to drm_device based logging macros.
9af612966bd6 drm/i915/dsb: convert to drm_device based logging macros.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16901/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
