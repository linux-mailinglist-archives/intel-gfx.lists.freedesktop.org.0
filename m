Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDEB17C8B9
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 00:11:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1D56ED84;
	Fri,  6 Mar 2020 23:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3C276ED84;
 Fri,  6 Mar 2020 23:11:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6F0AA011C;
 Fri,  6 Mar 2020 23:11:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 06 Mar 2020 23:11:06 -0000
Message-ID: <158353626672.3081.3360170885377969788@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_avoid_spurious_EBUSY_due_to_nonblocking_atomic_modesets_=28?=
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

Series: drm: avoid spurious EBUSY due to nonblocking atomic modesets (rev4)
URL   : https://patchwork.freedesktop.org/series/45968/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8086 -> Patchwork_16864
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16864 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16864, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16864:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-apl-guc/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-apl-guc/igt@kms_busy@basic@modeset.html
    - fi-icl-dsi:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-icl-dsi/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-icl-dsi/igt@kms_busy@basic@modeset.html
    - fi-bxt-dsi:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-bxt-dsi/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-bxt-dsi/igt@kms_busy@basic@modeset.html
    - fi-cfl-guc:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-cfl-guc/igt@kms_busy@basic@modeset.html
    - fi-skl-6600u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-skl-6600u/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-skl-6600u/igt@kms_busy@basic@modeset.html
    - fi-cml-s:           [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-cml-s/igt@kms_busy@basic@modeset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-cml-s/igt@kms_busy@basic@modeset.html
    - fi-kbl-soraka:      [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
    - fi-bsw-n3050:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
    - fi-icl-guc:         [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-icl-guc/igt@kms_busy@basic@modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-icl-guc/igt@kms_busy@basic@modeset.html
    - fi-skl-6700k2:      [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-glk-dsi:         [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-glk-dsi/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-glk-dsi/igt@kms_busy@basic@modeset.html
    - fi-bsw-kefka:       [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-skl-guc/igt@kms_busy@basic@modeset.html
    - fi-kbl-x1275:       [PASS][26] -> [FAIL][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-kbl-x1275/igt@kms_busy@basic@modeset.html
    - fi-kbl-7500u:       [PASS][28] -> [FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
    - fi-cfl-8109u:       [PASS][30] -> [FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
    - fi-icl-y:           [PASS][32] -> [FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-icl-y/igt@kms_busy@basic@modeset.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-icl-y/igt@kms_busy@basic@modeset.html
    - fi-cfl-8700k:       [PASS][34] -> [FAIL][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
    - fi-kbl-r:           [PASS][36] -> [FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-kbl-r/igt@kms_busy@basic@modeset.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-kbl-r/igt@kms_busy@basic@modeset.html
    - fi-icl-u2:          [PASS][38] -> [FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-icl-u2/igt@kms_busy@basic@modeset.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-icl-u2/igt@kms_busy@basic@modeset.html
    - fi-cml-u2:          [PASS][40] -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-cml-u2/igt@kms_busy@basic@modeset.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-cml-u2/igt@kms_busy@basic@modeset.html
    - fi-byt-j1900:       [PASS][42] -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-byt-j1900/igt@kms_busy@basic@modeset.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-byt-j1900/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@modeset:
    - {fi-tgl-u}:         [PASS][44] -> [FAIL][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-tgl-u/igt@kms_busy@basic@modeset.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-tgl-u/igt@kms_busy@basic@modeset.html
    - {fi-tgl-dsi}:       [PASS][46] -> [FAIL][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-tgl-dsi/igt@kms_busy@basic@modeset.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-tgl-dsi/igt@kms_busy@basic@modeset.html
    - {fi-ehl-1}:         [PASS][48] -> [FAIL][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-ehl-1/igt@kms_busy@basic@modeset.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-ehl-1/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_16864 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_busy@basic@modeset:
    - fi-tgl-y:           [PASS][50] -> [FAIL][51] ([CI#94])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-tgl-y/igt@kms_busy@basic@modeset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-tgl-y/igt@kms_busy@basic@modeset.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][52] -> [DMESG-WARN][53] ([CI#94] / [i915#402]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@dmabuf:
    - fi-ivb-3770:        [DMESG-WARN][54] -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][56] -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][58] ([i915#217]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-7500u:       [FAIL][60] ([fdo#111096] / [i915#323]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][62] ([CI#94] / [i915#402]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8086/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (50 -> 43)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8086 -> Patchwork_16864

  CI-20190529: 20190529
  CI_DRM_8086: 3a1e69684036738b540510ffcc31964600bc0b3f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16864: 6cecc5b22da8f6e9f3e1667e5c16dea4c110e858 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6cecc5b22da8 drm: avoid spurious EBUSY due to nonblocking atomic modesets

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16864/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
