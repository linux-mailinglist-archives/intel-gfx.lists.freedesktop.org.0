Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF6E175DCE
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 16:04:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20E096E478;
	Mon,  2 Mar 2020 15:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1C466E478;
 Mon,  2 Mar 2020 15:04:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA144A3C0D;
 Mon,  2 Mar 2020 15:04:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 02 Mar 2020 15:04:02 -0000
Message-ID: <158316144286.30646.17155414409972023576@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_drm=5Ffb=5Fhelper_cleanup=2E?=
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

Series: drm: drm_fb_helper cleanup.
URL   : https://patchwork.freedesktop.org/series/74140/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8043 -> Patchwork_16779
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16779/index.html

Known issues
------------

  Here are the changes found in Patchwork_16779 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16779/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][3] ([fdo#108569]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-icl-y/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16779/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bad-pitch-999:
    - fi-tgl-y:           [DMESG-WARN][5] ([CI#94] / [i915#402]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16779/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][7] ([i915#192] / [i915#193] / [i915#194]) -> [FAIL][8] ([i915#1209])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-kbl-8809g/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16779/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (48 -> 37)
------------------------------

  Additional (3): fi-glk-dsi fi-byt-n2820 fi-elk-e7500 
  Missing    (14): fi-ilk-m540 fi-bdw-5557u fi-tgl-dsi fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-cfl-8109u fi-skl-lmem fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8043 -> Patchwork_16779

  CI-20190529: 20190529
  CI_DRM_8043: 7e5119254441cdf0764418bbf3f43f6547d30a8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16779: 04d65ea0355241103891c9df04e5be19ccdf5512 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

04d65ea03552 drm/todo: Update drm_fb_helper tasks
c159742eb80c drm/fb-helper: Remove drm_fb_helper add, add_all and remove connector functions
8a9bc6fce8b9 drm/bridge: remove unused variable warning in tc358764_detach
93f41559c3b8 drm/nouveau: Fix unused variable warning
603f81467e6f drm: Remove drm_fb_helper add, add all and remove connector calls
e5c6aa01171c drm/i915/display: Remove drm_fb_helper_{add, remove}_one_connector calls
af557abd14c0 drm/amdgpu: Remove drm_fb_helper_{add, remove}_one_connector calls
175d46a47660 drm/radeon: remove radeon_fb_{add, remove}_connector functions
b1b805dc68b7 drm: Remove unused arg from drm_fb_helper_init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16779/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
