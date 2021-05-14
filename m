Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2A138144F
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 01:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0121F6E827;
	Fri, 14 May 2021 23:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1EFB6E112;
 Fri, 14 May 2021 23:38:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9094FA0019;
 Fri, 14 May 2021 23:38:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 14 May 2021 23:38:03 -0000
Message-ID: <162103548355.21337.16204637728003416217@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514225739.24201-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210514225739.24201-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVu?=
 =?utf-8?q?ame_all_CSR_references_to_DMC_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0118748874=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0118748874==
Content-Type: multipart/alternative;
 boundary="===============6121977230302755610=="

--===============6121977230302755610==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Rename all CSR references to DMC (rev2)
URL   : https://patchwork.freedesktop.org/series/90043/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10085 -> Patchwork_20129
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/index.html

Known issues
------------

  Here are the changes found in Patchwork_20129 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-bsw-kefka:       [PASS][2] -> [FAIL][3] ([i915#3457])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_exec_fence@basic-await@bcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-n3050:       [PASS][4] -> [FAIL][5] ([i915#3457])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html
    - fi-bsw-nick:        [PASS][6] -> [FAIL][7] ([i915#3457])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_exec_fence@basic-await@vcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-nick/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_wait@busy@all:
    - fi-bwr-2160:        [PASS][8] -> [FAIL][9] ([i915#3457])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bwr-2160/igt@gem_wait@busy@all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bwr-2160/igt@gem_wait@busy@all.html

  * igt@kms_busy@basic@modeset:
    - fi-ilk-650:         [PASS][10] -> [INCOMPLETE][11] ([i915#3457])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-ilk-650/igt@kms_busy@basic@modeset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-bwr-2160:        [PASS][12] -> [FAIL][13] ([i915#53])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-elk-e7500:       [PASS][14] -> [FAIL][15] ([i915#53]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-pnv-d510:        [PASS][16] -> [FAIL][17] ([i915#53])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-pnv-d510/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bsw-kefka:       [PASS][18] -> [FAIL][19] ([i915#53])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-bsw-kefka:       [FAIL][20] ([i915#3457]) -> [PASS][21] +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-bsw-n3050:       [FAIL][22] ([i915#3457]) -> [PASS][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-n3050/igt@gem_exec_fence@nb-await@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-n3050/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-nick:        [FAIL][24] ([i915#3457]) -> [PASS][25] +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][26] ([i915#2782]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-elk-e7500:       [FAIL][28] ([i915#53]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-ilk-650:         [FAIL][30] ([i915#53]) -> [PASS][31] +7 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-bsw-kefka:       [FAIL][32] ([i915#53]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][34] ([i915#3472]) -> [FAIL][35] ([i915#3457] / [i915#3472])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-cml-s:           [DMESG-WARN][36] ([i915#1982] / [i915#3457]) -> [DMESG-WARN][37] ([i915#3457])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-cml-s/igt@i915_module_load@reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-cml-s/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [DMESG-FAIL][38] ([i915#1982] / [i915#3457]) -> [DMESG-WARN][39] ([i915#1982] / [i915#3457])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-pnv-d510:        [DMESG-FAIL][40] ([i915#3457]) -> [DMESG-WARN][41] ([i915#3457])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@i915_selftest@live@mman.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-pnv-d510/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      [FAIL][42] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][43] ([i915#1436] / [i915#3363])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-kbl-soraka/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][44] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][45] ([i915#1436] / [i915#3363])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-kbl-guc/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-kbl-guc/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][46] ([i915#3363]) -> [FAIL][47] ([i915#2426] / [i915#3363])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-cfl-guc/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3472]: https://gitlab.freedesktop.org/drm/intel/issues/3472
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53


Participating hosts (33 -> 30)
------------------------------

  Missing    (3): fi-bdw-gvtdvm fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10085 -> Patchwork_20129

  CI-20190529: 20190529
  CI_DRM_10085: d8f31093420f3d54afebdd3d2a11c14acd17c973 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20129: 9a0374d7e50f197aaeeb24b021558c4808c52adf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9a0374d7e50f drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h
1c8af2ef23f0 drm/i915/dmc: Rename functions names having "csr"
bf305a360075 drm/i915/dmc: Rename macro names containing csr
3e0bf49df52a drm/i915/dmc: s/HAS_CSR/HAS_DMC
2614b89575a3 drm/i915/dmc: s/intel_csr/intel_dmc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/index.html

--===============6121977230302755610==
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
<tr><td><b>Series:</b></td><td>Rename all CSR references to DMC (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90043/">https://patchwork.freedesktop.org/series/90043/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10085 -&gt; Patchwork_20129</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20129 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-nick/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bwr-2160/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bwr-2160/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-ilk-650/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-pnv-d510/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-n3050/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-n3050/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-cml-s/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-cml-s/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10085/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20129/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 30)</h2>
<p>Missing    (3): fi-bdw-gvtdvm fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10085 -&gt; Patchwork_20129</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10085: d8f31093420f3d54afebdd3d2a11c14acd17c973 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20129: 9a0374d7e50f197aaeeb24b021558c4808c52adf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9a0374d7e50f drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h<br />
1c8af2ef23f0 drm/i915/dmc: Rename functions names having "csr"<br />
bf305a360075 drm/i915/dmc: Rename macro names containing csr<br />
3e0bf49df52a drm/i915/dmc: s/HAS_CSR/HAS_DMC<br />
2614b89575a3 drm/i915/dmc: s/intel_csr/intel_dmc</p>

</body>
</html>

--===============6121977230302755610==--

--===============0118748874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0118748874==--
