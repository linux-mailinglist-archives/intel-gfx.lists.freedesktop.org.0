Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1F214E0DA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:35:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67B56E8D6;
	Thu, 30 Jan 2020 18:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72DFA6E8D5;
 Thu, 30 Jan 2020 18:35:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6AE9DA0096;
 Thu, 30 Jan 2020 18:35:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Jan 2020 18:35:41 -0000
Message-ID: <158040934143.21033.5025809608721453084@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130142109.1896498-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130142109.1896498-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Skip_rmw_for_masked_registers?=
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

Series: drm/i915/gt: Skip rmw for masked registers
URL   : https://patchwork.freedesktop.org/series/72776/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7844 -> Patchwork_16339
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16339 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16339, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16339/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16339:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_active:
    - fi-bdw-5557u:       [PASS][1] -> [DMESG-WARN][2] +33 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-bdw-5557u/igt@i915_selftest@live_active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16339/fi-bdw-5557u/igt@i915_selftest@live_active.html

  
Known issues
------------

  Here are the changes found in Patchwork_16339 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#553] / [i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16339/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][5] ([i915#44]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16339/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (46 -> 16)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_16339 prevented too many machines from booting.

  Additional (2): fi-ivb-3770 fi-ilk-650 
  Missing    (32): fi-kbl-soraka fi-skl-6770hq fi-icl-u2 fi-apl-guc fi-icl-u3 fi-icl-y fi-skl-lmem fi-byt-n2820 fi-icl-guc fi-icl-dsi fi-cml-u2 fi-bxt-dsi fi-tgl-u fi-cml-s fi-byt-j1900 fi-kbl-7500u fi-kbl-7560u fi-tgl-y fi-skl-6700k2 fi-icl-1065g7 fi-ilk-m540 fi-ehl-1 fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-kbl-8809g fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7844 -> Patchwork_16339

  CI-20190529: 20190529
  CI_DRM_7844: 47faa2a989ef89a15089190a5f942a2d2a34fda5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16339: af5f4686c0a204f5eb3b3a35c710e69f82fc09df @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

af5f4686c0a2 drm/i915/gt: Skip rmw for masked registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16339/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
