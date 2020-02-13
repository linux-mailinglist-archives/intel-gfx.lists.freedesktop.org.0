Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BFF15B600
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 01:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBA06E143;
	Thu, 13 Feb 2020 00:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD44C6E141;
 Thu, 13 Feb 2020 00:41:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B37BFA7525;
 Thu, 13 Feb 2020 00:41:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 13 Feb 2020 00:41:32 -0000
Message-ID: <158155449270.17961.4237962911684061252@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211183358.157448-1-lyude@redhat.com>
In-Reply-To: <20200211183358.157448-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_i915=3A_eDP_DPCD_backlight_control_detection_fixes_=28re?=
 =?utf-8?b?djIp?=
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

Series: drm/dp, i915: eDP DPCD backlight control detection fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/72991/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926 -> Patchwork_16538
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16538/index.html

Known issues
------------

  Here are the changes found in Patchwork_16538 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2] ([i915#198])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16538/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][3] -> [DMESG-FAIL][4] ([i915#1052])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16538/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
    - fi-cml-s:           [PASS][5] -> [DMESG-FAIL][6] ([i915#877])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16538/fi-cml-s/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-ehl-1}:         [INCOMPLETE][7] ([i915#937]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16538/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (45 -> 42)
------------------------------

  Additional (7): fi-hsw-peppy fi-skl-6770hq fi-glk-dsi fi-gdg-551 fi-bsw-kefka fi-kbl-7560u fi-kbl-r 
  Missing    (10): fi-kbl-soraka fi-ilk-m540 fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-cfl-8109u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16538

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16538: c5bf6ddf092a43ad512a0dd40d0b1958aab2a506 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c5bf6ddf092a drm/i915: Force DPCD backlight mode for some Dell CML 2020 panels
772152d6d874 drm/i915: Force DPCD backlight mode on X1 Extreme 2nd Gen 4K AMOLED panel
94ec9e5e69b6 drm/dp: Introduce EDID-based quirks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16538/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
