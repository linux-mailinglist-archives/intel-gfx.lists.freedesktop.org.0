Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3137F15F8B1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 22:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893066E888;
	Fri, 14 Feb 2020 21:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E93E6E87F;
 Fri, 14 Feb 2020 21:24:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18134A47EB;
 Fri, 14 Feb 2020 21:24:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Fri, 14 Feb 2020 21:24:04 -0000
Message-ID: <158171544409.9931.12264267672769627750@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214175646.25532-1-kai.heng.feng@canonical.com>
In-Reply-To: <20200214175646.25532-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Init_lspcon_after_HPD_in_intel=5Fdp=5Fdetect=28=29?=
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

Series: drm/i915: Init lspcon after HPD in intel_dp_detect()
URL   : https://patchwork.freedesktop.org/series/73480/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7942 -> Patchwork_16576
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16576/index.html

Known issues
------------

  Here are the changes found in Patchwork_16576 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [FAIL][1] ([i915#694]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7942/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16576/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][3] ([fdo#112271] / [i915#1084]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7942/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16576/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][5] ([i915#424]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7942/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16576/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (47 -> 41)
------------------------------

  Additional (4): fi-bsw-kefka fi-blb-e6850 fi-cfl-8109u fi-ilk-650 
  Missing    (10): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-icl-u3 fi-skl-lmem fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7942 -> Patchwork_16576

  CI-20190529: 20190529
  CI_DRM_7942: f4805f5a516d0a107438ff0f236c9f4187434819 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5442: 3f6080996885b997685f08ecb8b416b2dc485290 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16576: b2ae75309a73a42403618e73da934af0caf97eec @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b2ae75309a73 drm/i915: Init lspcon after HPD in intel_dp_detect()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16576/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
