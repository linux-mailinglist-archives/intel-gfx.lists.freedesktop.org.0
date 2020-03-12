Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CAF1828BC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 07:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCEC6E055;
	Thu, 12 Mar 2020 06:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8D1F6E055;
 Thu, 12 Mar 2020 06:05:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0D28A00C7;
 Thu, 12 Mar 2020 06:05:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 12 Mar 2020 06:05:57 -0000
Message-ID: <158399315791.4949.8766508731348137893@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
In-Reply-To: <20200311162300.1838847-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgR2Vu?=
 =?utf-8?q?11_workarounds_=28rev4=29?=
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

Series: Gen11 workarounds (rev4)
URL   : https://patchwork.freedesktop.org/series/74475/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8125 -> Patchwork_16946
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16946 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16946, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16946/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16946:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16946/fi-cfl-8700k/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16946 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16946/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][5] ([CI#94]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16946/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [INCOMPLETE][7] ([fdo#103927]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16946/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [DMESG-WARN][9] ([i915#1430]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16946/fi-apl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][11] ([fdo#111407]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16946/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430


Participating hosts (46 -> 37)
------------------------------

  Additional (1): fi-skl-6770hq 
  Missing    (10): fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-gdg-551 fi-bsw-kefka fi-byt-clapper fi-bsw-nick 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8125 -> Patchwork_16946

  CI-20190529: 20190529
  CI_DRM_8125: 8fc697c3de927ae930efead8fd43032c6e5f5094 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16946: 2b15d4f8d9ebd0de9575658e5f1d13ac0681f5ec @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2b15d4f8d9eb drm/i915: Add Wa_1605460711 / Wa_1408767742 to ICL and EHL
58057b50e24b drm/i915: Apply Wa_1406680159:icl, ehl as an engine workaround
e91c2cff71a8 drm/i915: Add Wa_1406306137:icl,ehl
8061421a8e45 drm/i915: Add Wa_1604278689:icl,ehl
47b6651fba9b drm/i915: Add Wa_1207131216:icl,ehl
c1f1da8df853 drm/i915: Handle all MCR ranges

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16946/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
