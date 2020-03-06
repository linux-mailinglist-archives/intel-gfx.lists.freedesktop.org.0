Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A7B17B4A8
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 03:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5382D6E40B;
	Fri,  6 Mar 2020 02:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C08786E40B;
 Fri,  6 Mar 2020 02:48:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9E7CA00C7;
 Fri,  6 Mar 2020 02:48:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 06 Mar 2020 02:48:47 -0000
Message-ID: <158346292773.3081.10307853825532976419@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305174538.16234-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200305174538.16234-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_crtc_nv12_etc=2E_plane_bitmasks_for_DPMS_off?=
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

Series: drm/i915: Fix crtc nv12 etc. plane bitmasks for DPMS off
URL   : https://patchwork.freedesktop.org/series/74346/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8073 -> Patchwork_16843
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16843/index.html

Known issues
------------

  Here are the changes found in Patchwork_16843 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2] ([fdo#109635] / [i915#217])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16843/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([i915#217])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16843/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16843/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][7] ([i915#44]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16843/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-tgl-y/igt@vgem_basic@create.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16843/fi-tgl-y/igt@vgem_basic@create.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44


Participating hosts (47 -> 43)
------------------------------

  Additional (4): fi-kbl-soraka fi-elk-e7500 fi-snb-2520m fi-skl-6600u 
  Missing    (8): fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-ctg-p8600 fi-cfl-8109u fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8073 -> Patchwork_16843

  CI-20190529: 20190529
  CI_DRM_8073: 04042aee59126471bb37cec526ccaf44b4e8d506 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16843: 905f1e2e1bf43dbfa3442a1ff9a0b73bf31c1548 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

905f1e2e1bf4 drm/i915: Fix crtc nv12 etc. plane bitmasks for DPMS off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16843/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
