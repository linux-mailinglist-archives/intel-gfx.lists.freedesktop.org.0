Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 582A2153C5A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 01:54:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 743F26E284;
	Thu,  6 Feb 2020 00:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C364D6E265;
 Thu,  6 Feb 2020 00:54:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA9E2A0071;
 Thu,  6 Feb 2020 00:54:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 06 Feb 2020 00:54:10 -0000
Message-ID: <158095045073.14482.8449756875180154791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205214945.131012-1-jose.souza@intel.com>
In-Reply-To: <20200205214945.131012-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dc3co=3A_Add_description_of_how_it_works?=
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

Series: drm/i915/dc3co: Add description of how it works
URL   : https://patchwork.freedesktop.org/series/73058/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7871 -> Patchwork_16444
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/index.html

Known issues
------------

  Here are the changes found in Patchwork_16444 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_getparams_basic@basic-eu-total:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-tgl-y/igt@i915_getparams_basic@basic-eu-total.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-WARN][4] ([i915#92]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6770hq/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][7] -> [DMESG-FAIL][8] ([fdo#108569])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][9] -> [FAIL][10] ([i915#217])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][11] -> [SKIP][12] ([fdo#109271]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-skl-6770hq:      [PASS][13] -> [DMESG-WARN][14] ([i915#106] / [i915#188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gtt:
    - fi-icl-guc:         [TIMEOUT][15] ([fdo#112271]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-icl-guc/igt@i915_selftest@live_gtt.html

  * igt@kms_addfb_basic@bad-pitch-128:
    - fi-tgl-y:           [DMESG-WARN][17] ([CI#94] / [i915#402]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7871/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-128.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (45 -> 39)
------------------------------

  Additional (5): fi-bdw-5557u fi-ilk-650 fi-kbl-7500u fi-gdg-551 fi-kbl-7560u 
  Missing    (11): fi-kbl-soraka fi-bdw-samus fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7871 -> Patchwork_16444

  CI-20190529: 20190529
  CI_DRM_7871: c9b0237ee7ffb1bbb62f864f0b2d7b290ee1313d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16444: 49f94cc6b68f80e6b92e2540b1d7c8fbb5cf6213 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

49f94cc6b68f drm/i915/dc3co: Add description of how it works

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16444/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
