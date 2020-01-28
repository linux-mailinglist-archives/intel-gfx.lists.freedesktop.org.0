Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E8014C3CD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 00:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 222E56F457;
	Tue, 28 Jan 2020 23:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD5DC6F457;
 Tue, 28 Jan 2020 23:59:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E463A0134;
 Tue, 28 Jan 2020 23:59:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 28 Jan 2020 23:59:16 -0000
Message-ID: <158025595662.20535.8905556378742999254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128163803.5954-1-jani.nikula@intel.com>
In-Reply-To: <20200128163803.5954-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_move_update_pipe_code_to_hdcp?=
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

Series: drm/i915/hdcp: move update pipe code to hdcp
URL   : https://patchwork.freedesktop.org/series/72679/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7833 -> Patchwork_16301
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/index.html

Known issues
------------

  Here are the changes found in Patchwork_16301 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2] ([i915#725])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [PASS][3] -> [DMESG-FAIL][4] ([i915#722])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [FAIL][5] ([fdo#103375]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [FAIL][7] ([fdo#111550]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][9] ([i915#563]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-icl-guc:         [INCOMPLETE][11] ([i915#140]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-icl-guc/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [INCOMPLETE][13] ([i915#816]) -> [TIMEOUT][14] ([fdo#112271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][15] ([i915#579]) -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][17] ([i915#725]) -> [DMESG-FAIL][18] ([i915#553] / [i915#725])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][19] ([fdo#103375]) -> [DMESG-WARN][20] ([IGT#4] / [i915#263])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (50 -> 43)
------------------------------

  Additional (1): fi-snb-2520m 
  Missing    (8): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7833 -> Patchwork_16301

  CI-20190529: 20190529
  CI_DRM_7833: 8210f0f999e2d396a8611e0cabc2f6c6a52468de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5394: 991fd07bcd7add7a5beca2c95b72a994e62fbb75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16301: c957043623a4fa0e2a5ea4bc9b540ffc1ed22a39 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c957043623a4 drm/i915/hdcp: move update pipe code to hdcp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
