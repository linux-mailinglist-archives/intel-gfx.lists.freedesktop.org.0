Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C6615BE7B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 13:34:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFAA46E2CA;
	Thu, 13 Feb 2020 12:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C90F46E277;
 Thu, 13 Feb 2020 12:34:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C092CA011C;
 Thu, 13 Feb 2020 12:34:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 13 Feb 2020 12:34:01 -0000
Message-ID: <158159724175.17962.18178388540515096347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213081217.3107410-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200213081217.3107410-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Suppress_warnings_for_unused_debugging_locals?=
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

Series: drm/i915/gt: Suppress warnings for unused debugging locals
URL   : https://patchwork.freedesktop.org/series/73394/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7930 -> Patchwork_16552
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16552/index.html

Known issues
------------

  Here are the changes found in Patchwork_16552 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2] ([CI#80] / [fdo#106070] / [i915#424])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7930/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16552/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [TIMEOUT][3] ([fdo#112271] / [i915#1084]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7930/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16552/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][5] ([i915#877]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7930/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16552/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_contexts:
    - fi-bwr-2160:        [FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7930/fi-bwr-2160/igt@i915_selftest@live_gt_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16552/fi-bwr-2160/igt@i915_selftest@live_gt_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (46 -> 37)
------------------------------

  Additional (5): fi-kbl-7500u fi-cfl-8109u fi-bsw-kefka fi-skl-lmem fi-blb-e6850 
  Missing    (14): fi-ilk-m540 fi-bdw-5557u fi-bsw-n3050 fi-skl-6770hq fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ilk-650 fi-ctg-p8600 fi-ivb-3770 fi-byt-n2820 fi-byt-clapper fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7930 -> Patchwork_16552

  CI-20190529: 20190529
  CI_DRM_7930: efe748cc918711e2a9b9bf1a63a6c7b2747a4eb3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5439: ed1f7d96d4d5d4565bcd3adb3a23b2002a25419e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16552: 5abf540bd4d8d3325133a87638481dc73d83a603 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5abf540bd4d8 drm/i915/gt: Suppress warnings for unused debugging locals

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16552/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
