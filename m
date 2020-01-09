Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108181358B1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 13:00:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6956E903;
	Thu,  9 Jan 2020 12:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1C9389D4A;
 Thu,  9 Jan 2020 12:00:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E80E2A00C7;
 Thu,  9 Jan 2020 12:00:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 09 Jan 2020 12:00:34 -0000
Message-ID: <157857123491.4565.8360117186717235853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915/sdvo=3A_Reduce_the_size_of?=
 =?utf-8?q?_the_on_stack_buffers?=
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

Series: series starting with [1/9] drm/i915/sdvo: Reduce the size of the on stack buffers
URL   : https://patchwork.freedesktop.org/series/71775/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7705 -> Patchwork_16032
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16032 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16032, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16032:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-u3:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-icl-u3/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-icl-u3/igt@i915_selftest@live_execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_chamelium@dp-edid-read:
    - {fi-ehl-1}:         NOTRUN -> [SKIP][3] +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-ehl-1/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - {fi-ehl-1}:         NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-ehl-1/igt@kms_flip@basic-flip-vs-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16032 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][5] ([i915#816]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_fence@nb-await-default:
    - {fi-ehl-1}:         [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-ehl-1/igt@gem_exec_fence@nb-await-default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-ehl-1/igt@gem_exec_fence@nb-await-default.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([i915#505]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [INCOMPLETE][11] ([i915#879]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][13] ([fdo#109271]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][15] ([i915#553] / [i915#725]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-skl-6770hq:      [INCOMPLETE][17] ([i915#435]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879


Participating hosts (38 -> 44)
------------------------------

  Additional (12): fi-bdw-5557u fi-bsw-n3050 fi-hsw-peppy fi-snb-2520m fi-gdg-551 fi-ivb-3770 fi-bsw-kefka fi-skl-lmem fi-blb-e6850 fi-kbl-r fi-skl-6600u fi-snb-2600 
  Missing    (6): fi-kbl-soraka fi-hsw-4770r fi-byt-squawks fi-ctg-p8600 fi-kbl-7560u fi-tgl-y 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7705 -> Patchwork_16032

  CI-20190529: 20190529
  CI_DRM_7705: b57ea8cadecd3444690439b4703d964afca476e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16032: 521d3340a6bd9cb531745a57ab6a005e453cdfe4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

521d3340a6bd drm/i915/dvo: Make .get_modes() return the number of modes
e62085f51578 drm/i915/sdvo: Make .get_modes() return the number of modes
a367724ad6f5 drm/i915/sdvo: Make SDVO deal with HDMI pixel repeat
8b3edc33044e drm/i915: Reject DRM_MODE_FLAG_DBLCLK with DVI sinks
352cca7fca00 drm/i915/sdvo: Implement limited color range for SDVO HDMI properly
b7beccfe4cce drm/i915/sdvo: Fix SDVO colorimetry bit defines
9c38e233607e drm/i915/sdvo: Consolidate SDVO HDMI force_dvi handling
f28fab3ed98c drm/i915: Consolidate HDMI force_dvi handling
ac1818fd99c9 drm/i915/sdvo: Reduce the size of the on stack buffers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16032/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
