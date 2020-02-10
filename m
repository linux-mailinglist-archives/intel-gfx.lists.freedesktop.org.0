Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF67C158148
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 18:24:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D6589321;
	Mon, 10 Feb 2020 17:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32EF889321;
 Mon, 10 Feb 2020 17:24:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EBC9A0134;
 Mon, 10 Feb 2020 17:24:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Mon, 10 Feb 2020 17:24:09 -0000
Message-ID: <158135544918.3097.4082769264232209350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205115932.7538-1-uma.shankar@intel.com>
In-Reply-To: <20200205115932.7538-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?ing_YUV444_packed_format_support_for_skl+_=28rev2=29?=
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

Series: Adding YUV444 packed format support for skl+ (rev2)
URL   : https://patchwork.freedesktop.org/series/73020/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7900 -> Patchwork_16502
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/index.html

Known issues
------------

  Here are the changes found in Patchwork_16502 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-ivb-3770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][3] ([i915#694] / [i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][5] ([i915#553] / [i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][7] ([fdo#108569]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][9] ([i915#877]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-6770hq:      [TIMEOUT][11] ([fdo#111732] / [fdo#112271]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-skl-6770hq/igt@i915_selftest@live_gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-skl-6770hq/igt@i915_selftest@live_gtt.html
    - fi-skl-6600u:       [TIMEOUT][13] ([fdo#111732] / [fdo#112271]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-skl-6600u/igt@i915_selftest@live_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-skl-6600u/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [FAIL][15] ([fdo#109635] / [i915#217]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@gem_ctx_create@basic-files:
    - fi-whl-u:           [INCOMPLETE][17] ([i915#1194]) -> [INCOMPLETE][18] ([i915#1147])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7900/fi-whl-u/igt@gem_ctx_create@basic-files.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/fi-whl-u/igt@gem_ctx_create@basic-files.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1147]: https://gitlab.freedesktop.org/drm/intel/issues/1147
  [i915#1194]: https://gitlab.freedesktop.org/drm/intel/issues/1194
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (51 -> 47)
------------------------------

  Additional (3): fi-kbl-7560u fi-byt-n2820 fi-bwr-2160 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5432 -> IGTPW_4011
  * Linux: CI_DRM_7900 -> Patchwork_16502

  CI-20190529: 20190529
  CI_DRM_7900: f4ab479a4e3c9e0bc9120f6618b9876bfdece9cc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4011: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4011/index.html
  IGT_5432: 6677811be6e9be9000b3217e8862353b3945a4f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16502: 28b7caa469bc3ae0ec573ee2e926c346295facc5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

28b7caa469bc drm/i915: Adding YUV444 packed format support for skl+ (V13)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16502/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
