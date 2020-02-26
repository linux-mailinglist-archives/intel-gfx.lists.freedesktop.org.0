Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C43170879
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 20:08:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04AE26EB8D;
	Wed, 26 Feb 2020 19:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD9A86EB8D;
 Wed, 26 Feb 2020 19:08:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6EA5A0138;
 Wed, 26 Feb 2020 19:08:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 26 Feb 2020 19:08:01 -0000
Message-ID: <158274408181.21009.13482178465107574674@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226014603.42190-1-jose.souza@intel.com>
In-Reply-To: <20200226014603.42190-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C01/14=5D_drm/i915/tgl=3A_Split_GT_and?=
 =?utf-8?q?_display_workarounds?=
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

Series: series starting with [v2,01/14] drm/i915/tgl: Split GT and display workarounds
URL   : https://patchwork.freedesktop.org/series/73934/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8008 -> Patchwork_16713
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16713 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16713, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16713/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16713:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@sanitycheck:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-bwr-2160/igt@dmabuf@sanitycheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16713/fi-bwr-2160/igt@dmabuf@sanitycheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_16713 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16713/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][5] ([fdo#108569]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-icl-y/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16713/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][7] ([CI#94] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16713/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (52 -> 44)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16713

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16713: 3f7e7be95819fb6c8e2d3451578465b5d0f61f6d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3f7e7be95819 drm/i915/tgl: Implement Wa_1407901919
91ad7e7c3b57 drm/i915/tgl: Add Wa number to WaAllowPMDepthAndInvocationCountAccessFromUMD
4663f5dc469f drm/i915/tgl: Restrict Wa_1408615072 to GT A0 stepping
2b971433ed1e drm/i915/tgl: Add note about Wa_1409142259
89be33cb7055 drm/i915/tgl: Fix the Wa number of a fix
5a6cb2d06c81 drm/i915/tgl: Extend Wa_1409767108 to B0
a9caaf045a2d drm/i915/tgl: Add note about Wa_1607063988
c1bfb255ece7 drm/i915/tgl: Add note to Wa_1607297627
41b18f808a31 drm/i915/tgl: Extend Wa_1606931601 for all steppings
48fc18342e19 drm/i915/tgl: Add Wa_1409085225, Wa_14010229206
33c977b2b167 drm/i915/tgl: Implement Wa_1806527549
636c7aa65c45 drm/i915/tgl: Implement Wa_1409804808
c844fca8f0ab drm/i915/tgl: Extend Wa_1409825376 stepping
78f68ec9e707 drm/i915/tgl: Split GT and display workarounds

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16713/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
