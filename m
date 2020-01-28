Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D391214BF27
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 19:06:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DB389C49;
	Tue, 28 Jan 2020 18:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B25A989BF1;
 Tue, 28 Jan 2020 18:06:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9CDDA011A;
 Tue, 28 Jan 2020 18:06:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 28 Jan 2020 18:06:10 -0000
Message-ID: <158023477066.20536.7517733157358915991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128083851.2566893-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200128083851.2566893-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_cec=5Fnotifier_to_intel=5Fconnector?=
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

Series: drm/i915: Move cec_notifier to intel_connector
URL   : https://patchwork.freedesktop.org/series/72649/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7833 -> Patchwork_16291
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/index.html

Known issues
------------

  Here are the changes found in Patchwork_16291 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][3] -> [DMESG-FAIL][4] ([i915#725])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][5] -> [FAIL][6] ([i915#217])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([fdo#111096] / [i915#323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-icl-guc:         [INCOMPLETE][9] ([i915#140]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [TIMEOUT][11] ([fdo#112271]) -> [FAIL][12] ([i915#694])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][13] ([i915#579]) -> [SKIP][14] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][15] ([i915#563]) -> [DMESG-FAIL][16] ([i915#725])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#998]: https://gitlab.freedesktop.org/drm/intel/issues/998


Participating hosts (50 -> 36)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (15): fi-ilk-m540 fi-bdw-samus fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-r fi-gdg-551 fi-cfl-8109u fi-elk-e7500 fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7833 -> Patchwork_16291

  CI-20190529: 20190529
  CI_DRM_7833: 8210f0f999e2d396a8611e0cabc2f6c6a52468de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5394: 991fd07bcd7add7a5beca2c95b72a994e62fbb75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16291: b7a25d4fb9cb2da349220dbdc78a083544d61e08 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b7a25d4fb9cb drm/i915: Move cec_notifier to intel_connector

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16291/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
