Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2617B178908
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 04:18:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3A36E9A6;
	Wed,  4 Mar 2020 03:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8039F6E9A6;
 Wed,  4 Mar 2020 03:18:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78484A00FD;
 Wed,  4 Mar 2020 03:18:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 04 Mar 2020 03:18:23 -0000
Message-ID: <158329190346.426.5107103714317400631@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_add_OA_interrupt_support_=28rev5=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev5)
URL   : https://patchwork.freedesktop.org/series/54280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8061 -> Patchwork_16808
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/index.html

Known issues
------------

  Here are the changes found in Patchwork_16808 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@bo-too-small:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([CI#94] / [i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/fi-tgl-y/igt@kms_addfb_basic@bo-too-small.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/fi-tgl-y/igt@kms_addfb_basic@bo-too-small.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [DMESG-FAIL][3] ([fdo#112406]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-tgl-y:           [DMESG-WARN][5] ([CI#94] / [i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/fi-tgl-y/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][7] ([i915#217]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-7500u:       [FAIL][9] ([fdo#111096] / [i915#323]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [FAIL][11] ([i915#704]) -> [SKIP][12] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8061/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704


Participating hosts (47 -> 45)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (3): fi-byt-squawks fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8061 -> Patchwork_16808

  CI-20190529: 20190529
  CI_DRM_8061: e6398b7ae826a02206308a7e164bcf354bbf4993 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5490: f98b33cbd5b57bae52b8e2fae2039e89ac877822 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16808: cd7ce8c94fd002813b25c573ab7db8a7b7ce7f14 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cd7ce8c94fd0 drm/i915/perf: add flushing ioctl
4f90346ada25 drm/i915/perf: add interrupt enabling parameter
974daa81481c drm/i915: handle interrupts from the OA unit
b69637a72e34 drm/i915/perf: add new open param to configure polling of OA buffer
249c37e99eb0 drm/i915/perf: only append status when data is available
b97afa567f13 drm/i915/perf: move pollin setup to non hw specific code
e9632eb2cc8a drm/i915/perf: rework aging tail workaround

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16808/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
