Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D33F8175E1D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 16:24:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B992B6E2C4;
	Mon,  2 Mar 2020 15:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F0FD6E2C4;
 Mon,  2 Mar 2020 15:24:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60410A0088;
 Mon,  2 Mar 2020 15:24:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 02 Mar 2020 15:24:31 -0000
Message-ID: <158316267136.30644.17979489336672327120@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915=3A_Nuke_pointless_div_by_6?=
 =?utf-8?q?4bit?=
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

Series: series starting with [1/6] drm/i915: Nuke pointless div by 64bit
URL   : https://patchwork.freedesktop.org/series/74145/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8043 -> Patchwork_16780
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/index.html

Known issues
------------

  Here are the changes found in Patchwork_16780 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2] ([i915#877])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111096] / [i915#323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@vgem_basic@debugfs:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@vgem_basic@debugfs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/fi-tgl-y/igt@vgem_basic@debugfs.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][7] ([fdo#108569]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-icl-y/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bad-pitch-999:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-999.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][11] ([i915#192] / [i915#193] / [i915#194]) -> [FAIL][12] ([i915#1209])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8043/fi-kbl-8809g/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (48 -> 38)
------------------------------

  Additional (3): fi-glk-dsi fi-byt-n2820 fi-elk-e7500 
  Missing    (13): fi-ilk-m540 fi-bdw-samus fi-bsw-n3050 fi-hsw-4200u fi-bdw-gvtdvm fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-guc fi-ctg-p8600 fi-bsw-kefka fi-blb-e6850 fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8043 -> Patchwork_16780

  CI-20190529: 20190529
  CI_DRM_8043: 7e5119254441cdf0764418bbf3f43f6547d30a8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16780: a49c4e236c8f13c67eca85aa1e03b4e6adc9f1d4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a49c4e236c8f drm/i915/selftests: Make the CS timestamp tests work on gen4-snb (sort of)
13e9499b1424 drm/i915: Extract i915_cs_timestamp_{ns_to_ticks, tick_to_ns}()
3a7310b7ff08 drm/i915: Fix cs_timestamp_frequency_hz for cl/bw
bf4eb53970e1 drm/i915: Fix cs_timestamp_frequency_hz for ctg/elk/ilk
03152bdf42be drm/i915: Store CS timestamp frequency in Hz
6cf1345486f2 drm/i915: Nuke pointless div by 64bit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16780/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
