Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0DF1C70C3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 14:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B43E6E87A;
	Wed,  6 May 2020 12:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F5E26E87A;
 Wed,  6 May 2020 12:49:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58776A0091;
 Wed,  6 May 2020 12:49:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 06 May 2020 12:49:23 -0000
Message-ID: <158876936333.11897.18435020079905414671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200506112328.16562-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Plumb_crtc_state_to_link_training_code_=28rev2=29?=
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

Series: drm/i915: Plumb crtc state to link training code (rev2)
URL   : https://patchwork.freedesktop.org/series/76993/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8433 -> Patchwork_17588
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17588/index.html

Known issues
------------

  Here are the changes found in Patchwork_17588 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@reset:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8433/fi-bwr-2160/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17588/fi-bwr-2160/igt@i915_selftest@live@reset.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8433 -> Patchwork_17588

  CI-20190529: 20190529
  CI_DRM_8433: db68fed086f2ddcdc30e0d9ca5faaba5e55d0d01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5633: c8c2e5ed5cd8e4b7a69a903f3f1653612086abcc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17588: 8ec6f4b1e7f06bdfd404ecfdf54337e9f645261f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8ec6f4b1e7f0 drm/i915: Eliminate intel_dp.regs.dp_tp_{ctl, status}
fa64a8214369 drm/i915: Plumb crtc_state to link training
2cb6124763bb drm/i915: Replace some hand rolled max()s
35e76930c74d drm/i915: Fix DP_TRAIN_MAX_{PRE_EMPHASIS, SWING}_REACHED handling
1e68b2953b0e drm/i915: Reverse preemph vs. voltage swing preference
3949c1110159 drm/i915: Add {preemph, voltage}_max() vfuncs
d80fba24e659 drm/i915: Fix ivb cpu edp vswing
18c9808e0356 drm/i915: Fix ibx max vswing/preemph
d43ebfb8437f drm/i915: Fix cpt/ppt max pre-emphasis

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17588/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
