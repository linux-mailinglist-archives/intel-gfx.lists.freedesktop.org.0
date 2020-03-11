Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 655A4182325
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 21:09:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C476E9F3;
	Wed, 11 Mar 2020 20:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C98256E9F7;
 Wed, 11 Mar 2020 20:09:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1BD5A0091;
 Wed, 11 Mar 2020 20:09:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 11 Mar 2020 20:09:04 -0000
Message-ID: <158395734476.13951.5449933373684524585@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Hotplug_cleanups_=28rev4=29?=
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

Series: drm/i915: Hotplug cleanups (rev4)
URL   : https://patchwork.freedesktop.org/series/72348/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8121 -> Patchwork_16932
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16932 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16932, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16932/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16932:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16932/fi-skl-lmem/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16932/fi-kbl-soraka/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16932 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [PASS][4] -> [INCOMPLETE][5] ([fdo#112259] / [i915#1430])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16932/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [PASS][6] -> [INCOMPLETE][7] ([i915#424])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16932/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][8] -> [FAIL][9] ([fdo#111407])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16932/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][10] ([CI#94]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8121/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16932/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424


Participating hosts (42 -> 40)
------------------------------

  Additional (4): fi-skl-6770hq fi-ivb-3770 fi-skl-6600u fi-snb-2600 
  Missing    (6): fi-cml-u2 fi-cml-s fi-bsw-cyan fi-ctg-p8600 fi-cfl-8109u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8121 -> Patchwork_16932

  CI-20190529: 20190529
  CI_DRM_8121: c2e15accdf0c2b6e8b766659acc8159dc19c8869 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16932: dc883e676b6f27f06fbcf4b9ef36677b87601b92 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dc883e676b6f drm/i915: Use stashed away hpd isr bits in intel_digital_port_connected()
27a0a05e1962 drm/i915: Stash hpd status bits under dev_priv
01ddfb49b798 drm/i915: Turn intel_digital_port_connected() in a vfunc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16932/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
