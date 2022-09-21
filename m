Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D5B5C0202
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 17:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076A010E98F;
	Wed, 21 Sep 2022 15:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A91710E9B3;
 Wed, 21 Sep 2022 15:46:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4208CA363D;
 Wed, 21 Sep 2022 15:46:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4207915421807100570=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Date: Wed, 21 Sep 2022 15:46:58 -0000
Message-ID: <166377521826.11598.7585131340005908794@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220921144212.125521-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20220921144212.125521-1-balasubramani.vivekanandan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Don=27t_use_port_enum_as_register_offset?=
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

--===============4207915421807100570==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Don't use port enum as register offset
URL   : https://patchwork.freedesktop.org/series/108833/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12164 -> Patchwork_108833v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108833v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108833v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/index.html

Participating hosts (34 -> 45)
------------------------------

  Additional (12): fi-rkl-11600 bat-dg1-5 bat-dg2-8 bat-adlm-1 fi-icl-u2 bat-dg2-9 bat-adlp-6 bat-adln-1 bat-jsl-3 bat-rplp-1 bat-rpls-1 bat-dg2-11 
  Missing    (1): fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108833v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-rkl-11600:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-rkl-11600/igt@i915_module_load@load.html
    - bat-dg1-5:          NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-dg1-5/igt@i915_module_load@load.html
    - fi-rkl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-rkl-guc/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-rkl-guc/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-rpls-1}:       NOTRUN -> [DMESG-WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-rpls-1/igt@i915_module_load@load.html
    - {bat-adln-1}:       NOTRUN -> [DMESG-WARN][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-adln-1/igt@i915_module_load@load.html
    - {bat-rplp-1}:       NOTRUN -> [DMESG-WARN][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-rplp-1/igt@i915_module_load@load.html
    - {bat-dg2-9}:        NOTRUN -> [DMESG-WARN][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-dg2-9/igt@i915_module_load@load.html
    - {bat-adlp-6}:       NOTRUN -> [DMESG-WARN][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-adlp-6/igt@i915_module_load@load.html
    - {bat-adlm-1}:       NOTRUN -> [DMESG-WARN][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-adlm-1/igt@i915_module_load@load.html
    - {bat-dg2-8}:        NOTRUN -> [DMESG-WARN][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-dg2-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_108833v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][12] ([i915#2190])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][13] ([i915#4613]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_module_load@load:
    - fi-adl-ddr5:        [PASS][14] -> [INCOMPLETE][15] ([i915#1982])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-adl-ddr5/igt@i915_module_load@load.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-adl-ddr5/igt@i915_module_load@load.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][16] -> [INCOMPLETE][17] ([i915#4785])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][18] -> [INCOMPLETE][19] ([i915#146] / [i915#6712])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][20] ([fdo#111827]) +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-icl-u2:          NOTRUN -> [SKIP][21] ([i915#4103])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-icl-u2:          NOTRUN -> [WARN][22] ([i915#6008])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][23] ([fdo#109285])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-icl-u2:          NOTRUN -> [SKIP][24] ([i915#3555])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][25] ([fdo#109295] / [i915#3301])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][26] ([fdo#109295] / [i915#3301])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][27] ([fdo#109271] / [i915#4312] / [i915#5594])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-hsw-4770/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][28] ([i915#4312])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-dg1-5/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][29] ([i915#4312])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][30] ([i915#4312])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][31] ([i915#4312] / [i915#6884])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-rkl-guc/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-guc:         [FAIL][32] ([i915#6219] / [i915#6884]) -> [FAIL][33] ([i915#6641] / [i915#6884])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-kbl-guc/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-kbl-guc/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][34] ([i915#6219] / [i915#6884]) -> [FAIL][35] ([i915#6641] / [i915#6884])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-kbl-8809g/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-kbl-8809g/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][36] ([i915#6884]) -> [FAIL][37] ([i915#6641] / [i915#6884])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-apl-guc/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-apl-guc/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][38] ([i915#6884]) -> [FAIL][39] ([i915#6641] / [i915#6884])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-skl-guc/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][40] ([i915#6219] / [i915#6884]) -> [FAIL][41] ([i915#6641] / [i915#6884] / [i915#6894])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-kbl-soraka/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-kbl-soraka/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#6008]: https://gitlab.freedesktop.org/drm/intel/issues/6008
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6641]: https://gitlab.freedesktop.org/drm/intel/issues/6641
  [i915#6712]: https://gitlab.freedesktop.org/drm/intel/issues/6712
  [i915#6884]: https://gitlab.freedesktop.org/drm/intel/issues/6884
  [i915#6894]: https://gitlab.freedesktop.org/drm/intel/issues/6894


Build changes
-------------

  * Linux: CI_DRM_12164 -> Patchwork_108833v1

  CI-20190529: 20190529
  CI_DRM_12164: a1f63e144e545f0ce8f41f41005f2dfc552eb836 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6659: 1becf700a737a7a98555a0cfbe8566355377afb2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108833v1: a1f63e144e545f0ce8f41f41005f2dfc552eb836 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e1d745d3a0d8 drm/i915/display: Don't use port enum as register offset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/index.html

--===============4207915421807100570==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Don&#39;t use port enum as register offset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108833/">https://patchwork.freedesktop.org/series/108833/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12164 -&gt; Patchwork_108833v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108833v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_108833v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/index.html</p>
<h2>Participating hosts (34 -&gt; 45)</h2>
<p>Additional (12): fi-rkl-11600 bat-dg1-5 bat-dg2-8 bat-adlm-1 fi-icl-u2 bat-dg2-9 bat-adlp-6 bat-adln-1 bat-jsl-3 bat-rplp-1 bat-rpls-1 bat-dg2-11 <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108833v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-rkl-11600/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-dg1-5/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-rkl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-rkl-guc/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
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
<li>
<p>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-rpls-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-adln-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-rplp-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-rplp-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-dg2-9/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-adlp-6/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-adlm-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-dg2-8/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108833v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-adl-ddr5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-adl-ddr5/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6712">i915#6712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6008">i915#6008</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12164/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108833v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6641">i915#6641</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6894">i915#6894</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12164 -&gt; Patchwork_108833v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12164: a1f63e144e545f0ce8f41f41005f2dfc552eb836 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6659: 1becf700a737a7a98555a0cfbe8566355377afb2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108833v1: a1f63e144e545f0ce8f41f41005f2dfc552eb836 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e1d745d3a0d8 drm/i915/display: Don't use port enum as register offset</p>

</body>
</html>

--===============4207915421807100570==--
