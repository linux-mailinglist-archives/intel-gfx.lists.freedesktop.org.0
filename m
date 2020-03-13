Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3FA183E90
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 02:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF0106EB66;
	Fri, 13 Mar 2020 01:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFC236EB66;
 Fri, 13 Mar 2020 01:13:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7F56A00FD;
 Fri, 13 Mar 2020 01:13:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 13 Mar 2020 01:13:43 -0000
Message-ID: <158406202394.30353.7927529733497412131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_add_OA_interrupt_support_=28rev6=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev6)
URL   : https://patchwork.freedesktop.org/series/54280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8131 -> Patchwork_16958
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/index.html

Known issues
------------

  Here are the changes found in Patchwork_16958 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2] ([i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4] ([fdo#112259] / [i915#1430] / [i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-glk-dsi:         [INCOMPLETE][5] ([i915#1430] / [i915#58] / [i915#656] / [k.org#198133]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [INCOMPLETE][7] ([fdo#112259] / [i915#1430] / [i915#656]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/fi-kbl-guc/igt@i915_selftest@live@execlists.html

  
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (47 -> 42)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (6): fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8131 -> Patchwork_16958

  CI-20190529: 20190529
  CI_DRM_8131: 5137b6daebf1eac30b307c37fe371fee1db7d6cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16958: 5c91c06ca2f8a42a0760f3f30ac014fdeede74cc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5c91c06ca2f8 drm/i915/perf: add new open param to configure polling of OA buffer
77c909d6ff76 drm/i915/perf: only append status when data is available
0a0d3681c903 drm/i915/perf: move pollin setup to non hw specific code
cf4dc4c5b6bb drm/i915/perf: rework aging tail workaround

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
