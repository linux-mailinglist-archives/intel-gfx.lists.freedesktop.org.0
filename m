Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9181F15D72C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 13:13:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DB16F904;
	Fri, 14 Feb 2020 12:13:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2DA06F903;
 Fri, 14 Feb 2020 12:13:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99FD8A00CC;
 Fri, 14 Feb 2020 12:13:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kishore Kadiyala" <kishore.kadiyala@intel.com>
Date: Fri, 14 Feb 2020 12:13:05 -0000
Message-ID: <158168238560.9930.13417354186106976829@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214105316.16076-1-kishore.kadiyala@intel.com>
In-Reply-To: <20200214105316.16076-1-kishore.kadiyala@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_Color_encoding_YCBCR=5FBT2020?=
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

Series: Add support for Color encoding YCBCR_BT2020
URL   : https://patchwork.freedesktop.org/series/73457/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7938 -> Patchwork_16568
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/index.html

Known issues
------------

  Here are the changes found in Patchwork_16568 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-skl-6600u:       [PASS][1] -> [TIMEOUT][2] ([fdo#111732] / [fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][3] ([i915#45]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - {fi-ehl-1}:         [INCOMPLETE][5] ([i915#937]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-ehl-1/igt@gem_exec_parallel@contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/fi-ehl-1/igt@gem_exec_parallel@contexts.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][7] ([fdo#108569]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gtt:
    - fi-bxt-dsi:         [TIMEOUT][9] ([fdo#112271]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/fi-bxt-dsi/igt@i915_selftest@live_gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (52 -> 44)
------------------------------

  Missing    (8): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7938 -> Patchwork_16568

  CI-20190529: 20190529
  CI_DRM_7938: 9fda6807b50ceb40ef01b055f6428db8965e3d06 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5441: 534ca091fe4ffed916752165bc5becd7ff56cd84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16568: b4fc9ab087da4ae3bcedf2a5beab580e74273b64 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b4fc9ab087da Add support for Color encoding YCBCR_BT2020

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
