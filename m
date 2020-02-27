Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9A01710B7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 06:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 611096E436;
	Thu, 27 Feb 2020 05:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C7286E07F;
 Thu, 27 Feb 2020 05:55:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53AA8A011B;
 Thu, 27 Feb 2020 05:55:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 05:55:11 -0000
Message-ID: <158278291131.29656.5893551810109809857@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226213042.1708867-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200226213042.1708867-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/perf=3A_Mark_up_the_racy_u?=
 =?utf-8?q?se_of_perf-=3Eexclusive=5Fstream?=
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

Series: series starting with [1/3] drm/i915/perf: Mark up the racy use of perf->exclusive_stream
URL   : https://patchwork.freedesktop.org/series/73978/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8011 -> Patchwork_16726
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/index.html

Known issues
------------

  Here are the changes found in Patchwork_16726 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2] ([fdo#109635] / [i915#217])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([fdo#111096] / [i915#323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_busy@basic-wait-before-default:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [DMESG-FAIL][7] ([i915#765]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/fi-icl-y/igt@i915_selftest@live_active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][9] ([fdo#108569]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/fi-icl-y/igt@i915_selftest@live_execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][11] ([fdo#106070] / [i915#424]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][13] ([i915#44]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][15] ([CI#94] / [i915#402]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-tgl-dsi fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8011 -> Patchwork_16726

  CI-20190529: 20190529
  CI_DRM_8011: 39d6d8bcc9734483569c4422798a09f5bc025a9a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16726: cc6065ea6703a74ce4e5615a21fc5e6af527ba2d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cc6065ea6703 drm/i915/perf: Wait for lrc_reconfigure on disable
8007f2744448 drm/i915/perf: Manually acquire engine-wakeref around use of kernel_context
2083940c11cf drm/i915/perf: Mark up the racy use of perf->exclusive_stream

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
