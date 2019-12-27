Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9628612B5FD
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 17:54:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996CC6E462;
	Fri, 27 Dec 2019 16:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DB056E454;
 Fri, 27 Dec 2019 16:54:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13D8EA01BB;
 Fri, 27 Dec 2019 16:54:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Dec 2019 16:54:06 -0000
Message-ID: <157746564605.27188.977148618811973108@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191227103050.2715402-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191227103050.2715402-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Err_out_on_coherency_if_initialisation_faile?=
 =?utf-8?q?d?=
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

Series: drm/i915/selftests: Err out on coherency if initialisation failed
URL   : https://patchwork.freedesktop.org/series/71433/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7642 -> Patchwork_15932
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15932 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15932, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15932:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_client:
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][1] +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-skl-6600u/igt@i915_selftest@live_client.html

  * igt@i915_selftest@live_reset:
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-skl-6600u/igt@i915_selftest@live_reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_15932 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][3] -> [DMESG-WARN][4] ([i915#44])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_busy@basic-before-default:
    - fi-icl-dsi:         [PASS][5] -> [DMESG-WARN][6] ([i915#109])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-icl-dsi/igt@prime_busy@basic-before-default.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-icl-dsi/igt@prime_busy@basic-before-default.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][7] ([i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-byt-j1900:       [DMESG-FAIL][9] ([i915#725]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-byt-j1900/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-byt-j1900/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_coherency:
    - fi-bxt-dsi:         [INCOMPLETE][11] ([fdo#103927]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-bxt-dsi/igt@i915_selftest@live_coherency.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-bxt-dsi/igt@i915_selftest@live_coherency.html

  * igt@i915_selftest@live_gt_engines:
    - fi-bxt-dsi:         [DMESG-FAIL][13] ([i915#889]) -> [PASS][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-bxt-dsi/igt@i915_selftest@live_gt_engines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-bxt-dsi/igt@i915_selftest@live_gt_engines.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [DMESG-WARN][15] ([i915#889]) -> [PASS][16] +13 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-7500u:       [FAIL][17] ([i915#217]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-kbl-7500u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][19] ([fdo#111096] / [i915#323]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][21] ([i915#553] / [i915#725]) -> [DMESG-FAIL][22] ([i915#725])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([i915#62] / [i915#92]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7642/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 44)
------------------------------

  Additional (9): fi-tgl-guc fi-bdw-5557u fi-skl-6770hq fi-snb-2520m fi-whl-u fi-bsw-kefka fi-skl-lmem fi-tgl-y fi-skl-6600u 
  Missing    (9): fi-kbl-soraka fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7642 -> Patchwork_15932

  CI-20190529: 20190529
  CI_DRM_7642: c040b352eb9c72e9a6a8dc830245b2ae8089a54e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15932: d70126307f740a7aaa9984d935f1b6e3a4009d03 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d70126307f74 drm/i915/selftests: Err out on coherency if initialisation failed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15932/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
