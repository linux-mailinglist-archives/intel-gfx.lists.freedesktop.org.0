Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 824421525CB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 06:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB44B6E1E9;
	Wed,  5 Feb 2020 05:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 264F56E1E8;
 Wed,  5 Feb 2020 05:17:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F1E6A0009;
 Wed,  5 Feb 2020 05:17:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 05 Feb 2020 05:17:43 -0000
Message-ID: <158087986312.17319.10826964538607829270@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200204192823.111404-1-lyude@redhat.com>
In-Reply-To: <20200204192823.111404-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_i915=3A_eDP_DPCD_backlight_control_detection_fixes?=
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

Series: drm/dp, i915: eDP DPCD backlight control detection fixes
URL   : https://patchwork.freedesktop.org/series/72991/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7867 -> Patchwork_16422
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16422/index.html

Known issues
------------

  Here are the changes found in Patchwork_16422 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16422/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_requests:
    - fi-icl-u2:          [PASS][3] -> [INCOMPLETE][4] ([fdo#109644] / [fdo#110464])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-icl-u2/igt@i915_selftest@live_requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16422/fi-icl-u2/igt@i915_selftest@live_requests.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][5] ([i915#45]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16422/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][7] ([fdo#112271] / [i915#1084]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16422/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
#### Warnings ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [TIMEOUT][9] ([fdo#112271]) -> [INCOMPLETE][10] ([i915#45])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16422/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][11] ([i915#725]) -> [DMESG-FAIL][12] ([i915#553] / [i915#725])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7867/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16422/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (42 -> 38)
------------------------------

  Additional (7): fi-bdw-5557u fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-ivb-3770 fi-skl-6600u fi-kbl-r 
  Missing    (11): fi-hsw-4200u fi-byt-squawks fi-ilk-650 fi-ctg-p8600 fi-whl-u fi-cfl-8109u fi-elk-e7500 fi-bsw-kefka fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7867 -> Patchwork_16422

  CI-20190529: 20190529
  CI_DRM_7867: a4c409e48c6281538b1e375545dfb5989fa02063 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5418: 4028bd390b41925f6e26f6f11b31e05054652527 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16422: cb2579a309c71570a4b4100501a96e740a6c6a35 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cb2579a309c7 drm/i915: Force DPCD backlight mode for some Precision 7750 panels
db44c503e149 drm/i915: Force DPCD backlight mode on X1 Extreme 2nd Gen 4K AMOLED panel
7dd75992d6e8 drm/dp: Introduce EDID-based quirks
ea55ec70bd2e Revert "drm/i915: Don't use VBT for detecting DPCD backlight controls"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16422/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
