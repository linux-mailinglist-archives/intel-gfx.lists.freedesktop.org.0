Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DDE11A4C7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 08:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B1D6E1E0;
	Wed, 11 Dec 2019 07:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 389D16E1E0;
 Wed, 11 Dec 2019 07:03:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28951A01BB;
 Wed, 11 Dec 2019 07:03:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 11 Dec 2019 07:03:19 -0000
Message-ID: <157604779914.30690.7623966608103097049@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_timeline_semaphore_support?=
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

Series: drm/i915: timeline semaphore support
URL   : https://patchwork.freedesktop.org/series/70728/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7534 -> Patchwork_15683
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/index.html

Known issues
------------

  Here are the changes found in Patchwork_15683 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-byt-n2820:       [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/fi-byt-n2820/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4] ([i915#773])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/fi-hsw-4770/igt@i915_selftest@live_requests.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-u}:         [INCOMPLETE][5] ([fdo#111735]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-tgl-u/igt@gem_ctx_create@basic-files.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/fi-tgl-u/igt@gem_ctx_create@basic-files.html

  * igt@gem_sync@basic-each:
    - fi-tgl-y:           [INCOMPLETE][7] ([i915#707]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-tgl-y/igt@gem_sync@basic-each.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/fi-tgl-y/igt@gem_sync@basic-each.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111407]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92]) -> [DMESG-WARN][12] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-hsw-4770r 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15683

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15683: cbd4c7dfd3a397d25936553fecd8c54cd9abf3b1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cbd4c7dfd3a3 drm/i915: peel dma-fence-chains wait fences
73393ec5545d drm/i915: add syncobj timeline support
0a6c609da1ff drm/i915: introduce a mechanism to extend execbuf2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
