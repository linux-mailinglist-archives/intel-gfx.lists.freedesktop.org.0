Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77027170E3A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 03:10:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294ED6E4B6;
	Thu, 27 Feb 2020 02:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B09C96E4AF;
 Thu, 27 Feb 2020 02:09:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9E82A41FB;
 Thu, 27 Feb 2020 02:09:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 27 Feb 2020 02:09:57 -0000
Message-ID: <158276939766.29659.9923407602512577522@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224124004.26712-1-anshuman.gupta@intel.com>
In-Reply-To: <20200224124004.26712-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgMyBk?=
 =?utf-8?q?isplay_pipes_combination_system_support_=28rev5=29?=
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

Series: 3 display pipes combination system support (rev5)
URL   : https://patchwork.freedesktop.org/series/72468/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8010 -> Patchwork_16721
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/index.html

Known issues
------------

  Here are the changes found in Patchwork_16721 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [PASS][3] -> [DMESG-FAIL][4] ([fdo#108569])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-icl-y/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-dsi:         [PASS][5] -> [INCOMPLETE][6] ([fdo#108569])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-icl-dsi/igt@i915_selftest@live_hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/fi-icl-dsi/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_perf:
    - fi-apl-guc:         [PASS][7] -> [INCOMPLETE][8] ([fdo#103927])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-apl-guc/igt@i915_selftest@live_perf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/fi-apl-guc/igt@i915_selftest@live_perf.html

  * igt@kms_addfb_basic@invalid-get-prop:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([CI#94] / [i915#402]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-tgl-y/igt@kms_addfb_basic@invalid-get-prop.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/fi-tgl-y/igt@kms_addfb_basic@invalid-get-prop.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][11] -> [FAIL][12] ([fdo#111407])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - {fi-ehl-1}:         [DMESG-FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-ehl-1/igt@i915_selftest@live_active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/fi-ehl-1/igt@i915_selftest@live_active.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8010 -> Patchwork_16721

  CI-20190529: 20190529
  CI_DRM_8010: 97bbec4d80df1c6573fc7063ad830e8beefe07c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16721: 8118ce3076f26f957429aa29e2eb25a0c16f9132 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8118ce3076f2 drm/i915: Fix wrongly populated plane possible_crtcs bit mask

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16721/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
