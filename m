Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8AA467032
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 03:47:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25ACF6E0C4;
	Fri,  3 Dec 2021 02:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 22B3F6E0C4;
 Fri,  3 Dec 2021 02:47:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A6A3AADD3;
 Fri,  3 Dec 2021 02:47:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1676667432768704125=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Fri, 03 Dec 2021 02:47:23 -0000
Message-ID: <163849964308.5409.15222522349236878019@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118205432.579910-1-michael.cheng@intel.com>
In-Reply-To: <20211118205432.579910-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Re-use_i915_macros_for_checking_PTEs_=28rev12=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1676667432768704125==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Re-use i915 macros for checking PTEs (rev12)
URL   : https://patchwork.freedesktop.org/series/97090/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10957 -> Patchwork_21736
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21736 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21736, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/index.html

Participating hosts (38 -> 35)
------------------------------

  Additional (2): fi-kbl-soraka fi-pnv-d510 
  Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21736:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6600u:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-kefka:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
    - fi-glk-dsi:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-6700k2:      NOTRUN -> [DMESG-FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-8700k:       [PASS][8] -> [DMESG-FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-n3050:       [PASS][10] -> [DMESG-FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7567u:       [PASS][12] -> [DMESG-FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][14] -> [DMESG-FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bxt-dsi:         [PASS][16] -> [DMESG-FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-7500u:       [PASS][18] -> [DMESG-FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_21736 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][20] ([fdo#109271]) +23 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - fi-ivb-3770:        NOTRUN -> [SKIP][21] ([fdo#109271]) +17 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][22] ([fdo#109271]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [PASS][25] -> [FAIL][26] ([i915#3049])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-icl-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][27] -> [INCOMPLETE][28] ([i915#4432])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][29] ([i915#1886] / [i915#2291])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@objects:
    - fi-icl-u2:          [PASS][30] -> [DMESG-WARN][31] ([i915#2867]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-icl-u2/igt@i915_selftest@live@objects.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-icl-u2/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][32] -> [DMESG-FAIL][33] ([i915#4528])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#533])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][36] ([fdo#109271]) +57 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][37] ([i915#2426] / [i915#4312])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-bdw-5557u/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][38] ([i915#3928] / [i915#4312])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-rkl-guc/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][39] ([fdo#109271] / [i915#2403] / [i915#4312])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][40] ([i915#3303]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6700k2:      [INCOMPLETE][42] ([i915#198]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4432]: https://gitlab.freedesktop.org/drm/intel/issues/4432
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_10957 -> Patchwork_21736

  CI-20190529: 20190529
  CI_DRM_10957: 10716ba5171eb4158a11d1c4fa773254751023e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6299: 0933b7ccdb2bb054b6a8154171e35315d84299b7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21736: 11b7af9a808ea221e144dcb400df84f8ac04e016 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

11b7af9a808e drm/i915: Re-use i915 macros for checking PTEs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/index.html

--===============1676667432768704125==
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
<tr><td><b>Series:</b></td><td>drm/i915: Re-use i915 macros for checking PTEs (rev12)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97090/">https://patchwork.freedesktop.org/series/97090/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10957 -&gt; Patchwork_21736</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21736 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21736, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (2): fi-kbl-soraka fi-pnv-d510 <br />
  Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21736:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-skl-6700k2/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-7567u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-7500u/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21736 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-ivb-3770/igt@amdgpu/amd_cs_nop@fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-icl-u2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-icl-u2/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4432">i915#4432</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-icl-u2/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-icl-u2/igt@i915_selftest@live@objects.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10957/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21736/fi-skl-6700k2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10957 -&gt; Patchwork_21736</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10957: 10716ba5171eb4158a11d1c4fa773254751023e9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6299: 0933b7ccdb2bb054b6a8154171e35315d84299b7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21736: 11b7af9a808ea221e144dcb400df84f8ac04e016 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>11b7af9a808e drm/i915: Re-use i915 macros for checking PTEs</p>

</body>
</html>

--===============1676667432768704125==--
