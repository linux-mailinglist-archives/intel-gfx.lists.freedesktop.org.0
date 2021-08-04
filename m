Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5EE3E03ED
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 17:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7F9D6EAAB;
	Wed,  4 Aug 2021 15:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66B566EAB0;
 Wed,  4 Aug 2021 15:10:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23041A0118;
 Wed,  4 Aug 2021 15:10:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5627171870112786856=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Aug 2021 15:10:19 -0000
Message-ID: <162808981911.3398.9253048882613104330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgcmVt?=
 =?utf-8?q?ove_rcu_support_from_i915=5Faddress=5Fspace_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5627171870112786856==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: remove rcu support from i915_address_space (rev3)
URL   : https://patchwork.freedesktop.org/series/93314/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10445 -> Patchwork_20768
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20768 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20768, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20768:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
    - fi-tgl-1115g4:      [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-2}:         [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-ehl-2/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-ehl-2/igt@i915_selftest@live@execlists.html
    - {fi-tgl-dsi}:       [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - {fi-ehl-2}:         NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20768 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][36] -> [INCOMPLETE][37] ([i915#2782] / [i915#2940])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
    - fi-kbl-7567u:       [PASS][38] -> [INCOMPLETE][39] ([i915#2782] / [i915#794])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-7567u/igt@i915_selftest@live@execlists.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-7567u/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][40] -> [INCOMPLETE][41] ([i915#2782])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-icl-y/igt@i915_selftest@live@execlists.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][42] -> [INCOMPLETE][43] ([i915#2782] / [i915#794])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][44] ([fdo#109271] / [i915#2403] / [i915#2505])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][45] ([i915#1436] / [i915#2426] / [i915#3363])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][46] ([fdo#109271] / [i915#1436] / [i915#3690])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][47] ([i915#2426] / [i915#3363])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][48] ([i915#2426] / [i915#3363])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][49] ([i915#2426] / [i915#3363] / [k.org#202321])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][50] ([fdo#109271] / [i915#1436] / [i915#3690])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][51] ([i915#1436] / [i915#2426] / [i915#3363])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][52] ([i915#1436] / [i915#2426] / [i915#3363])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][53] ([i915#1436] / [i915#2426] / [i915#3363])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][54] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][55] ([i915#2426] / [i915#3363])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bxt-dsi/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][56] ([i915#1436] / [i915#2966] / [i915#3690])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][57] ([i915#2426] / [i915#3363])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][58] ([i915#2782] / [i915#3690])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][59] ([i915#1436] / [i915#2426] / [i915#3363])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][60] ([i915#1436] / [i915#2426] / [i915#3363])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][61] ([i915#1436] / [i915#2426] / [i915#3363])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-skl-6700k2/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][62] ([i915#1436] / [i915#2966] / [i915#3690])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [FAIL][63] ([i915#1888]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (35 -> 33)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10445 -> Patchwork_20768

  CI-20190529: 20190529
  CI_DRM_10445: ad27c4ace81558b6a9c3208913e222cfd0218503 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20768: 9b1a3e40d5cd6670e35d6a378b7c72e2f98e096b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b1a3e40d5cd drm/i915: Split out intel_context_create_user
79ceebe3d9e5 drm/i915: Stop rcu support for i915_address_space
a10bb14f41b0 drm/i915: use xa_lock/unlock for fpriv->vm_xa lookups
07447b03edbd drm/i915: Drop __rcu from gem_context->vm
c09e5c29dada drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem
64d464c97eac drm/i915: Add i915_gem_context_is_full_ppgtt
3722c9bfcdf1 drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam
b7f87d0e543a drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm
caf6e7f302eb drm/i915: Drop code to handle set-vm races from execbuf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/index.html

--===============5627171870112786856==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>remove rcu support from i915_address_space (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93314/">https://patchwork.freedesktop.org/series/93314/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10445 -&gt; Patchwork_20768</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20768 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20768, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20768:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-glk-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-glk-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-skl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-skl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-cfl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-1115g4/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-cml-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cml-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-ehl-2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-ehl-2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-ehl-2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20768 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-7567u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-7567u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10445/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20768/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10445 -&gt; Patchwork_20768</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10445: ad27c4ace81558b6a9c3208913e222cfd0218503 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20768: 9b1a3e40d5cd6670e35d6a378b7c72e2f98e096b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9b1a3e40d5cd drm/i915: Split out intel_context_create_user<br />
79ceebe3d9e5 drm/i915: Stop rcu support for i915_address_space<br />
a10bb14f41b0 drm/i915: use xa_lock/unlock for fpriv-&gt;vm_xa lookups<br />
07447b03edbd drm/i915: Drop __rcu from gem_context-&gt;vm<br />
c09e5c29dada drm/i915: Use i915_gem_context_get_eb_vm in intel_context_set_gem<br />
64d464c97eac drm/i915: Add i915_gem_context_is_full_ppgtt<br />
3722c9bfcdf1 drm/i915: Use i915_gem_context_get_eb_vm in ctx_getparam<br />
b7f87d0e543a drm/i915: Rename i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm<br />
caf6e7f302eb drm/i915: Drop code to handle set-vm races from execbuf</p>

</body>
</html>

--===============5627171870112786856==--
