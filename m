Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9A15AE1A3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 09:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECFD610E5CD;
	Tue,  6 Sep 2022 07:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D551510E5CD;
 Tue,  6 Sep 2022 07:54:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE198A0078;
 Tue,  6 Sep 2022 07:54:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7138132924944087780=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Tue, 06 Sep 2022 07:54:46 -0000
Message-ID: <166245088680.8879.4993274044851000203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220906071457.28881-1-animesh.manna@intel.com>
In-Reply-To: <20220906071457.28881-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/pps=3A_added_get=5Fpps=5Fi?=
 =?utf-8?q?dx=28=29_hook_as_part_of_pps=5Fget=5Fregister=28=29_cleanup?=
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

--===============7138132924944087780==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/pps: added get_pps_idx() hook as part of pps_get_register() cleanup
URL   : https://patchwork.freedesktop.org/series/108171/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12074 -> Patchwork_108171v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108171v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108171v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/index.html

Participating hosts (44 -> 42)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (3): fi-cml-u2 fi-bdw-samus fi-hsw-4770 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108171v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-kbl-7567u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-kbl-7567u/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-kbl-7567u/igt@i915_module_load@load.html
    - fi-skl-6600u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-skl-6600u/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-skl-6600u/igt@i915_module_load@load.html
    - fi-icl-u2:          NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-icl-u2/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {fi-jsl-1}:         [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-jsl-1/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-jsl-1/igt@i915_module_load@load.html
    - {bat-rplp-1}:       [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/bat-rplp-1/igt@i915_module_load@load.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/bat-rplp-1/igt@i915_module_load@load.html
    - {fi-ehl-2}:         [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-ehl-2/igt@i915_module_load@load.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-ehl-2/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_108171v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][12] -> [DMESG-FAIL][13] ([i915#4528])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-kbl-7567u:       NOTRUN -> [FAIL][15] ([i915#4312] / [i915#6219])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-kbl-7567u/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][16] ([fdo#109271] / [i915#2403] / [i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-blb-e6850/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][17] ([i915#4312] / [i915#6599])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][18] ([i915#4312] / [i915#6599])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-8}:        [INCOMPLETE][19] ([i915#6580]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][21] ([fdo#103375]) -> [INCOMPLETE][22] ([i915#5982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6580]: https://gitlab.freedesktop.org/drm/intel/issues/6580
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645


Build changes
-------------

  * Linux: CI_DRM_12074 -> Patchwork_108171v1

  CI-20190529: 20190529
  CI_DRM_12074: c16b937da799ddbebf0d940aff159b96ce9fec0f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6644: 9a530abd8643805e586583b6cb1af522ddb43408 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108171v1: c16b937da799ddbebf0d940aff159b96ce9fec0f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

734c3f635b1b drm/i915/pps: Enabled 2nd pps for dual EDP scenario
a81edc40a431 drm/i915/pps: added get_pps_idx() hook as part of pps_get_register() cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/index.html

--===============7138132924944087780==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/pps: added get_pps_idx() hook as part of pps_get_register() cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108171/">https://patchwork.freedesktop.org/series/108171/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12074 -&gt; Patchwork_108171v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108171v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_108171v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/index.html</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (3): fi-cml-u2 fi-bdw-samus fi-hsw-4770 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108171v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-kbl-7567u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-kbl-7567u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-skl-6600u/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-skl-6600u/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-icl-u2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
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
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-jsl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-jsl-1/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/bat-rplp-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/bat-rplp-1/igt@i915_module_load@load.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-ehl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-ehl-2/igt@i915_module_load@load.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108171v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6580">i915#6580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108171v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12074 -&gt; Patchwork_108171v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12074: c16b937da799ddbebf0d940aff159b96ce9fec0f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6644: 9a530abd8643805e586583b6cb1af522ddb43408 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108171v1: c16b937da799ddbebf0d940aff159b96ce9fec0f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>734c3f635b1b drm/i915/pps: Enabled 2nd pps for dual EDP scenario<br />
a81edc40a431 drm/i915/pps: added get_pps_idx() hook as part of pps_get_register() cleanup</p>

</body>
</html>

--===============7138132924944087780==--
