Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C248417CBDD
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 05:05:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 868276EDDF;
	Sat,  7 Mar 2020 04:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95A156EDDF;
 Sat,  7 Mar 2020 04:05:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 854B7A3C0D;
 Sat,  7 Mar 2020 04:05:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 07 Mar 2020 04:05:30 -0000
Message-ID: <158355393052.20975.5633831925434135265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200307012600.19602-1-lucas.demarchi@intel.com>
In-Reply-To: <20200307012600.19602-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dgfx=3A_avoid_opregion_calls_and_messages?=
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

Series: drm/i915/dgfx: avoid opregion calls and messages
URL   : https://patchwork.freedesktop.org/series/74408/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8088 -> Patchwork_16871
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/index.html

Known issues
------------

  Here are the changes found in Patchwork_16871 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@double-flink:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@gem_flink_basic@double-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/fi-tgl-y/igt@gem_flink_basic@double-flink.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-tgl-y:           [DMESG-WARN][3] ([CI#94] / [i915#402]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][5] ([fdo#109635] / [i915#217]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][7] ([fdo#111096] / [i915#323]) -> [FAIL][8] ([fdo#111407])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 38)
------------------------------

  Additional (2): fi-bwr-2160 fi-tgl-dsi 
  Missing    (10): fi-kbl-soraka fi-bdw-5557u fi-hsw-4200u fi-hsw-peppy fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ivb-3770 fi-bsw-kefka 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8088 -> Patchwork_16871

  CI-20190529: 20190529
  CI_DRM_8088: 91dc8b179da374160a6bbdbd6987a512a10fbc02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16871: 5812120aa654d89e3fbf4493221d5e7431c4d424 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5812120aa654 drm/i915/dgfx: avoid opregion calls and messages

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
