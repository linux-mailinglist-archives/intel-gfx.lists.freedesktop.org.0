Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11084130932
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Jan 2020 17:42:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A5D89F03;
	Sun,  5 Jan 2020 16:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3620289F01;
 Sun,  5 Jan 2020 16:42:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24ACBA363D;
 Sun,  5 Jan 2020 16:42:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 05 Jan 2020 16:42:48 -0000
Message-ID: <157824256811.14737.9592494870126657328@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200105155120.96466-1-hdegoede@redhat.com>
In-Reply-To: <20200105155120.96466-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/connector=3A_Split_out_ori?=
 =?utf-8?q?entation_quirk_detection_=28v2=29?=
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

Series: series starting with [v2,1/2] drm/connector: Split out orientation quirk detection (v2)
URL   : https://patchwork.freedesktop.org/series/71637/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7680 -> Patchwork_15995
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/index.html

Known issues
------------

  Here are the changes found in Patchwork_15995 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-6700k2:      [PASS][1] -> [DMESG-WARN][2] ([i915#889])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-byt-n2820:       [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-byt-n2820/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/fi-byt-n2820/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [DMESG-FAIL][5] ([i915#765]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-icl-y/igt@i915_selftest@live_active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/fi-icl-y/igt@i915_selftest@live_active.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][7] ([i915#671]) -> [DMESG-WARN][8] ([i915#889])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (43 -> 39)
------------------------------

  Additional (6): fi-bdw-gvtdvm fi-glk-dsi fi-ilk-650 fi-cfl-8109u fi-kbl-8809g fi-skl-6600u 
  Missing    (10): fi-hsw-4770r fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-bsw-kefka fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7680 -> Patchwork_15995

  CI-20190529: 20190529
  CI_DRM_7680: b70a5ffaee3192a3d21296a6d68f4a1b4f4cecd5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15995: 1aacf418cca861457c179e78114380132edc11bc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1aacf418cca8 drm/connector: Hookup the new drm_cmdline_mode panel_orientation member (v2)
7646641a936d drm/connector: Split out orientation quirk detection (v2)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15995/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
