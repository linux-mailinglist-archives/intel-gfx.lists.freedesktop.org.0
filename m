Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 187B01B06A0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 12:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E22D6E500;
	Mon, 20 Apr 2020 10:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DE566E500;
 Mon, 20 Apr 2020 10:30:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C243A0BA8;
 Mon, 20 Apr 2020 10:30:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Mon, 20 Apr 2020 10:30:34 -0000
Message-ID: <158737863404.29875.6807579313766197121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420094746.20409-1-karthik.b.s@intel.com>
In-Reply-To: <20200420094746.20409-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQXN5?=
 =?utf-8?q?nchronous_flip_implementation_for_i915_=28rev2=29?=
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

Series: Asynchronous flip implementation for i915 (rev2)
URL   : https://patchwork.freedesktop.org/series/74386/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8327 -> Patchwork_17378
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/index.html

Known issues
------------

  Here are the changes found in Patchwork_17378 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-skl-6770hq:      [PASS][1] -> [SKIP][2] ([fdo#109271]) +20 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-skl-6770hq/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/fi-skl-6770hq/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-dsi:         [FAIL][3] ([i915#1569]) -> [FAIL][4] ([i915#1569] / [i915#1750])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-icl-dsi/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/fi-icl-dsi/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][5] ([i915#1569] / [k.org#202973]) -> [FAIL][6] ([i915#1569] / [i915#1750] / [k.org#202973])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/fi-icl-u2/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/fi-icl-u2/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#1750]: https://gitlab.freedesktop.org/drm/intel/issues/1750
  [k.org#202973]: https://bugzilla.kernel.org/show_bug.cgi?id=202973


Participating hosts (49 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bdw-samus fi-byt-clapper fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8327 -> Patchwork_17378

  CI-20190529: 20190529
  CI_DRM_8327: 17e0a63ab93b19ea2bfccd9a0425c93e52a65246 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17378: c2228f5dc3a5f5f256a9d3a429297ad69602b056 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c2228f5dc3a5 drm/i915: Do not call drm_crtc_arm_vblank_event in async flips
bf1d60193151 drm/i915: Add checks specific to async flips
65949de8f695 drm/i915: Make commit call blocking in case of async flips
5c51d5526531 drm/i915: Enable async flips in i915
3c944ffc2524 drm/i915: Add support for async flips in I915
ae7aa012537f drm/i915: Add enable/disable flip done and flip done handler

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
