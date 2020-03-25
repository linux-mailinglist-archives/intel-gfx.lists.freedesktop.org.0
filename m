Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 090B21923AC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 10:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2CF6E5D1;
	Wed, 25 Mar 2020 09:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 733AF6E5CF;
 Wed, 25 Mar 2020 09:07:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D582A00C7;
 Wed, 25 Mar 2020 09:07:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Mar 2020 09:07:41 -0000
Message-ID: <158512726144.29634.5909102544956992739@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324201526.16571-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200324201526.16571-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Measure_the_energy_consumed_while_in_RC6_=28?=
 =?utf-8?q?rev5=29?=
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

Series: drm/i915/selftests: Measure the energy consumed while in RC6 (rev5)
URL   : https://patchwork.freedesktop.org/series/75035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8185 -> Patchwork_17079
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17079 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17079, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17079/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17079:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-icl-guc/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17079/fi-icl-guc/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17079 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-icl-dsi:         [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-icl-dsi/igt@i915_pm_backlight@basic-brightness.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17079/fi-icl-dsi/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][5] ([i915#877]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17079/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][7] ([i915#1209]) -> [FAIL][8] ([i915#1485] / [i915#192] / [i915#193] / [i915#194])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8185/fi-kbl-8809g/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17079/fi-kbl-8809g/igt@runner@aborted.html

  
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (45 -> 40)
------------------------------

  Additional (4): fi-byt-j1900 fi-kbl-7560u fi-skl-6700k2 fi-kbl-7500u 
  Missing    (9): fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8185 -> Patchwork_17079

  CI-20190529: 20190529
  CI_DRM_8185: dbd2532fc5cf023b28bd631b51eea8452739b421 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5537: 190245120758e754813d76b2c6c613413a0dba29 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17079: 64d049bdd569e362465b0038b71aa8a90379714f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

64d049bdd569 drm/i915/selftests: Measure the energy consumed while in RC6

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17079/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
