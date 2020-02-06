Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F837154C82
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 20:58:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2846E32D;
	Thu,  6 Feb 2020 19:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 167BE6E2F3;
 Thu,  6 Feb 2020 19:58:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E2C8A0119;
 Thu,  6 Feb 2020 19:58:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 19:58:39 -0000
Message-ID: <158101911902.15033.17682500405360143891@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206181121.2596083-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206181121.2596083-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Protect_defer=5Frequest=28=29_from_new_waiters_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/gt: Protect defer_request() from new waiters (rev2)
URL   : https://patchwork.freedesktop.org/series/73109/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7877 -> Patchwork_16467
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16467/index.html

Known issues
------------

  Here are the changes found in Patchwork_16467 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-icl-y/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16467/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][3] -> [DMESG-WARN][4] ([i915#44])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16467/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6770hq:      [INCOMPLETE][5] ([i915#151]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16467/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#553] / [i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16467/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111096] / [i915#323]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7877/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16467/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (48 -> 45)
------------------------------

  Additional (6): fi-bsw-n3050 fi-glk-dsi fi-ivb-3770 fi-kbl-7560u fi-byt-n2820 fi-skl-6700k2 
  Missing    (9): fi-ilk-m540 fi-tgl-dsi fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-gdg-551 fi-elk-e7500 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7877 -> Patchwork_16467

  CI-20190529: 20190529
  CI_DRM_7877: 360145994da1f2f5a44e2241a08e63536437bc70 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5423: 02ef996e76b3bae1c62d6a1298462aba0b7ac51a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16467: a8aaf594d522c2d9306b0524f97d775dd497ff76 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a8aaf594d522 drm/i915/gt: Protect defer_request() from new waiters

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16467/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
