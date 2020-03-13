Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DDD184DCB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 18:40:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA26E89AC9;
	Fri, 13 Mar 2020 17:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E9B789A92;
 Fri, 13 Mar 2020 17:40:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C6A6A00CC;
 Fri, 13 Mar 2020 17:40:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Fri, 13 Mar 2020 17:40:07 -0000
Message-ID: <158412120741.30351.8552991632804960231@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_use_effective_iDisp_BCL?=
 =?utf-8?q?K_value_for_CDCLK_calculation?=
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

Series: series starting with [1/2] drm/i915: use effective iDisp BCLK value for CDCLK calculation
URL   : https://patchwork.freedesktop.org/series/74682/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8135 -> Patchwork_16966
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16966 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16966, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16966:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@basic:
    - fi-skl-6770hq:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8135/fi-skl-6770hq/igt@gem_exec_parallel@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/fi-skl-6770hq/igt@gem_exec_parallel@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_16966 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927] / [i915#656])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8135/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][5] -> [DMESG-FAIL][6] ([i915#877])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8135/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-dsi:         [DMESG-FAIL][7] ([fdo#108569]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8135/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/fi-icl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][9] ([i915#424]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8135/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][11] ([i915#1405]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8135/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111407]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8135/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [FAIL][15] ([i915#34]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8135/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1405]: https://gitlab.freedesktop.org/drm/intel/issues/1405
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (39 -> 44)
------------------------------

  Additional (11): fi-kbl-7560u fi-tgl-dsi fi-byt-j1900 fi-hsw-peppy fi-glk-dsi fi-snb-2520m fi-ilk-650 fi-gdg-551 fi-bsw-kefka fi-blb-e6850 fi-snb-2600 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8135 -> Patchwork_16966

  CI-20190529: 20190529
  CI_DRM_8135: 17c19ee50a6cbb514b59f9f2d8d7d4f088a56300 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5508: 89d644600a1a9f08794cc7106b63758df40ce1d8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16966: d64fcc34c0cd85d0e2013fe81eb0bf561c0d4786 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d64fcc34c0cd drm/i915: move audio CDCLK constraint setup to bind/unbind
bdf38470761d drm/i915: use effective iDisp BCLK value for CDCLK calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16966/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
