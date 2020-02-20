Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E007516592B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 09:27:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61D26ECED;
	Thu, 20 Feb 2020 08:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3D026ECEC;
 Thu, 20 Feb 2020 08:27:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3DF6A47E4;
 Thu, 20 Feb 2020 08:27:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Feb 2020 08:27:29 -0000
Message-ID: <158218724970.17407.5318006610497850844@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220075025.1539375-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200220075025.1539375-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/gt=3A_Protect_signaler_wal?=
 =?utf-8?q?k_with_RCU?=
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

Series: series starting with [1/6] drm/i915/gt: Protect signaler walk with RCU
URL   : https://patchwork.freedesktop.org/series/73691/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7970 -> Patchwork_16642
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16642 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16642, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16642:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/fi-byt-j1900/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16642 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic-files:
    - fi-byt-j1900:       [PASS][2] -> [INCOMPLETE][3] ([i915#45])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-byt-j1900/igt@gem_ctx_create@basic-files.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/fi-byt-j1900/igt@gem_ctx_create@basic-files.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][4] -> [DMESG-WARN][5] ([i915#585])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bwr-2160:        [PASS][6] -> [FAIL][7] ([i915#34])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [TIMEOUT][8] ([fdo#112271] / [i915#1084]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_execlists:
    - {fi-tgl-dsi}:       [INCOMPLETE][10] ([i915#529] / [i915#647]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-tgl-dsi/igt@i915_selftest@live_execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/fi-tgl-dsi/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [TIMEOUT][12] ([fdo#112271]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647


Participating hosts (48 -> 40)
------------------------------

  Additional (3): fi-gdg-551 fi-bsw-nick fi-snb-2600 
  Missing    (11): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8109u fi-bsw-kefka fi-skl-lmem fi-kbl-7560u fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7970 -> Patchwork_16642

  CI-20190529: 20190529
  CI_DRM_7970: 6b8b833350142345f4b1a6af9486db7d316a7ff1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5452: c05dc6cd816feb1cc518ce777ab3fd6c81893113 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16642: 81c48211d4f0171849b2fe323a5c6bf3bdfcfae6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

81c48211d4f0 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
3a98210715c5 drm/i915/gt: Declare when we enabled timeslicing
c0b4866e2c12 drm/i915/gem: Check that the context wasn't closed during setup
4af18a639c91 drm/i915/gt: Prevent allocation on a banned context
1677db7d6e97 drm/i915/gem: Consolidate ctx->engines[] release
857122388306 drm/i915/gt: Protect signaler walk with RCU

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16642/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
