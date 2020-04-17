Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0A31AE16D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 17:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8A86EC4A;
	Fri, 17 Apr 2020 15:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 438B56EC4A;
 Fri, 17 Apr 2020 15:45:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D69CA432F;
 Fri, 17 Apr 2020 15:45:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 17 Apr 2020 15:45:49 -0000
Message-ID: <158713834921.10465.17859928868336737645@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?q?=28rev10=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev10)
URL   : https://patchwork.freedesktop.org/series/72853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8316 -> Patchwork_17345
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/index.html

Known issues
------------

  Here are the changes found in Patchwork_17345 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][1] ([i915#203]) -> [PASS][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/fi-skl-6770hq/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-n3050:       [INCOMPLETE][3] ([i915#1382]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/fi-bsw-n3050/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [SKIP][5] ([fdo#109271]) -> [PASS][6] +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [DMESG-WARN][7] ([i915#106]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1382]: https://gitlab.freedesktop.org/drm/intel/issues/1382
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8316 -> Patchwork_17345

  CI-20190529: 20190529
  CI_DRM_8316: 46a1c0844597f783a297136218689431ad104355 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17345: 683a7302b245606193c3cb31e088e3b3ed52aa21 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

683a7302b245 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
ca6476d66567 drm/i915/dp: Add compute routine for DP PSR VSC SDP
b1e535972161 drm/i915: Stop sending DP SDPs on ddi disable
4a022e8fc205 drm/i915: Program DP SDPs on pipe updates
65c3865381d1 drm/i915: Fix enabled infoframe states of lspcon
b47e402f86e9 drm/i915: Add state readout for DP VSC SDP
22a5e5bca724 drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
0754e9ee06df drm/i915: Program DP SDPs with computed configs
578da91e2148 drm/i915: Include DP VSC SDP in the crtc state dump
8ec365f17f48 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
808aab8c443c drm/i915: Include HDMI DRM infoframe in the crtc state dump
69460e7ad9d1 drm: Add logging function for DP VSC SDP
89d92042f6da drm/i915/dp: Read out DP SDPs
04a7a12971b4 video/hdmi: Add Unpack only function for DRM infoframe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
