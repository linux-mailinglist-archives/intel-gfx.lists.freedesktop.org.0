Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3491705ED
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 18:22:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730546EB20;
	Wed, 26 Feb 2020 17:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 174CB6EB20;
 Wed, 26 Feb 2020 17:22:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10107A00EF;
 Wed, 26 Feb 2020 17:22:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Wed, 26 Feb 2020 17:22:02 -0000
Message-ID: <158273772203.21009.13289261003510540000@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225134709.6153-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200225134709.6153-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_i915_based_i915=5FMISSING=5FCASE_macro_and_u?=
 =?utf-8?q?s_it_in_i915?=
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

Series: drm/i915: Introduce i915 based i915_MISSING_CASE macro and us it in i915
URL   : https://patchwork.freedesktop.org/series/73908/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8008 -> Patchwork_16705
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/index.html

Known issues
------------

  Here are the changes found in Patchwork_16705 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-open:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@gem_flink_basic@bad-open.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/fi-tgl-y/igt@gem_flink_basic@bad-open.html

  * igt@i915_selftest@live_gt_pm:
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-FAIL][4] ([i915#801])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/fi-skl-6770hq/igt@i915_selftest@live_gt_pm.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][5] ([fdo#108569]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-icl-y/igt@i915_selftest@live_execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-u}:         [DMESG-FAIL][7] ([i915#1233]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [DMESG-WARN][11] ([i915#106]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111407]) -> [FAIL][14] ([fdo#111096] / [i915#323])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-skl-6770hq:      [SKIP][15] ([fdo#109271]) -> [DMESG-WARN][16] ([i915#106])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#801]: https://gitlab.freedesktop.org/drm/intel/issues/801


Participating hosts (52 -> 39)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (14): fi-ilk-m540 fi-bdw-samus fi-tgl-dsi fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-gdg-551 fi-blb-e6850 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16705

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16705: 4908d4bfc3d886cfd24f39666f00e0187fa6050a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4908d4bfc3d8 drm/i915: Make MISSING_CASE backtrace i915 specific
cda06a3fe764 drm/i915/gt: Make MISSING_CASE backtrace i915 specific
a04daf106db7 drm/i915/gem: Make MISSING_CASE backtrace i915 specific
8de10f450920 drm/i915/display: Make MISSING_CASE backtrace i915 specific
f634ed71f53a drm/i915/display/hdmi: Make MISSING_CASE backtrace i915 specific
fa563d2d4620 drm/i915/dp: Make MISSING_CASE backtrace i915 specific
f8315a3a078d drm/i915/display/display: Make MISSING_CASE backtrace i915 specific
ec2632eb9e18 drm/i915/display/ddi: Make MISSING_CASE backtrace i915 specific
cc9141f3850c drm/i915/display/cdclk: Make MISSING_CASE backtrace i915 specific
f04e32590e91 drm/i915: Add i915 device based MISSING_CASE macro

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
