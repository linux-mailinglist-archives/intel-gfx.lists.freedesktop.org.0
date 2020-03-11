Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 642671813DC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 10:01:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE4AA89DA5;
	Wed, 11 Mar 2020 09:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A393589DA5;
 Wed, 11 Mar 2020 09:01:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C49DA00CC;
 Wed, 11 Mar 2020 09:01:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 11 Mar 2020 09:01:54 -0000
Message-ID: <158391731463.13949.4440753378451181791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310142958.12039-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200310142958.12039-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Consolidate_forcewake_status_display?=
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

Series: drm/i915: Consolidate forcewake status display
URL   : https://patchwork.freedesktop.org/series/74522/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8112 -> Patchwork_16907
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16907 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16907, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16907/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16907:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-icl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16907/fi-icl-guc/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16907 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16907/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([fdo#109635] / [i915#217])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16907/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@prime_busy@basic-wait-before-default:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16907/fi-tgl-y/igt@prime_busy@basic-wait-before-default.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@unused-modifier:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-tgl-y/igt@kms_addfb_basic@unused-modifier.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16907/fi-tgl-y/igt@kms_addfb_basic@unused-modifier.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#111407]) -> [FAIL][12] ([fdo#111096] / [i915#323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16907/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 43)
------------------------------

  Additional (4): fi-skl-6770hq fi-bsw-nick fi-skl-6600u fi-bsw-n3050 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8112 -> Patchwork_16907

  CI-20190529: 20190529
  CI_DRM_8112: 032f2fe5c92eb1db6d417738431153c001a41bcc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16907: 4d356536f2ea70d2da480b76c9043bc65b190000 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4d356536f2ea drm/i915: Consolidate forcewake status display

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16907/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
