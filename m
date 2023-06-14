Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B997274C2
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 04:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B6410E585;
	Thu,  8 Jun 2023 02:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A7F710E585;
 Thu,  8 Jun 2023 02:13:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76EC2AADDD;
 Thu,  8 Jun 2023 02:13:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3262515375398662614=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Thu, 08 Jun 2023 02:13:24 -0000
Message-ID: <168619040444.18385.5317535699234571978@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606163942.330052-1-luciano.coelho@intel.com>
In-Reply-To: <20230606163942.330052-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev3=29?=
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

--===============3262515375398662614==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: implement internal workqueues (rev3)
URL   : https://patchwork.freedesktop.org/series/118947/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13246 -> Patchwork_118947v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/index.html

Participating hosts (37 -> 34)
------------------------------

  Missing    (3): bat-rpls-2 fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_118947v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [ABORT][1] ([i915#6687] / [i915#7978])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - {bat-adlp-11}:      [ABORT][2] ([i915#4423] / [i915#8011]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13246/bat-adlp-11/igt@core_auth@basic-auth.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@i915_module_load@load:
    - {bat-adlp-11}:      [DMESG-WARN][4] ([i915#4423]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13246/bat-adlp-11/igt@i915_module_load@load.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [ABORT][6] ([i915#7911] / [i915#7920] / [i915#7982]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13246/bat-rpls-1/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-rpls-1/igt@i915_selftest@live@requests.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1}:
    - bat-dg2-8:          [FAIL][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13246/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011


Build changes
-------------

  * Linux: CI_DRM_13246 -> Patchwork_118947v3

  CI-20190529: 20190529
  CI_DRM_13246: 140b8a06031370fc0cf0ef5a5ca8cca0a4083951 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7321: f52cfd53f353fdaca537c810fbc35e09ffd07345 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118947v3: 140b8a06031370fc0cf0ef5a5ca8cca0a4083951 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

01f12e3049a6 drm/i915/selftests: add local workqueue for SW fence selftest
ae9645ac1f46 drm/i915: add a dedicated workqueue inside drm_i915_private
e73d7fad3900 drm/i915: use pointer to i915 instead of rpm in wakeref

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/index.html

--===============3262515375398662614==
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
<tr><td><b>Series:</b></td><td>drm/i915: implement internal workqueues (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118947/">https://patchwork.freedesktop.org/series/118947/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13246 -&gt; Patchwork_118947v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): bat-rpls-2 fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118947v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13246/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-adlp-11/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13246/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-adlp-11/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13246/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1}:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13246/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v3/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13246 -&gt; Patchwork_118947v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13246: 140b8a06031370fc0cf0ef5a5ca8cca0a4083951 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7321: f52cfd53f353fdaca537c810fbc35e09ffd07345 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118947v3: 140b8a06031370fc0cf0ef5a5ca8cca0a4083951 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>01f12e3049a6 drm/i915/selftests: add local workqueue for SW fence selftest<br />
ae9645ac1f46 drm/i915: add a dedicated workqueue inside drm_i915_private<br />
e73d7fad3900 drm/i915: use pointer to i915 instead of rpm in wakeref</p>

</body>
</html>

--===============3262515375398662614==--
