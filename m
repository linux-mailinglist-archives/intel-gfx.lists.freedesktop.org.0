Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2BE85CFEF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 06:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCEA710E622;
	Wed, 21 Feb 2024 05:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9579D10E61F;
 Wed, 21 Feb 2024 05:43:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4342993412825163165=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/guc=3A_Add_Compute?=
 =?utf-8?q?_context_hint?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 05:43:53 -0000
Message-ID: <170849423360.178297.96552396506935532@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240221001416.696780-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20240221001416.696780-1-vinay.belgaumkar@intel.com>
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

--===============4342993412825163165==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Add Compute context hint
URL   : https://patchwork.freedesktop.org/series/130163/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14305 -> Patchwork_130163v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130163v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130163v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130163v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - bat-adlp-6:         [PASS][1] -> [DMESG-WARN][2] +39 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlp-6/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-adlp-6/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@client:
    - bat-dg2-8:          [PASS][3] -> [DMESG-WARN][4] +39 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-8/igt@i915_selftest@live@client.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-8/igt@i915_selftest@live@client.html
    - bat-adlm-1:         [PASS][5] -> [DMESG-WARN][6] +39 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlm-1/igt@i915_selftest@live@client.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-adlm-1/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@coherency:
    - bat-dg2-9:          [PASS][7] -> [DMESG-WARN][8] +38 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-9/igt@i915_selftest@live@coherency.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-9/igt@i915_selftest@live@coherency.html

  * igt@i915_selftest@live@dmabuf:
    - bat-rplp-1:         [PASS][9] -> [DMESG-WARN][10] +39 other tests dmesg-warn
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-rplp-1/igt@i915_selftest@live@dmabuf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-rplp-1/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [PASS][11] -> [DMESG-WARN][12] +39 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-adlp-9:         [PASS][13] -> [DMESG-WARN][14] +39 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-adln-1:         [PASS][15] -> [DMESG-WARN][16] +39 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adln-1/igt@i915_selftest@live@late_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-adln-1/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@perf:
    - bat-dg2-11:         [PASS][17] -> [DMESG-WARN][18] +38 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-11/igt@i915_selftest@live@perf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-11/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@slpc:
    - bat-atsm-1:         [PASS][19] -> [DMESG-WARN][20] +39 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-atsm-1/igt@i915_selftest@live@slpc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-atsm-1/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@uncore:
    - bat-dg1-7:          [PASS][21] -> [DMESG-WARN][22] +39 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg1-7/igt@i915_selftest@live@uncore.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-arls-1}:       [PASS][23] -> [DMESG-WARN][24] +1 other test dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-1/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-1/igt@i915_module_load@load.html
    - {bat-dg2-13}:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-13/igt@i915_module_load@load.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-13/igt@i915_module_load@load.html
    - {bat-arls-2}:       [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@i915_module_load@load.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-2/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - {bat-arls-2}:       [INCOMPLETE][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-dg2-14}:       [PASS][31] -> [DMESG-WARN][32] +38 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-14/igt@i915_pm_rpm@module-reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_130163v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - bat-dg2-11:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-11/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-11/igt@i915_module_load@reload.html
    - bat-dg2-9:          [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-9/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-9/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [PASS][37] -> [CRASH][38] ([i915#9947])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][39] -> [ABORT][40] ([i915#7911])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@vgem_basic@create:
    - {bat-arls-2}:       [FAIL][41] -> [PASS][42] +4 other tests pass
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@vgem_basic@create.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-2/igt@vgem_basic@create.html

  * igt@vgem_basic@dmabuf-mmap:
    - {bat-arls-2}:       [INCOMPLETE][43] -> [PASS][44] +5 other tests pass
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@vgem_basic@dmabuf-mmap.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-2/igt@vgem_basic@dmabuf-mmap.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#9947]: https://gitlab.freedesktop.org/drm/intel/issues/9947


Build changes
-------------

  * Linux: CI_DRM_14305 -> Patchwork_130163v1

  CI-20190529: 20190529
  CI_DRM_14305: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7718: 40e8b9122853f455c84afcfa56469a6bc9a0d564 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130163v1: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

298af428a37e drm/i915/guc: Add Compute context hint

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/index.html

--===============4342993412825163165==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Add Compute context hint</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130163/">https://patchwork.freedesktop.org/series/130163/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14305 -&gt; Patchwork_130163v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130163v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130163v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130163v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlp-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-adlp-6/igt@i915_module_load@reload.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-8/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlm-1/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-adlm-1/igt@i915_selftest@live@client.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@coherency:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-9/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-9/igt@i915_selftest@live@coherency.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-rplp-1/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-rplp-1/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-adlp-9/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-adln-1/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-adln-1/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-11/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-11/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-atsm-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-atsm-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg1-7/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +39 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-arls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-1/igt@i915_module_load@load.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-13/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-13/igt@i915_module_load@load.html">DMESG-WARN</a></li>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-2/igt@i915_module_load@load.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-2/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-14/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +38 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130163v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-11/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-11/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-dg2-9/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9947">i915#9947</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@vgem_basic@create.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-2/igt@vgem_basic@create.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@vgem_basic@dmabuf-mmap.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130163v1/bat-arls-2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14305 -&gt; Patchwork_130163v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14305: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7718: 40e8b9122853f455c84afcfa56469a6bc9a0d564 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130163v1: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>298af428a37e drm/i915/guc: Add Compute context hint</p>

</body>
</html>

--===============4342993412825163165==--
