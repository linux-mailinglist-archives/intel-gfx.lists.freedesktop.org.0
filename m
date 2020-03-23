Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D254A18F9A7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 17:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02ECD6E2A8;
	Mon, 23 Mar 2020 16:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 170806E29E;
 Mon, 23 Mar 2020 16:25:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FE4AA47EB;
 Mon, 23 Mar 2020 16:25:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Mar 2020 16:25:43 -0000
Message-ID: <158498074303.9810.9296730320597432732@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323130935.13568-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200323130935.13568-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/execlists=3A_Pull_tasklet_?=
 =?utf-8?q?interrupt-bh_local_to_direct_submission?=
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

Series: series starting with [1/4] drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission
URL   : https://patchwork.freedesktop.org/series/74973/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8180 -> Patchwork_17054
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17054 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17054, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17054:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@contexts:
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/fi-bsw-nick/igt@gem_exec_parallel@contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17054 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-icl-dsi:         [PASS][2] -> [INCOMPLETE][3] ([i915#189])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/fi-icl-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][4] -> [DMESG-FAIL][5] ([fdo#108569])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-y/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][6] -> [FAIL][7] ([i915#217])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][8] ([fdo#103927] / [i915#656]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][10] ([i915#481]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [DMESG-FAIL][12] ([i915#481]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (40 -> 40)
------------------------------

  Additional (10): fi-bdw-5557u fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (10): fi-bdw-samus fi-skl-6770hq fi-byt-squawks fi-icl-u2 fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8180 -> Patchwork_17054

  CI-20190529: 20190529
  CI_DRM_8180: 257af0ddcea3a234dcb79579600f971edd47353f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5530: 2020d743940f06294d06006bb737be43fcd2881e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17054: 42c13a451e00d6b974abf23ab42bfd6de7cb30e1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

42c13a451e00 drm/i915/gem: Prevent switching of active GEM context VM
c9fc4147269c drm/i915: Allow for different modes of interruptible i915_active_wait
2e7463a5b755 drm/i915: Immediately execute the fenced work
cc3bda70c931 drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17054/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
