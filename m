Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A965018E237
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2020 15:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9D606E334;
	Sat, 21 Mar 2020 14:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4FA16E332;
 Sat, 21 Mar 2020 14:55:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9744BA010F;
 Sat, 21 Mar 2020 14:55:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 21 Mar 2020 14:55:15 -0000
Message-ID: <158480251559.2757.9004100928722988985@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200321135218.6922-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200321135218.6922-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Extend_intel=5Fwakeref_?=
 =?utf-8?q?to_support_delayed_puts?=
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

Series: series starting with [1/4] drm/i915: Extend intel_wakeref to support delayed puts
URL   : https://patchwork.freedesktop.org/series/74938/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8167 -> Patchwork_17042
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17042 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17042, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17042/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17042:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@mman:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-icl-dsi/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17042/fi-icl-dsi/igt@i915_selftest@live@mman.html

  
Known issues
------------

  Here are the changes found in Patchwork_17042 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][3] -> [DMESG-FAIL][4] ([i915#877])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17042/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6] ([fdo#106070] / [i915#424])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17042/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][7] ([CI#94]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17042/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][9] ([fdo#109635] / [i915#217]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17042/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (49 -> 36)
------------------------------

  Missing    (13): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-cfl-8109u fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8167 -> Patchwork_17042

  CI-20190529: 20190529
  CI_DRM_8167: b51a7e7f4f72cf780661a1e4b479e2b27ddbafc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17042: ad93345a88ebe797bf424c9cd6a32375228d30a3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ad93345a88eb drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission
87403a98caa1 drm/i915: Rely on direct submission to the queue
a4eb01fe1100 drm/i915/gt: Delay release of engine-pm after last retirement
ba10302d1256 drm/i915: Extend intel_wakeref to support delayed puts

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17042/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
