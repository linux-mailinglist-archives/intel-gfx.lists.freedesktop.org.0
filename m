Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC565BE960
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 16:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A8A10E6E8;
	Tue, 20 Sep 2022 14:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1465610E6E6;
 Tue, 20 Sep 2022 14:51:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C07EA47EB;
 Tue, 20 Sep 2022 14:51:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0824956430989063685=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Date: Tue, 20 Sep 2022 14:51:28 -0000
Message-ID: <166368548801.1409.13302951571122652183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
In-Reply-To: <20220919130505.1984383-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_Pipewriteback_=28rev8=29?=
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

--===============0824956430989063685==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Pipewriteback (rev8)
URL   : https://patchwork.freedesktop.org/series/107440/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12160 -> Patchwork_107440v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107440v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107440v8, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/index.html

Participating hosts (48 -> 35)
------------------------------

  Missing    (13): fi-cml-u2 bat-dg1-5 fi-hsw-4200u bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 fi-ctg-p8600 bat-adln-1 fi-kbl-x1275 bat-rpls-1 fi-bdw-samus bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107440v8:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@late_gt_pm:
    - fi-glk-j4005:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {fi-tgl-mst}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-tgl-mst/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-tgl-mst/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_107440v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-pnv-d510:        [PASS][5] -> [INCOMPLETE][6] ([i915#6863])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-pnv-d510/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-pnv-d510/igt@debugfs_test@read_all_entries.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][8] ([i915#2403] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][9] ([i915#4312] / [i915#5257] / [i915#6884])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-glk-j4005/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][10] ([i915#4785]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-guc:         [FAIL][12] ([i915#6219]) -> [FAIL][13] ([i915#6219] / [i915#6884])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-kbl-guc/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-kbl-guc/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][14] ([i915#6219]) -> [FAIL][15] ([i915#6219] / [i915#6884])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-kbl-8809g/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][16] ([i915#6219]) -> [FAIL][17] ([i915#6219] / [i915#6884])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-kbl-soraka/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-kbl-soraka/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6863]: https://gitlab.freedesktop.org/drm/intel/issues/6863
  [i915#6884]: https://gitlab.freedesktop.org/drm/intel/issues/6884


Build changes
-------------

  * Linux: CI_DRM_12160 -> Patchwork_107440v8

  CI-20190529: 20190529
  CI_DRM_12160: 33a5599358a6f7bc7bff21369c758303639b5bab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6658: c27dcb9e0baca05abce8527c245b513f7a8f1059 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107440v8: 33a5599358a6f7bc7bff21369c758303639b5bab @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5b8505f71d82 drm/i915: Enabling WD Transcoder
65873bc1d616 drm/i915 : Changing intel_connector iterators
a43d1e0e0e7d drm/i915: Define WD trancoder for i915

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/index.html

--===============0824956430989063685==
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
<tr><td><b>Series:</b></td><td>Enable Pipewriteback (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107440/">https://patchwork.freedesktop.org/series/107440/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12160 -&gt; Patchwork_107440v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107440v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107440v8, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/index.html</p>
<h2>Participating hosts (48 -&gt; 35)</h2>
<p>Missing    (13): fi-cml-u2 bat-dg1-5 fi-hsw-4200u bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 fi-ctg-p8600 bat-adln-1 fi-kbl-x1275 bat-rpls-1 fi-bdw-samus bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107440v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@late_gt_pm:<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-tgl-mst/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-tgl-mst/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107440v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-pnv-d510/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6863">i915#6863</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12160/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107440v8/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6884">i915#6884</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12160 -&gt; Patchwork_107440v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12160: 33a5599358a6f7bc7bff21369c758303639b5bab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6658: c27dcb9e0baca05abce8527c245b513f7a8f1059 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107440v8: 33a5599358a6f7bc7bff21369c758303639b5bab @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5b8505f71d82 drm/i915: Enabling WD Transcoder<br />
65873bc1d616 drm/i915 : Changing intel_connector iterators<br />
a43d1e0e0e7d drm/i915: Define WD trancoder for i915</p>

</body>
</html>

--===============0824956430989063685==--
