Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC49191E3C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 01:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2386E578;
	Wed, 25 Mar 2020 00:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC0BA6E56D;
 Wed, 25 Mar 2020 00:41:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AECC2A47DF;
 Wed, 25 Mar 2020 00:41:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Mar 2020 00:41:00 -0000
Message-ID: <158509686068.29635.2005789997932646959@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324201526.16571-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200324201526.16571-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Measure_the_energy_consumed_while_in_RC6_=28?=
 =?utf-8?q?rev4=29?=
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

Series: drm/i915/selftests: Measure the energy consumed while in RC6 (rev4)
URL   : https://patchwork.freedesktop.org/series/75035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8184 -> Patchwork_17076
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17076 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17076, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17076/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17076:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8184/fi-icl-guc/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17076/fi-icl-guc/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17076 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927] / [i915#529])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8184/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17076/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][5] ([i915#877]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8184/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17076/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][7] ([i915#481]) -> [DMESG-FAIL][8] ([i915#730] / [i915#933])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8184/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17076/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#933]: https://gitlab.freedesktop.org/drm/intel/issues/933


Participating hosts (40 -> 35)
------------------------------

  Additional (5): fi-kbl-soraka fi-hsw-4770r fi-byt-j1900 fi-kbl-7500u fi-cfl-8109u 
  Missing    (10): fi-bdw-samus fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-blb-e6850 fi-byt-n2820 fi-bsw-nick fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8184 -> Patchwork_17076

  CI-20190529: 20190529
  CI_DRM_8184: 1a72c9d9d3140e92190485d766b9d165932c5b86 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5535: d1dcf40cc6869ac858586c5ad9f09af6617ce2ee @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17076: be4a0fbdaf4cb7df9f6278ba72cf83e802314730 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

be4a0fbdaf4c drm/i915/selftests: Measure the energy consumed while in RC6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17076/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
