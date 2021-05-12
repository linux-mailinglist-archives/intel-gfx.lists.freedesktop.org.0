Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C812837B2E0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 02:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958B76EB26;
	Wed, 12 May 2021 00:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72F716EB22;
 Wed, 12 May 2021 00:01:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67619A8832;
 Wed, 12 May 2021 00:01:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 12 May 2021 00:01:38 -0000
Message-ID: <162077769838.28503.14994222790489668055@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210511231757.14873-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210511231757.14873-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVu?=
 =?utf-8?q?ame_all_CSR_references_to_DMC?=
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
Content-Type: multipart/mixed; boundary="===============1207006967=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1207006967==
Content-Type: multipart/alternative;
 boundary="===============9131197044074647531=="

--===============9131197044074647531==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Rename all CSR references to DMC
URL   : https://patchwork.freedesktop.org/series/90043/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10071 -> Patchwork_20105
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20105 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20105, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20105:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-tgl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-tgl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-elk-e7500:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_20105 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#203] / [i915#262])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-bsw-n3050:       [PASS][7] -> [FAIL][8] ([i915#3457])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-glk-dsi:         [PASS][9] -> [FAIL][10] ([i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-bsw-nick:        [PASS][11] -> [FAIL][12] ([i915#3457]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html
    - fi-bsw-kefka:       [PASS][13] -> [FAIL][14] ([i915#3457]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@gem_exec_fence@nb-await@bcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-kefka/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [PASS][15] -> [DMESG-WARN][16] ([i915#262])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_wait@busy@all:
    - fi-apl-guc:         [PASS][17] -> [FAIL][18] ([i915#3457])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-apl-guc/igt@gem_wait@busy@all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-apl-guc/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bwr-2160:        [PASS][19] -> [FAIL][20] ([i915#3457])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bwr-2160/igt@gem_wait@wait@all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bwr-2160/igt@gem_wait@wait@all.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [PASS][21] -> [FAIL][22] ([i915#2416])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@busy@all:
    - fi-elk-e7500:       [FAIL][23] ([i915#3457]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@gem_busy@busy@all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-elk-e7500/igt@gem_busy@busy@all.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-bsw-kefka:       [FAIL][25] ([i915#3457]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-bsw-nick:        [FAIL][27] ([i915#3457]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [FAIL][29] ([i915#3177] / [i915#3457]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_wait@busy@all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-nick/igt@gem_wait@busy@all.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-elk-e7500:       [FAIL][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-ilk-650:         [FAIL][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
    - fi-bsw-kefka:       [FAIL][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-r:           [DMESG-WARN][37] ([i915#3457]) -> [DMESG-WARN][38] ([i915#1982] / [i915#3457])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-kbl-r/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-kbl-r/igt@i915_module_load@reload.html
    - fi-elk-e7500:       [DMESG-FAIL][39] ([i915#3457]) -> [DMESG-WARN][40] ([i915#3457])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [DMESG-FAIL][41] ([i915#3457]) -> [DMESG-WARN][42] ([i915#3457])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-glk-dsi/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [DMESG-FAIL][43] ([i915#3462]) -> [INCOMPLETE][44] ([i915#3462])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [DMESG-WARN][45] ([i915#3457]) -> [DMESG-FAIL][46] ([i915#3457])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bwr-2160/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       [FAIL][47] ([i915#2426] / [i915#3363]) -> [FAIL][48] ([i915#3363])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][49] ([i915#3363] / [k.org#202321]) -> [FAIL][50] ([i915#2426] / [i915#3363] / [k.org#202321])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][51] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][52] ([i915#1436] / [i915#3363])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-kbl-soraka/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][53] ([i915#3363]) -> [FAIL][54] ([i915#2426] / [i915#3363])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-guc/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][55] ([i915#1436] / [i915#3363]) -> [FAIL][56] ([i915#1436] / [i915#2426] / [i915#3363])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-skl-6700k2/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (46 -> 41)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-icl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10071 -> Patchwork_20105

  CI-20190529: 20190529
  CI_DRM_10071: 77fc6f68ed347b0a4c6969f6adac70026d5b1449 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6082: 355269577baef0c5d8114e8851acaeac657e4fe6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20105: 5532dbf2c306eeffd042668f58c241aa7dbf53cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5532dbf2c306 drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h
438f793ebf03 drm/i915/dmc: Rename functions names having "csr"
d0c041938ae8 drm/i915/dmc: Rename macro names containing csr
55c18d96d67e drm/i915/dmc: s/HAS_CSR/HAS_DMC
79e2c73a294f drm/i915/dmc: s/intel_csr/intel_dmc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/index.html

--===============9131197044074647531==
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
<tr><td><b>Series:</b></td><td>Rename all CSR references to DMC</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90043/">https://patchwork.freedesktop.org/series/90043/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10071 -&gt; Patchwork_20105</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20105 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20105, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20105:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-tgl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-tgl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20105 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-n3050/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-kefka/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-apl-guc/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-apl-guc/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bwr-2160/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bwr-2160/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@gem_busy@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-elk-e7500/igt@gem_busy@busy@all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-nick/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-ilk-650/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-kbl-r/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-kbl-r/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20105/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-icl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10071 -&gt; Patchwork_20105</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10071: 77fc6f68ed347b0a4c6969f6adac70026d5b1449 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6082: 355269577baef0c5d8114e8851acaeac657e4fe6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20105: 5532dbf2c306eeffd042668f58c241aa7dbf53cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5532dbf2c306 drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h<br />
438f793ebf03 drm/i915/dmc: Rename functions names having "csr"<br />
d0c041938ae8 drm/i915/dmc: Rename macro names containing csr<br />
55c18d96d67e drm/i915/dmc: s/HAS_CSR/HAS_DMC<br />
79e2c73a294f drm/i915/dmc: s/intel_csr/intel_dmc</p>

</body>
</html>

--===============9131197044074647531==--

--===============1207006967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1207006967==--
