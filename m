Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 559881285DE
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 01:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CED26E2DF;
	Sat, 21 Dec 2019 00:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60F936E2DF;
 Sat, 21 Dec 2019 00:07:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59001A0093;
 Sat, 21 Dec 2019 00:07:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 21 Dec 2019 00:07:11 -0000
Message-ID: <157688683133.32689.12878272620518433583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
In-Reply-To: <20191220172754.3773-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?fer_acronym_for_prefixes?=
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

Series: Prefer acronym for prefixes
URL   : https://patchwork.freedesktop.org/series/71224/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7615 -> Patchwork_15863
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/index.html

Known issues
------------

  Here are the changes found in Patchwork_15863 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u3:          [PASS][1] -> [DMESG-WARN][2] ([i915#109])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/fi-icl-u3/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/fi-icl-u3/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770:        [DMESG-FAIL][3] ([i915#722]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [INCOMPLETE][5] ([i915#694]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#725]) -> [DMESG-FAIL][8] ([i915#553] / [i915#725])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111096] / [i915#323]) -> [FAIL][10] ([fdo#111407])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([i915#62] / [i915#92]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7615/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (39 -> 40)
------------------------------

  Additional (8): fi-bsw-n3050 fi-bwr-2160 fi-gdg-551 fi-blb-e6850 fi-byt-n2820 fi-bsw-nick fi-skl-6600u fi-kbl-r 
  Missing    (7): fi-ilk-m540 fi-bdw-gvtdvm fi-byt-squawks fi-ctg-p8600 fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7615 -> Patchwork_15863

  CI-20190529: 20190529
  CI_DRM_7615: 2a3a29d061687518b6c7fa4605518fdaebac82cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15863: c9c5e8aad5a4a0b30c5b913525dfeae7e7e1e8cd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c9c5e8aad5a4 drm/i915: prefer 3-letter acronym for tigerlake
bfcab138f5f4 drm/i915: prefer 3-letter acronym for ivybridge
e18792a17250 drm/i915: prefer 3-letter acronym for broadwell
fc31bb67431d drm/i915: prefer 3-letter acronym for ironlake
28bfd56cbaa9 drm/i915: prefer 3-letter acronym for icelake
c1d0af728a4d drm/i915: prefer 3-letter acronym for cannonlake
59bd91da8368 drm/i915: prefer 3-letter acronym for skylake
5d4e2de63a83 drm/i915: prefer 3-letter acronym for haswell
cd6a3dc4691b drm/i915: prefer 3-letter acronym for pineview
6507ba4cfb86 drm/i915: simplify prefixes on device_info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15863/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
