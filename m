Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0A1181984
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 14:21:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B520489D5E;
	Wed, 11 Mar 2020 13:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 39578891F8;
 Wed, 11 Mar 2020 13:21:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 308DBA47DF;
 Wed, 11 Mar 2020 13:21:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 13:21:02 -0000
Message-ID: <158393286219.13950.1771560158231606432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311092044.16353-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311092044.16353-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Extend_i915=5Frequest=5Fawait=5Factive_to_use_all_time?=
 =?utf-8?q?lines?=
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

Series: drm/i915: Extend i915_request_await_active to use all timelines
URL   : https://patchwork.freedesktop.org/series/74573/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8117 -> Patchwork_16923
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16923/index.html

Known issues
------------

  Here are the changes found in Patchwork_16923 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16923/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@execlists:
    - fi-cml-u2:          [PASS][3] -> [INCOMPLETE][4] ([i915#283])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16923/fi-cml-u2/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [INCOMPLETE][5] ([fdo#103927]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16923/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][7] ([i915#877]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16923/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [DMESG-WARN][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16923/fi-apl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#111407]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16923/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 41)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (9): fi-ilk-m540 fi-tgl-dsi fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-byt-clapper fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8117 -> Patchwork_16923

  CI-20190529: 20190529
  CI_DRM_8117: 39a97a79462bf47caf47d8e56e1027dcedb92bb9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16923: d279cd7c16e8eca13d07a3dbf47ff6297cbb7c4e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d279cd7c16e8 drm/i915: Extend i915_request_await_active to use all timelines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16923/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
