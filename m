Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 843AE1B4C8D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 20:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB636E124;
	Wed, 22 Apr 2020 18:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 531FF6E082;
 Wed, 22 Apr 2020 18:17:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C40AA008A;
 Wed, 22 Apr 2020 18:17:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Apr 2020 18:17:43 -0000
Message-ID: <158757946328.5178.2921020980720995301@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422001703.1697-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200422001703.1697-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gt=3A_Prefer_soft-rc6_over?=
 =?utf-8?q?_RPS_DOWN=5FTIMEOUT_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915/gt: Prefer soft-rc6 over RPS DOWN_TIMEOUT (rev2)
URL   : https://patchwork.freedesktop.org/series/76283/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8350 -> Patchwork_17425
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17425 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17425, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17425/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17425:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-bsw-kefka/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17425/fi-bsw-kefka/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_pm:
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17425/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17425 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][5] ([i915#62]) -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17425/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (48 -> 40)
------------------------------

  Additional (1): fi-icl-dsi 
  Missing    (9): fi-cml-u2 fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8350 -> Patchwork_17425

  CI-20190529: 20190529
  CI_DRM_8350: 018bab6d1c4ac37bff9306384383fab59750e140 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5606: 678afb3954bec6227c8762756a0ad6d9946d49b2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17425: 3db1ad89ad1ad4dc3c60bf093f0db7143f37416b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3db1ad89ad1a drm/i915/gt: Use the RPM config register to determine clk frequencies
e142f7f36870 drm/i915/gt: Trace RPS events
110e7737c6ac drm/i915/gt: Prefer soft-rc6 over RPS DOWN_TIMEOUT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17425/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
