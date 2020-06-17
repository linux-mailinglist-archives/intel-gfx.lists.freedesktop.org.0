Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9921FC542
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 06:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A26B36E118;
	Wed, 17 Jun 2020 04:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FA6B6E118;
 Wed, 17 Jun 2020 04:30:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99D8EA0BA8;
 Wed, 17 Jun 2020 04:30:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 17 Jun 2020 04:30:42 -0000
Message-ID: <159236824262.29980.1388826083041848599@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200617033100.4044428-1-matthew.d.roper@intel.com>
In-Reply-To: <20200617033100.4044428-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVt?=
 =?utf-8?q?aining_RKL_patches_=28rev6=29?=
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

Series: Remaining RKL patches (rev6)
URL   : https://patchwork.freedesktop.org/series/77971/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8638 -> Patchwork_17975
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17975 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17975, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17975/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17975:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17975/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17975/fi-tgl-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17975 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#1242])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8638/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17975/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1242]: https://gitlab.freedesktop.org/drm/intel/issues/1242
  [i915#1569]: https://gitlab.freedesktop.org/drm/intel/issues/1569
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029


Participating hosts (47 -> 10)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17975 prevented too many machines from booting.

  Missing    (37): fi-icl-u2 fi-skl-lmem fi-blb-e6850 fi-byt-n2820 fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-hsw-4770 fi-gdg-551 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ilk-m540 fi-ehl-1 fi-skl-guc fi-cfl-8700k fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-cfl-8109u fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8638 -> Patchwork_17975

  CI-20190529: 20190529
  CI_DRM_8638: 83818e4910cac8b84d8f915c773ab3f55fa30365 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5711: 90611a0c90afa4a46496c78a4faf9638a1538ac3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17975: a03fa5993eeac9c31bbf8ab3b6c79ac7f4b6e4d7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a03fa5993eea drm/i915/rkl: Add Wa_14011224835 for PHY B initialization
0b4911dd9a47 drm/i915/rkl: Add initial workarounds
1f13cd3654fb drm/i915/rkl: Handle HTI
c8d0aab47fb8 drm/i915/rkl: Add DPLL4 support
bf41347d51b5 drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17975/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
