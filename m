Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7104A7C7D3A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 07:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2D2610E5A4;
	Fri, 13 Oct 2023 05:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C971510E5A3;
 Fri, 13 Oct 2023 05:51:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C519CAA916;
 Fri, 13 Oct 2023 05:51:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1785003225692994534=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 13 Oct 2023 05:51:38 -0000
Message-ID: <169717629880.31155.17455549344152918808@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006133727.1822579-1-imre.deak@intel.com>
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Store_DSC_DPCD_capabilities_in_the_connector_=28rev9?=
 =?utf-8?q?=29?=
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

--===============1785003225692994534==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Store DSC DPCD capabilities in the connector (rev9)
URL   : https://patchwork.freedesktop.org/series/124723/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13751 -> Patchwork_124723v9
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_124723v9 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124723v9, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (2): bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124723v9:

### IGT changes ###

#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      [INCOMPLETE][1] ([i915#7443]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_124723v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#1886])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][6] -> [TIMEOUT][7] ([i915#6794] / [i915#7392])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-rpls-1/igt@i915_selftest@live@mman.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][8] -> [WARN][9] ([i915#8747])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][10] ([i915#6645])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271]) +9 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html
    - bat-rplp-1:         NOTRUN -> [SKIP][12] ([i915#3555] / [i915#3840])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-rplp-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][13] -> [FAIL][14] ([IGT#3])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [INCOMPLETE][15] ([i915#9275]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [DMESG-FAIL][17] ([i915#5334]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][19] ([i915#9414]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [FAIL][21] ([fdo#103375]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13751 -> Patchwork_124723v9

  CI-20190529: 20190529
  CI_DRM_13751: 3bfa85ac32f1466e2faedcaea45693922386315f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7533: 7533
  Patchwork_124723v9: 3bfa85ac32f1466e2faedcaea45693922386315f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7723b7266a34 drm/i915/dp: Remove unused DSC caps from intel_dp
59c62e3b9729 drm/i915/dp_mst: Use connector DSC DPCD in intel_dp_mst_mode_valid_ctx()
a2e6de868890 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_config()
c9ccaa7358a4 drm/i915/dp: Use connector DSC DPCD in intel_dp_mode_valid()
7cfc301f2271 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_get_slice_count()
19f6e83cd1a8 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_supports_format()
809f8f842865 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_params()
3a160d4e7c0a drm/i915/dp: Pass only the required DSC DPCD to intel_dp_sink_dsc_version_minor()
2e8b28b7f942 drm/i915/dp: Pass only the required i915 to intel_dp_source_dsc_version_minor()
6babeebb3122 drm/i915/dp: Pass connector DSC DPCD to drm_dp_dsc_sink_supported_input_bpcs()
898b68fcadc5 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_max_sink_compressed_bppx16()
cdcc5b1cc583 drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_dsc()
bfc3c343ff2b drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_fec()
8eb40c326a9f drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_max_bpp()
2dc9316ebc7d drm/i915/dp: Use connector DSC DPCD in i915_dsc_fec_support_show()
b4ed970cc819 drm/i915/dp: Use i915/intel connector local variables in i915_dsc_fec_support_show()
3f032a2dad38 drm/i915/dp_mst: Set connector DSC capabilities and decompression AUX
2232d61341e7 drm/i915/dp: Store DSC DPCD capabilities in the connector
1482f812ae48 drm/i915/dp: Sanitize DPCD revision check in intel_dp_get_dsc_sink_cap()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/index.html

--===============1785003225692994534==
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
<tr><td><b>Series:</b></td><td>drm/i915: Store DSC DPCD capabilities in the connector (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124723/">https://patchwork.freedesktop.org/series/124723/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13751 -&gt; Patchwork_124723v9</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_124723v9 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_124723v9, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_124723v9:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124723v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 other tests skip</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-rplp-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13751/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v9/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13751 -&gt; Patchwork_124723v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13751: 3bfa85ac32f1466e2faedcaea45693922386315f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7533: 7533<br />
  Patchwork_124723v9: 3bfa85ac32f1466e2faedcaea45693922386315f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7723b7266a34 drm/i915/dp: Remove unused DSC caps from intel_dp<br />
59c62e3b9729 drm/i915/dp_mst: Use connector DSC DPCD in intel_dp_mst_mode_valid_ctx()<br />
a2e6de868890 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_config()<br />
c9ccaa7358a4 drm/i915/dp: Use connector DSC DPCD in intel_dp_mode_valid()<br />
7cfc301f2271 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_get_slice_count()<br />
19f6e83cd1a8 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_supports_format()<br />
809f8f842865 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_params()<br />
3a160d4e7c0a drm/i915/dp: Pass only the required DSC DPCD to intel_dp_sink_dsc_version_minor()<br />
2e8b28b7f942 drm/i915/dp: Pass only the required i915 to intel_dp_source_dsc_version_minor()<br />
6babeebb3122 drm/i915/dp: Pass connector DSC DPCD to drm_dp_dsc_sink_supported_input_bpcs()<br />
898b68fcadc5 drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_max_sink_compressed_bppx16()<br />
cdcc5b1cc583 drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_dsc()<br />
bfc3c343ff2b drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_fec()<br />
8eb40c326a9f drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_max_bpp()<br />
2dc9316ebc7d drm/i915/dp: Use connector DSC DPCD in i915_dsc_fec_support_show()<br />
b4ed970cc819 drm/i915/dp: Use i915/intel connector local variables in i915_dsc_fec_support_show()<br />
3f032a2dad38 drm/i915/dp_mst: Set connector DSC capabilities and decompression AUX<br />
2232d61341e7 drm/i915/dp: Store DSC DPCD capabilities in the connector<br />
1482f812ae48 drm/i915/dp: Sanitize DPCD revision check in intel_dp_get_dsc_sink_cap()</p>

</body>
</html>

--===============1785003225692994534==--
