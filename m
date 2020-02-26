Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C96191706D3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 18:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348B06E041;
	Wed, 26 Feb 2020 17:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 947CB6EB8E;
 Wed, 26 Feb 2020 17:57:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81820A47E9;
 Wed, 26 Feb 2020 17:57:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Date: Wed, 26 Feb 2020 17:57:58 -0000
Message-ID: <158273987850.21011.8417032434914979851@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225140347.GA22864@embeddedor>
In-Reply-To: <20200225140347.GA22864@embeddedor>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Replace_zero-length_array_with_flexible-array_member?=
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

Series: drm: Replace zero-length array with flexible-array member
URL   : https://patchwork.freedesktop.org/series/73916/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8008 -> Patchwork_16708
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16708:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_chamelium@hdmi-edid-read:
    - {fi-ehl-1}:         [SKIP][1] ([fdo#111827]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-ehl-1/igt@kms_chamelium@hdmi-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/fi-ehl-1/igt@kms_chamelium@hdmi-edid-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_16708 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][3] -> [FAIL][4] ([CI#94])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [PASS][5] -> [DMESG-FAIL][6] ([i915#623])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/fi-tgl-y/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][9] ([fdo#108569]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-icl-y/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111407]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623


Participating hosts (52 -> 40)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (13): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-hsw-peppy fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-ivb-3770 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16708

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16708: bdffb4ce0539293c70c3d140d5981a8e80979c4f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bdffb4ce0539 drm: Replace zero-length array with flexible-array member

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16708/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
