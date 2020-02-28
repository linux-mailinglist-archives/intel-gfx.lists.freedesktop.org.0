Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 136271741E1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 23:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89FB76F4F1;
	Fri, 28 Feb 2020 22:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F397C6F4F1;
 Fri, 28 Feb 2020 22:16:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB0E3A7525;
 Fri, 28 Feb 2020 22:16:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 28 Feb 2020 22:16:03 -0000
Message-ID: <158292816393.7477.11405707639300908252@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228211605.25109-1-lucas.demarchi@intel.com>
In-Reply-To: <20200228211605.25109-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_nuke_skl_workaround_for_pre-production_hw_=28r?=
 =?utf-8?q?ev3=29?=
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

Series: drm/i915/display: nuke skl workaround for pre-production hw (rev3)
URL   : https://patchwork.freedesktop.org/series/71230/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8034 -> Patchwork_16769
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16769/index.html

Known issues
------------

  Here are the changes found in Patchwork_16769 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@perf:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([fdo#103927])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8034/fi-apl-guc/igt@i915_selftest@live@perf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16769/fi-apl-guc/igt@i915_selftest@live@perf.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][3] ([i915#877]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8034/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16769/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [DMESG-FAIL][5] ([i915#623]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8034/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16769/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][7] ([fdo#111096] / [i915#323]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8034/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16769/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][9] ([CI#94]) -> [INCOMPLETE][10] ([CI#94] / [i915#460])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8034/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16769/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (47 -> 40)
------------------------------

  Additional (2): fi-bsw-kefka fi-glk-dsi 
  Missing    (9): fi-ilk-m540 fi-bdw-5557u fi-ctg-p8600 fi-ivb-3770 fi-cfl-8109u fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8034 -> Patchwork_16769

  CI-20190529: 20190529
  CI_DRM_8034: f49e335968bf53de15d8c3e7c79047308ce9155e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16769: 3d35be24f014dbe969c286e01ba347ae8af00389 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3d35be24f014 drm/i915/display: nuke skl workaround for pre-production hw

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16769/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
