Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FC715DB33
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 16:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C927A6F969;
	Fri, 14 Feb 2020 15:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4D116F964;
 Fri, 14 Feb 2020 15:40:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93F29A47EB;
 Fri, 14 Feb 2020 15:40:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 14 Feb 2020 15:40:31 -0000
Message-ID: <158169483157.9932.6978242445022856282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214120659.3888735-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200214120659.3888735-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Check_for_the_error_interrupt_before_we_wait?=
 =?utf-8?q?!?=
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

Series: drm/i915/selftests: Check for the error interrupt before we wait!
URL   : https://patchwork.freedesktop.org/series/73461/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7939 -> Patchwork_16571
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16571/index.html

Known issues
------------

  Here are the changes found in Patchwork_16571 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16571/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][3] ([fdo#108569]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-icl-y/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16571/fi-icl-y/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][5] ([i915#579]) -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7939/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16571/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694


Participating hosts (44 -> 40)
------------------------------

  Additional (5): fi-hsw-peppy fi-glk-dsi fi-ivb-3770 fi-bsw-kefka fi-kbl-r 
  Missing    (9): fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7939 -> Patchwork_16571

  CI-20190529: 20190529
  CI_DRM_7939: cceb0c30a34af6ca96e35211ecdc5ca198d44e7e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5441: 534ca091fe4ffed916752165bc5becd7ff56cd84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16571: 6dc22822beec6cf337e7c3968089dd4ec69cc980 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6dc22822beec drm/i915/selftests: Check for the error interrupt before we wait!

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16571/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
