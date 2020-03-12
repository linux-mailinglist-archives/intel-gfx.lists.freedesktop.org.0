Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E7A183995
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 20:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964906EB32;
	Thu, 12 Mar 2020 19:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3611B6EB31;
 Thu, 12 Mar 2020 19:35:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25C3CA0019;
 Thu, 12 Mar 2020 19:35:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Thu, 12 Mar 2020 19:35:31 -0000
Message-ID: <158404173115.4948.15056075209787690387@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312185629.141280-1-rajatja@google.com>
In-Reply-To: <20200312185629.141280-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915_Support_for_integrated_privacy_screen?=
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

Series: drm/i915 Support for integrated privacy screen
URL   : https://patchwork.freedesktop.org/series/74650/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8127 -> Patchwork_16957
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/index.html

Known issues
------------

  Here are the changes found in Patchwork_16957 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][1] -> [FAIL][2] ([CI#94])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][3] ([i915#877]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][5] ([i915#1405]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - fi-ivb-3770:        [DMESG-WARN][7] ([i915#1405]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8127/fi-ivb-3770/igt@i915_selftest@live@mman.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/fi-ivb-3770/igt@i915_selftest@live@mman.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1405]: https://gitlab.freedesktop.org/drm/intel/issues/1405
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (42 -> 37)
------------------------------

  Additional (7): fi-bsw-n3050 fi-cfl-guc fi-snb-2520m fi-kbl-x1275 fi-bsw-kefka fi-kbl-7560u fi-kbl-r 
  Missing    (12): fi-ilk-m540 fi-bdw-samus fi-tgl-dsi fi-hsw-4200u fi-skl-6770hq fi-bdw-gvtdvm fi-bsw-cyan fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8127 -> Patchwork_16957

  CI-20190529: 20190529
  CI_DRM_8127: 6b843f994832ac95eafa8d380399c3aef2cab3e5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16957: 6d59d9dc39bf79232460b974d3909abcf8682925 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6d59d9dc39bf drm/i915: Enable support for integrated privacy screen
d25c3af2f2e2 drm/i915: Add helper code for ACPI privacy screen
50fff7891e7a drm/i915: Lookup and attach ACPI device node for connectors
500f89acca9c drm/connector: Add support for privacy-screen property
a0d97f65392d intel_acpi: Rename drm_dev local variable to dev

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16957/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
