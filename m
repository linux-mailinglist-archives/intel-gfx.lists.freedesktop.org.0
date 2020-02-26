Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702131707C7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 19:34:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCCFD6EB60;
	Wed, 26 Feb 2020 18:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CB4C6E43A;
 Wed, 26 Feb 2020 18:34:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45ACBA47E6;
 Wed, 26 Feb 2020 18:34:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 18:34:39 -0000
Message-ID: <158274207925.21009.15884909428507434973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225162329.558359-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225162329.558359-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Autotune_idle_timeouts?=
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

Series: drm/i915/gt: Autotune idle timeouts
URL   : https://patchwork.freedesktop.org/series/73919/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8008 -> Patchwork_16709
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16709 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16709, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16709/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16709:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_lrc:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-bwr-2160/igt@i915_selftest@live_gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16709/fi-bwr-2160/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16709 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@gem_mmap@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16709/fi-tgl-y/igt@gem_mmap@basic.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-tgl-y:           [PASS][5] -> [INCOMPLETE][6] ([CI#94] / [i915#455])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16709/fi-tgl-y/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][7] ([fdo#108569]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-icl-y/igt@i915_selftest@live_execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16709/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@kms_addfb_basic@bad-pitch-0:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16709/fi-tgl-y/igt@kms_addfb_basic@bad-pitch-0.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#111407]) -> [FAIL][12] ([fdo#111096] / [i915#323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16709/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455


Participating hosts (52 -> 41)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (12): fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-cfl-8109u fi-skl-lmem fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16709

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16709: 251374a10d4da8da6dc216851ce57cf13c0fe6c0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

251374a10d4d drm/i915/gt: Autotune idle timeouts

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16709/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
