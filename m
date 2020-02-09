Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0C5156AD7
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 15:21:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538446E817;
	Sun,  9 Feb 2020 14:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 102716E804;
 Sun,  9 Feb 2020 14:21:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB674A00C7;
 Sun,  9 Feb 2020 14:21:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 09 Feb 2020 14:21:15 -0000
Message-ID: <158125807587.18128.5138800502649607168@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200209131922.180287-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200209131922.180287-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_drm/i915/execlists=3A_Fix_hold/unho?=
 =?utf-8?q?ld_recursion?=
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

Series: series starting with [1/8] drm/i915/execlists: Fix hold/unhold recursion
URL   : https://patchwork.freedesktop.org/series/73213/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7893 -> Patchwork_16500
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16500/index.html

Known issues
------------

  Here are the changes found in Patchwork_16500 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7893/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16500/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][3] ([i915#553] / [i915#725]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7893/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16500/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        [DMESG-FAIL][5] ([i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7893/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16500/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][7] ([fdo#108569]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7893/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16500/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][9] ([fdo#106070] / [i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7893/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16500/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [SKIP][11] ([fdo#109271]) -> [PASS][12] +27 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7893/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16500/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (37 -> 40)
------------------------------

  Additional (9): fi-byt-j1900 fi-hsw-peppy fi-glk-dsi fi-gdg-551 fi-bsw-kefka fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-kbl-r 
  Missing    (6): fi-kbl-7500u fi-ctg-p8600 fi-icl-dsi fi-icl-guc fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7893 -> Patchwork_16500

  CI-20190529: 20190529
  CI_DRM_7893: 0d2e3557edaad8a29a76c056207b312fcd761ac9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5428: ff86abde4a54c15dfe7ad70e5a8c75fd41757683 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16500: 148f14e2d25f997977e545280f426230283729d0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

148f14e2d25f drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
821d98111deb drm/i915: Disable use of hwsp_cacheline for kernel_context
b9a3a68f8194 drm/i915/gem: Don't leak non-persistent requests on changing engines
e1d68a2e4980 drm/i915/selftests: Relax timeout for error-interrupt reset processing
7d37baa5d994 drm/i915/selftests: Remove erroneous intel_engine_pm_put
b64ee83d5fb8 drm/i915/selftests: Exercise timeslice rewinding
ea73f5349664 drm/i915/execlists: Ignore tracek for nop process_csb
f109a5e034a5 drm/i915/execlists: Fix hold/unhold recursion

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16500/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
