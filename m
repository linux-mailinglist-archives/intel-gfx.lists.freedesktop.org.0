Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 314121182B5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 09:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FDB56E859;
	Tue, 10 Dec 2019 08:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14EAC6E859;
 Tue, 10 Dec 2019 08:48:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C6DCA0091;
 Tue, 10 Dec 2019 08:48:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 10 Dec 2019 08:48:14 -0000
Message-ID: <157596769411.18783.14908064577451438500@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210150415.10705-1-shawn.c.lee@intel.com>
In-Reply-To: <20191210150415.10705-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/cml=3A_Remove_unsupport_PCI_ID?=
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

Series: drm/i915/cml: Remove unsupport PCI ID
URL   : https://patchwork.freedesktop.org/series/70668/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7524 -> Patchwork_15662
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15662:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-guc}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-tgl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15662 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [PASS][2] -> [DMESG-WARN][3] ([i915#592])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][4] -> [DMESG-FAIL][5] ([i915#722])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][6] -> [FAIL][7] ([fdo#111096] / [i915#323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bwr-2160:        [PASS][8] -> [FAIL][9] ([i915#34])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [INCOMPLETE][10] ([i915#694]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][12] ([i915#722]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][14] ([i915#44]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92]) -> [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][18] -> [DMESG-FAIL][19] ([i915#553] / [i915#725])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][21] ([i915#62] / [i915#92]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7524/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#592]: https://gitlab.freedesktop.org/drm/intel/issues/592
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 45)
------------------------------

  Additional (7): fi-cml-u2 fi-cml-s fi-skl-6770hq fi-whl-u fi-icl-guc fi-skl-6600u fi-kbl-r 
  Missing    (7): fi-hsw-4770r fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-tgl-y fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7524 -> Patchwork_15662

  CI-20190529: 20190529
  CI_DRM_7524: 28ecf94a6f1072fc4744c06f5b3d267297125b37 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15662: 70d0910f13a4268d3b8b0964078b729b899e8ace @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

70d0910f13a4 drm/i915/cml: Separate U series pci id from origianl list.
1252381d27fa drm/i915/cml: Remove unsupport PCI ID

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15662/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
