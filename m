Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D902D17CD47
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 10:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA36A6E121;
	Sat,  7 Mar 2020 09:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1EBB6E121;
 Sat,  7 Mar 2020 09:34:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EACEBA0071;
 Sat,  7 Mar 2020 09:34:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Sat, 07 Mar 2020 09:34:43 -0000
Message-ID: <158357368393.20976.3693377113715297606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200307083023.76498-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200307083023.76498-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?anup_drm=5Fdp=5Fmst=5Ftopology=5Fcbs_hooks?=
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

Series: Cleanup drm_dp_mst_topology_cbs hooks
URL   : https://patchwork.freedesktop.org/series/74411/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8088 -> Patchwork_16873
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16873 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16873, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16873:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-hsw-peppy:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/fi-hsw-peppy/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@live@ring_submission}:
    - fi-hsw-peppy:       [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/fi-hsw-peppy/igt@i915_selftest@live@ring_submission.html

  
Known issues
------------

  Here are the changes found in Patchwork_16873 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [PASS][4] -> [FAIL][5] ([CI#94])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][6] -> [SKIP][7] ([fdo#109271]) +24 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@vgem_basic@mmap:
    - fi-tgl-y:           [PASS][8] -> [DMESG-WARN][9] ([CI#94] / [i915#402]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@vgem_basic@mmap.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/fi-tgl-y/igt@vgem_basic@mmap.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [DMESG-FAIL][10] ([i915#1314]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - fi-tgl-y:           [DMESG-WARN][12] ([CI#94] / [i915#402]) -> [PASS][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/fi-tgl-y/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1314]: https://gitlab.freedesktop.org/drm/intel/issues/1314
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 36)
------------------------------

  Additional (2): fi-bwr-2160 fi-tgl-dsi 
  Missing    (12): fi-hsw-4770r fi-bdw-5557u fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-cfl-8109u fi-skl-lmem fi-blb-e6850 fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8088 -> Patchwork_16873

  CI-20190529: 20190529
  CI_DRM_8088: 91dc8b179da374160a6bbdbd6987a512a10fbc02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16873: 919c98299d50ff3dc52f94afac423bd0a5c639cd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

919c98299d50 drm: Remove drm dp mst destroy_connector callbacks
2660c615761e drm: Add drm_dp_destroy_connector helper and use it
e13003542ac3 drm/dp_mst: Remove register_connector callback
8257f11b943e drm: Remove dp mst register connector callbacks
405ed930705a drm: Register connector instead of calling register_connector callback

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16873/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
