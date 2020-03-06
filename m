Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CBD17C6CF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 21:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D5766ED62;
	Fri,  6 Mar 2020 20:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 666ED6ED62;
 Fri,  6 Mar 2020 20:10:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44397A47DA;
 Fri,  6 Mar 2020 20:10:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Fri, 06 Mar 2020 20:10:37 -0000
Message-ID: <158352543725.3082.451026137838176385@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306113927.16904-1-karthik.b.s@intel.com>
In-Reply-To: <20200306113927.16904-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXN5?=
 =?utf-8?q?nchronous_flip_implementation_for_i915?=
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

Series: Asynchronous flip implementation for i915
URL   : https://patchwork.freedesktop.org/series/74386/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8085 -> Patchwork_16860
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16860 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16860, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16860:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-snb-2520m:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-snb-2520m/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-snb-2520m/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_busy@basic@flip:
    - fi-skl-6770hq:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-skl-6770hq/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-skl-6770hq/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-snb-2520m/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-byt-j1900/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16860 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@invalid-get-prop:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-tgl-y/igt@kms_addfb_basic@invalid-get-prop.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-tgl-y/igt@kms_addfb_basic@invalid-get-prop.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][9] ([CI#94]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-snb-2520m:       [DMESG-WARN][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-snb-2520m/igt@i915_selftest@live@gt_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-snb-2520m/igt@i915_selftest@live@gt_contexts.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#109635] / [i915#262]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8085/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45


Participating hosts (51 -> 42)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-bsw-kefka fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8085 -> Patchwork_16860

  CI-20190529: 20190529
  CI_DRM_8085: f731492964aa6510672f43292d4b2216b73eddeb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5496: 00a8e400876f2c27f62ed7d418be6b55738a4ea6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16860: 2eafb08e7a1274550eaa97d29851803cdda31162 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2eafb08e7a12 drm/i915: Do not call drm_crtc_arm_vblank_event in async flips
de25734fbcdc drm/i915: Enable and handle flip done interrupt
6d21dd58995a drm/i915: Add flip_done_handler definition
ea0c09f4b01b drm/i915: Add checks specific to async flips
95f6839ee4fc drm/i915: Make commit call blocking in case of async flips
e1403132835c drm/i915: Add support for async flips in I915
acc147186833 drm/i915: Define flip done functions and enable IER

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16860/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
