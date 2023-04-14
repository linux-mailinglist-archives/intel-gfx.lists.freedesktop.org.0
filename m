Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 647386E21F3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 13:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66ED10E10D;
	Fri, 14 Apr 2023 11:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C66D210E10D;
 Fri, 14 Apr 2023 11:23:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C20FFAADEB;
 Fri, 14 Apr 2023 11:23:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3586075646217838642=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yang, Fei" <fei.yang@intel.com>
Date: Fri, 14 Apr 2023 11:23:07 -0000
Message-ID: <168147138778.26688.3053697198239455332@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230411042613.3178711-1-fei.yang@intel.com>
In-Reply-To: <20230411042613.3178711-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Define_MOCS_and_PAT_tables_for_MTL_=28rev4=29?=
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

--===============3586075646217838642==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Define MOCS and PAT tables for MTL (rev4)
URL   : https://patchwork.freedesktop.org/series/115980/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13005 -> Patchwork_115980v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_115980v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_115980v4, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115980v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-glk-j4005:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-glk-j4005/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-glk-j4005/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_engines:
    - fi-glk-j4005:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-glk-j4005:       [PASS][7] -> [DMESG-FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html
    - bat-dg2-11:         NOTRUN -> [INCOMPLETE][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-apl-guc:         [PASS][10] -> [DMESG-FAIL][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-mtlp-8}:       [ABORT][12] ([i915#8133]) -> [ABORT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-mtlp-8/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-mtlp-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_115980v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         [PASS][14] -> [ABORT][15] ([i915#6687] / [i915#7978])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [PASS][16] -> [FAIL][17] ([i915#8308])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][18] ([i915#6367] / [i915#7913] / [i915#7996])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-2:         NOTRUN -> [SKIP][19] ([i915#7828])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][20] ([i915#5354]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][21] -> [FAIL][22] ([i915#7932]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-2:         NOTRUN -> [SKIP][23] ([i915#1845])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-5:          [FAIL][24] ([i915#8308]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-dg1-5/igt@i915_pm_rps@basic-api.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg1-5/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg2-11:         [INCOMPLETE][26] ([i915#7609] / [i915#7913]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [TIMEOUT][28] ([i915#6794]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-rpls-2/igt@i915_selftest@live@mman.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-2:         [ABORT][30] ([i915#6687] / [i915#7978]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996
  [i915#8133]: https://gitlab.freedesktop.org/drm/intel/issues/8133
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_13005 -> Patchwork_115980v4

  CI-20190529: 20190529
  CI_DRM_13005: bf4d8875e662b5cda5aa9ce2cb978176697a60c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7254: 7fab01340a3f360abacd7914015be1ad485363d7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115980v4: bf4d8875e662b5cda5aa9ce2cb978176697a60c1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bbdebceee880 drm/i915: Allow user to set cache at BO creation
07cd29195496 drm/i915: making mtl pte encode generic for gen12
9d0abbd715a2 drm/i915: use pat_index instead of cache_level
61369576f482 drm/i915: preparation for using PAT index
bca530ec04b7 drm/i915/mtl: end support for set caching ioctl
78be98403b37 drm/i915/mtl: workaround coherency issue for Media
8ae4a57698ed drm/i915/mtl: Add PTE encode function
7c687930a8d4 drm/i915/mtl: Define MOCS and PAT tables for MTL
551fb94f1bc8 drm/i915/mtl: Set has_llc=0

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/index.html

--===============3586075646217838642==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Define MOCS and PAT tables for MTL (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115980/">https://patchwork.freedesktop.org/series/115980/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13005 -&gt; Patchwork_115980v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_115980v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_115980v4, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115980v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-apl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-apl-guc/igt@i915_selftest@live@execlists.html">ABORT</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-glk-j4005/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-glk-j4005/igt@i915_selftest@live@execlists.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-glk-j4005/igt@i915_selftest@live@gt_engines.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-glk-j4005/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> +3 similar issues</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/fi-apl-guc/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/fi-apl-guc/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8133">i915#8133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-mtlp-8/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115980v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-dg1-5/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg1-5/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13005/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115980v4/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13005 -&gt; Patchwork_115980v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13005: bf4d8875e662b5cda5aa9ce2cb978176697a60c1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7254: 7fab01340a3f360abacd7914015be1ad485363d7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115980v4: bf4d8875e662b5cda5aa9ce2cb978176697a60c1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bbdebceee880 drm/i915: Allow user to set cache at BO creation<br />
07cd29195496 drm/i915: making mtl pte encode generic for gen12<br />
9d0abbd715a2 drm/i915: use pat_index instead of cache_level<br />
61369576f482 drm/i915: preparation for using PAT index<br />
bca530ec04b7 drm/i915/mtl: end support for set caching ioctl<br />
78be98403b37 drm/i915/mtl: workaround coherency issue for Media<br />
8ae4a57698ed drm/i915/mtl: Add PTE encode function<br />
7c687930a8d4 drm/i915/mtl: Define MOCS and PAT tables for MTL<br />
551fb94f1bc8 drm/i915/mtl: Set has_llc=0</p>

</body>
</html>

--===============3586075646217838642==--
