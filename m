Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFC011F9AF
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 18:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A236E136;
	Sun, 15 Dec 2019 17:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91C626E12A;
 Sun, 15 Dec 2019 17:32:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FCF7A0073;
 Sun, 15 Dec 2019 17:32:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sun, 15 Dec 2019 17:32:03 -0000
Message-ID: <157643112349.27848.2264276544869521432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191215163810.52356-1-hdegoede@redhat.com>
In-Reply-To: <20191215163810.52356-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Control_panel_and_backlight_enable_GPIOs_from_VBT?=
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

Series: drm/i915/dsi: Control panel and backlight enable GPIOs from VBT
URL   : https://patchwork.freedesktop.org/series/70945/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7569 -> Patchwork_15773
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/index.html

Known issues
------------

  Here are the changes found in Patchwork_15773 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#563])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][3] ([i915#816]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][5] ([i915#725]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [DMESG-FAIL][7] ([i915#722]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [INCOMPLETE][9] ([i915#45]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-apl-guc:         [DMESG-WARN][11] ([i915#180]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7569/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms.html

  
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (34 -> 25)
------------------------------

  Additional (1): fi-elk-e7500 
  Missing    (10): fi-hsw-4770r fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7569 -> Patchwork_15773

  CI-20190529: 20190529
  CI_DRM_7569: 62c2abc0df8983aba79ba093413683c44e9c4748 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15773: 619b4acd14d58735d5dacdd365670fcb6329380b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

619b4acd14d5 drm/i915/dsi: Control panel and backlight enable GPIOs on BYT
080c4213d3a7 drm/i915/dsi: Move Crystal Cove PMIC panel GPIO lookup from mfd to the i915 driver
2d9012fa175f drm/i915/dsi: Init panel-enable GPIO to low when the LCD is initially off
95aabcc5ecf7 drm/i915/dsi: Move poking of panel-enable GPIO to intel_dsi_vbt.c
24c183bed8bd pinctrl: Export pinctrl_unregister_mappings

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15773/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
