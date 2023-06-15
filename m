Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FD87311C8
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 10:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2961010E499;
	Thu, 15 Jun 2023 08:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C388C10E499;
 Thu, 15 Jun 2023 08:09:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAC33A66C9;
 Thu, 15 Jun 2023 08:09:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4619053705498335482=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Date: Thu, 15 Jun 2023 08:09:41 -0000
Message-ID: <168681658175.10725.4472251957128071938@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR2V0?=
 =?utf-8?q?_optimal_audio_frequency_and_channels_=28rev3=29?=
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

--===============4619053705498335482==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Get optimal audio frequency and channels (rev3)
URL   : https://patchwork.freedesktop.org/series/119121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13270 -> Patchwork_119121v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_119121v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [PASS][2] -> [TIMEOUT][3] ([i915#6794] / [i915#7392])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-rpls-2/igt@i915_selftest@live@mman.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][4] -> [DMESG-FAIL][5] ([i915#8497])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-dg2-11:         [PASS][6] -> [ABORT][7] ([i915#7461] / [i915#7913])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-dg2-11/igt@i915_selftest@live@reset.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-dg2-11/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][8] -> [DMESG-FAIL][9] ([i915#6763])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [ABORT][10] ([i915#6687] / [i915#7978])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][11] ([i915#5334] / [i915#7872]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-1:         [ABORT][13] ([i915#7677]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-rpls-1/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-rpls-1/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][15] ([i915#4423]) -> [DMESG-WARN][16] ([i915#4423])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-adlp-11/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-adlp-11/igt@i915_module_load@load.html

  
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7677]: https://gitlab.freedesktop.org/drm/intel/issues/7677
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497


Build changes
-------------

  * Linux: CI_DRM_13270 -> Patchwork_119121v3

  CI-20190529: 20190529
  CI_DRM_13270: a8b181a60198ccf04a1ad1c34f46be4c2a5e64b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7329: d58b208c72b91a5d9cb7877363242a181a012182 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119121v3: a8b181a60198ccf04a1ad1c34f46be4c2a5e64b7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4947ae3dbce9 drm/i915/display: Add wrapper to Compute SAD
9fe37f8c4556 drm/i915/display: Configure and initialize HDMI audio capabilities
5a0ac7a9b51d drm/i915/hdmi: Optimize source audio parameter handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/index.html

--===============4619053705498335482==
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
<tr><td><b>Series:</b></td><td>Get optimal audio frequency and channels (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119121/">https://patchwork.freedesktop.org/series/119121/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13270 -&gt; Patchwork_119121v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119121v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-dg2-11/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-dg2-11/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-rpls-1/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7677">i915#7677</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-rpls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13270/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119121v3/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13270 -&gt; Patchwork_119121v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13270: a8b181a60198ccf04a1ad1c34f46be4c2a5e64b7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7329: d58b208c72b91a5d9cb7877363242a181a012182 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119121v3: a8b181a60198ccf04a1ad1c34f46be4c2a5e64b7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4947ae3dbce9 drm/i915/display: Add wrapper to Compute SAD<br />
9fe37f8c4556 drm/i915/display: Configure and initialize HDMI audio capabilities<br />
5a0ac7a9b51d drm/i915/hdmi: Optimize source audio parameter handling</p>

</body>
</html>

--===============4619053705498335482==--
