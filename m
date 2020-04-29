Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4121BDB56
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 14:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C055A6E45D;
	Wed, 29 Apr 2020 12:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D12B56E45D;
 Wed, 29 Apr 2020 12:04:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9779A47E6;
 Wed, 29 Apr 2020 12:04:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 29 Apr 2020 12:04:23 -0000
Message-ID: <158816186379.6698.16069523052172879767@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Put_drm=5Fdisplay=5Fmode_on_diet_=28rev6=29?=
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

Series: drm: Put drm_display_mode on diet (rev6)
URL   : https://patchwork.freedesktop.org/series/73674/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8390 -> Patchwork_17509
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/index.html

Known issues
------------

  Here are the changes found in Patchwork_17509 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#1580])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8390/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8390 -> Patchwork_17509

  CI-20190529: 20190529
  CI_DRM_8390: 89473e10666c78c4df9e92c9caf03d7311c291cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17509: db0286c4611d0fd85cb14c8d4d8be259f1b8abb5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

db0286c4611d drm: Replace mode->export_head with a boolean
d4b55166f89f drm: Nuke mode->private_flags
7ef686ec8216 drm/gma500: Stop using mode->private_flags
32edf0d94942 drm/i915: Replace I915_MODE_FLAG_INHERITED with a boolean
d2feee34d331 drm/i915: Stop using mode->private_flags
cf2c5f9cc994 drm/mcde: Use mode->clock instead of reverse calculating it from the vrefresh
1bd439876388 drm: pahole struct drm_display_mode
1b1cbd21b272 drm: Flatten drm_mode_vrefresh()
1c06ebb25df5 drm: Shrink drm_display_mode timings
9b86ee3bbf40 drm: Make mode->flags u32
85fc97e7e8bd drm: Shrink mode->type to u8
191e00221dec drm: Shrink {width,height}_mm to u16
37cc5204d554 drm/msm/dpu: Stop copying around mode->private_flags
fb85f7555a02 drm: Nuke mode->vrefresh
be723dfd05d8 drm/i915: Introduce some local intel_dp variables
12add0e7c35a drm: Nuke mode->hsync

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17509/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
