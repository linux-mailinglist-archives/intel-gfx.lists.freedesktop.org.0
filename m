Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F511E47D9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 17:44:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1D96E0D4;
	Wed, 27 May 2020 15:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A77A989C88;
 Wed, 27 May 2020 15:44:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A9A2A73C8;
 Wed, 27 May 2020 15:44:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 27 May 2020 15:44:04 -0000
Message-ID: <159059424449.342.10107127631242672671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527151235.25663-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200527151235.25663-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Remove_local_entries_from_GGTT_on_suspend?=
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

Series: drm/i915/gt: Remove local entries from GGTT on suspend
URL   : https://patchwork.freedesktop.org/series/77708/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8543 -> Patchwork_17792
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17792 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17792, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17792:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-pnv-d510/igt@runner@aborted.html
    - fi-byt-n2820:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-byt-n2820/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-ivb-3770/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-elk-e7500/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-blb-e6850/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17792 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-pnv-d510:        [PASS][8] -> [INCOMPLETE][9] ([i915#299])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-pnv-d510/igt@gem_exec_suspend@basic-s0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-pnv-d510/igt@gem_exec_suspend@basic-s0.html
    - fi-blb-e6850:       [PASS][10] -> [INCOMPLETE][11] ([i915#1242])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-blb-e6850/igt@gem_exec_suspend@basic-s0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-blb-e6850/igt@gem_exec_suspend@basic-s0.html
    - fi-elk-e7500:       [PASS][12] -> [INCOMPLETE][13] ([i915#66])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-elk-e7500/igt@gem_exec_suspend@basic-s0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-elk-e7500/igt@gem_exec_suspend@basic-s0.html
    - fi-ilk-650:         [PASS][14] -> [INCOMPLETE][15] ([i915#1242])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html
    - fi-ivb-3770:        [PASS][16] -> [INCOMPLETE][17] ([i915#1242])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-4770:        [PASS][18] -> [INCOMPLETE][19] ([i915#1242])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-j1900:       [PASS][20] -> [INCOMPLETE][21] ([i915#45])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-n2820:       [PASS][22] -> [INCOMPLETE][23] ([i915#45])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-byt-n2820/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-bsw-nick:        [INCOMPLETE][24] ([i915#1250] / [i915#1436]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8543/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/fi-bsw-nick/igt@debugfs_test@read_all_entries.html

  
  [i915#1242]: https://gitlab.freedesktop.org/drm/intel/issues/1242
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66


Participating hosts (51 -> 42)
------------------------------

  Missing    (9): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8543 -> Patchwork_17792

  CI-20190529: 20190529
  CI_DRM_8543: 3fcc7e306e95013f1f4c527e0dda96197e1243bf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17792: a02746708aab03e4d38918eae1c7070df4e099ea @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a02746708aab drm/i915/gt: Remove local entries from GGTT on suspend

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17792/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
