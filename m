Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC8B15FB97
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 01:42:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCAED6E0D7;
	Sat, 15 Feb 2020 00:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF87288130;
 Sat, 15 Feb 2020 00:42:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC442A00C7;
 Sat, 15 Feb 2020 00:42:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 15 Feb 2020 00:42:54 -0000
Message-ID: <158172737481.4011.17114891631820029257@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214234825.4066835-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200214234825.4066835-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Declare_when_we_enabled_timeslicing?=
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

Series: drm/i915/gt: Declare when we enabled timeslicing
URL   : https://patchwork.freedesktop.org/series/73490/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7943 -> Patchwork_16580
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/index.html

Known issues
------------

  Here are the changes found in Patchwork_16580 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2] ([i915#877])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][3] ([i915#45]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [INCOMPLETE][5] ([i915#45]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@basic:
    - {fi-ehl-1}:         [FAIL][7] ([i915#996]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-ehl-1/igt@gem_exec_parallel@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/fi-ehl-1/igt@gem_exec_parallel@basic.html

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [DMESG-FAIL][9] ([i915#765]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/fi-icl-y/igt@i915_selftest@live_active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/fi-icl-y/igt@i915_selftest@live_active.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#996]: https://gitlab.freedesktop.org/drm/intel/issues/996


Participating hosts (41 -> 42)
------------------------------

  Additional (8): fi-kbl-soraka fi-hsw-peppy fi-ivb-3770 fi-cfl-8109u fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-skl-6600u 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bwr-2160 fi-ctg-p8600 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7943 -> Patchwork_16580

  CI-20190529: 20190529
  CI_DRM_7943: 865945b076689b2e99bc1c52fad95cec05cff9ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5442: 3f6080996885b997685f08ecb8b416b2dc485290 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16580: 6b4d4ba4c21b25d04e37a9aa0784dd8e8e32073a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6b4d4ba4c21b drm/i915/gt: Declare when we enabled timeslicing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
