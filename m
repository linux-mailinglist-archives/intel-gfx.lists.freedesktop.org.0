Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD77129B72
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 23:29:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 172416E271;
	Mon, 23 Dec 2019 22:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E2AB6E153;
 Mon, 23 Dec 2019 22:29:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8618CA0087;
 Mon, 23 Dec 2019 22:29:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Dec 2019 22:29:16 -0000
Message-ID: <157714015654.16934.5669702297761482383@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223215059.2373536-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191223215059.2373536-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Apply_sanitiization_just_before_resume?=
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

Series: drm/i915/gt: Apply sanitiization just before resume
URL   : https://patchwork.freedesktop.org/series/71334/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7630 -> Patchwork_15905
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/index.html

Known issues
------------

  Here are the changes found in Patchwork_15905 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#505] / [i915#671])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111096] / [i915#323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][5] ([i915#505]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#725]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][9] ([i915#656]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([i915#62] / [i915#92]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][15] ([i915#858]) -> [FAIL][16] ([i915#192] / [i915#193] / [i915#194])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7630/fi-kbl-8809g/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/fi-kbl-8809g/igt@runner@aborted.html

  
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#858]: https://gitlab.freedesktop.org/drm/intel/issues/858
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 39)
------------------------------

  Additional (8): fi-byt-j1900 fi-skl-6770hq fi-glk-dsi fi-whl-u fi-gdg-551 fi-ivb-3770 fi-bsw-nick fi-snb-2600 
  Missing    (12): fi-ilk-m540 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-snb-2520m fi-ctg-p8600 fi-skl-lmem fi-bdw-samus fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7630 -> Patchwork_15905

  CI-20190529: 20190529
  CI_DRM_7630: 28a2aa0ebf1520ea8a0dd89299f7ceea80dfd96f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15905: 5901f8a8a71d4d3c886751685b6e97252561d61a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5901f8a8a71d drm/i915/gt: Apply sanitiization just before resume

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15905/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
