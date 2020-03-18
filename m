Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6011189BE5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 13:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD316E8E2;
	Wed, 18 Mar 2020 12:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E9A86E8E0;
 Wed, 18 Mar 2020 12:23:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57094A011A;
 Wed, 18 Mar 2020 12:23:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Wed, 18 Mar 2020 12:23:17 -0000
Message-ID: <158453419732.25099.4468955979514155353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318113009.16757-1-uma.shankar@intel.com>
In-Reply-To: <20200318113009.16757-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Trigger_Modeset_at_boot_for_audio_codec_init?=
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

Series: drm/i915/display: Trigger Modeset at boot for audio codec init
URL   : https://patchwork.freedesktop.org/series/74828/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8146 -> Patchwork_17006
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17006 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17006, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17006:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-ilk-650:         NOTRUN -> [FAIL][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-ilk-650/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-ivb-3770/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-glk-dsi:         [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-bsw-n3050:       [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-hsw-4770:        [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-hsw-4770/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-hsw-4770/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
    - fi-bxt-dsi:         [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
    - fi-snb-2520m:       [PASS][11] -> [FAIL][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-snb-2520m/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-snb-2520m/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-pnv-d510:        [PASS][13] -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - fi-icl-dsi:         [PASS][15] -> [FAIL][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-icl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-icl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - fi-elk-e7500:       [PASS][17] -> [FAIL][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - fi-snb-2600:        [PASS][19] -> [FAIL][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-snb-2600/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-snb-2600/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][21] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-blb-e6850/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-gdg-551:         [PASS][22] -> [FAIL][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-gdg-551/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-gdg-551/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bwr-2160:        [PASS][24] -> [FAIL][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][26] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_17006 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-6700k2:      [PASS][27] -> [INCOMPLETE][28] ([i915#656])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-skl-6700k2/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-gdg-551:         [PASS][29] -> [FAIL][30] ([IGT#5]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-gdg-551/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-gdg-551/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-bwr-2160:        [PASS][31] -> [FAIL][32] ([IGT#5]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-bwr-2160/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-bwr-2160/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-bsw-n3050:       [PASS][33] -> [FAIL][34] ([IGT#5] / [i915#697]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-gdg-551:         [PASS][35] -> [FAIL][36] ([i915#34])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-gdg-551/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-gdg-551/igt@kms_flip@basic-flip-vs-wf_vblank.html
    - fi-bsw-n3050:       [PASS][37] -> [FAIL][38] ([i915#34])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8146/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697


Participating hosts (40 -> 29)
------------------------------

  Additional (4): fi-blb-e6850 fi-tgl-dsi fi-ivb-3770 fi-ilk-650 
  Missing    (15): fi-cml-u2 fi-ilk-m540 fi-tgl-u fi-ehl-1 fi-cml-s fi-byt-j1900 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-icl-y fi-kbl-7560u fi-icl-guc fi-bsw-kefka fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8146 -> Patchwork_17006

  CI-20190529: 20190529
  CI_DRM_8146: 407405e5f0d968870116e4eeb2a622c9b076962e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5521: 9c74586ea8e051d074864bce72baf5a688a0a437 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17006: 7a1167eb7b03aa35561e733115114d815ee893b7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7a1167eb7b03 drm/i915/display: Trigger Modeset at boot for audio codec init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17006/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
