Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C5519F5C4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 14:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A716E3A0;
	Mon,  6 Apr 2020 12:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5DE66E3A0;
 Mon,  6 Apr 2020 12:28:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AEF1AA00FD;
 Mon,  6 Apr 2020 12:28:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 06 Apr 2020 12:28:13 -0000
Message-ID: <158617609368.4194.12101634326550151449@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUHJl?=
 =?utf-8?q?fer_drm=5FWARN*_over_WARN*?=
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

Series: Prefer drm_WARN* over WARN*
URL   : https://patchwork.freedesktop.org/series/75543/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8259 -> Patchwork_17216
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17216 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17216, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17216/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17216:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17216/fi-bsw-nick/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17216 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-bsw-nick:        [PASS][2] -> [INCOMPLETE][3] ([i915#1250])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17216/fi-bsw-nick/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][4] -> [FAIL][5] ([i915#1158])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17216/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [PASS][6] -> [INCOMPLETE][7] ([i915#1580])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17216/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][8] -> [FAIL][9] ([i915#976])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17216/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][10] -> [SKIP][11] ([fdo#109271]) +24 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17216/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1158]: https://gitlab.freedesktop.org/drm/intel/issues/1158
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (53 -> 47)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8259 -> Patchwork_17216

  CI-20190529: 20190529
  CI_DRM_8259: 450fc86b62651336f9b5fde79c068df7b4c95aa4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5571: da79d5fa2ebed237f0561a54b4b63bae6f21503a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17216: 4c4c2b16486bf668030b6be413ec16ed24ff0ed9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4c4c2b16486b drm/i915/runtime_pm: Prefer drm_WARN* over WARN*
db552aba6881 drm/i915/pm: Prefer drm_WARN_ON over WARN_ON
0af155c5b3f1 drm/i915/pmu: Prefer drm_WARN_ON over WARN_ON
d9387cef2125 drm/i915/i915_drv: Prefer drm_WARN_ON over WARN_ON
a09caf119a41 drm/i915/gem: Prefer drm_WARN* over WARN*
63fc326a1fca drm/i915/display/vlv_dsi: Prefer drm_WARN_ON over WARN_ON
ccea1b50c254 drm/i915/display/tc: Prefer drm_WARN_ON over WARN_ON
a17137b9ca74 drm/i915/display/sdvo: Prefer drm_WARN* over WARN*
e61a3429efb8 drm/i915/display/overlay: Prefer drm_WARN_ON over WARN_ON
31d144a0fd99 drm/i915/display/global_state: Prefer drm_WARN* over WARN*
9343391f6779 drm/i915/display/frontbuffer: Prefer drm_WARN_ON over WARN_ON
3a60829da48b drm/i915/display/dpll_mgr: Prefer drm_WARN_ON over WARN_ON
462c17ba380f drm/i915/display/dp: Prefer drm_WARN* over WARN*
0aae019835f6 drm/i915/display/display: Prefer drm_WARN_ON over WARN_ON
cbddf2425b98 drm/i915/display/display: Prefer drm_WARN_ON over WARN_ON
9db54cf5c0c1 drm/i915/display/ddi: Prefer drm_WARN* over WARN*
ce36d1d4c808 drm/i915/display/atomic_plane: Prefer drm_WARN_ON over WARN_ON
2b3269120530 drm/i915/display/icl_dsi: Prefer drm_WARN_ON over WARN_ON

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17216/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
