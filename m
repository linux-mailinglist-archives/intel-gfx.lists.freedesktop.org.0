Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7391E57F9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 08:56:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D67AE89A91;
	Thu, 28 May 2020 06:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8ED0689A91;
 Thu, 28 May 2020 06:56:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8756DA00C7;
 Thu, 28 May 2020 06:56:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Thu, 28 May 2020 06:56:44 -0000
Message-ID: <159064900452.685.9726259399924630041@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528053931.29282-1-karthik.b.s@intel.com>
In-Reply-To: <20200528053931.29282-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQXN5?=
 =?utf-8?q?nchronous_flip_implementation_for_i915_=28rev3=29?=
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

Series: Asynchronous flip implementation for i915 (rev3)
URL   : https://patchwork.freedesktop.org/series/74386/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8544 -> Patchwork_17799
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17799/index.html

Known issues
------------

  Here are the changes found in Patchwork_17799 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-icl-u2:          [PASS][1] -> [DMESG-FAIL][2] ([i915#765])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/fi-icl-u2/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17799/fi-icl-u2/igt@i915_selftest@live@active.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [FAIL][3] ([i915#262]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17799/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8544 -> Patchwork_17799

  CI-20190529: 20190529
  CI_DRM_8544: c6c0a18e985d7a3fd4451e0e786e6522371ea9ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17799: f13f002114a6588ceb737ef377b3a4cfaaf373bb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f13f002114a6 drm/i915: Enable async flips in i915
35ffa8ae0d13 drm/i915: Do not call drm_crtc_arm_vblank_event in async flips
85045ff08f4f drm/i915: Add checks specific to async flips
54febd5358c0 drm/i915: Add support for async flips in I915
239c9f562cbf drm/i915: Add enable/disable flip done and flip done handler

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17799/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
