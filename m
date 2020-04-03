Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B84F919E10F
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 00:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E9A6ECBD;
	Fri,  3 Apr 2020 22:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C81F66ECBD;
 Fri,  3 Apr 2020 22:29:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C02EDA011B;
 Fri,  3 Apr 2020 22:29:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 03 Apr 2020 22:29:28 -0000
Message-ID: <158595296875.13349.14991764150474779793@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Put_drm=5Fdisplay=5Fmode_on_diet_=28rev2=29?=
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

Series: drm: Put drm_display_mode on diet (rev2)
URL   : https://patchwork.freedesktop.org/series/73674/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8252 -> Patchwork_17208
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17208 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17208, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17208/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17208:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17208/fi-ilk-650/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17208/fi-snb-2520m/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17208/fi-snb-2600/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17208/fi-ivb-3770/igt@runner@aborted.html

  


Participating hosts (51 -> 42)
------------------------------

  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8252 -> Patchwork_17208

  CI-20190529: 20190529
  CI_DRM_8252: 3690abb8ed49d9a066f80de39e4e75792c86ac76 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5563: 7ab7807727262b7ed7e12197b78e867287a17ef6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17208: ace765c38dc55b9864e8b9478cbca5f3bf10cc57 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ace765c38dc5 drm: Replace mode->export_head with a boolean
5b136e94b7a4 drm: Nuke mode->private_flags
6e809802b439 drm/gma500: Stop using mode->private_flags
6c2380cbc283 drm/i915: Replace I915_MODE_FLAG_INHERITED with a boolean
103e75194d66 drm/i915: Stop using mode->private_flags
9122853a9574 drm/mcde: Use mode->clock instead of reverse calculating it from the vrefresh
d3368fb30d7c drm: pahole struct drm_display_mode
00ab805b0fb4 drm: Shrink mode->private_flags
8f96019c76dc drm: Flatten drm_mode_vrefresh()
d6bf22e2b0a3 drm: Shrink drm_display_mode timings
34c66e3566bb drm: Make mode->flags u32
4f5ba370e14f drm: Shrink mode->type to u8
f44cce4a1d9f drm: Shrink {width,height}_mm to u16
4b303d777e7b drm/msm/dpu: Stop copying around mode->private_flags
325b0ad221fe drm: Nuke mode->vrefresh
bb6f7d766981 drm/i915: Introduce some local intel_dp variables
fa630bba9e2b drm: Nuke mode->hsync

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17208/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
