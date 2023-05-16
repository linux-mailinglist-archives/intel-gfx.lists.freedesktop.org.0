Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B92767050F6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 16:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED1810E248;
	Tue, 16 May 2023 14:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DD1510E248;
 Tue, 16 May 2023 14:38:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20842A47E9;
 Tue, 16 May 2023 14:38:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8549204072827759930=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 16 May 2023 14:38:33 -0000
Message-ID: <168424791312.14224.2288663126625037718@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230516122926.2720581-1-jani.nikula@intel.com>
In-Reply-To: <20230516122926.2720581-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_intel=5Fdisplay=5Firq=2Ec_include_order?=
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

--===============8549204072827759930==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fix intel_display_irq.c include order
URL   : https://patchwork.freedesktop.org/series/117816/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13151 -> Patchwork_117816v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_117816v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - bat-adls-5:         [PASS][1] -> [ABORT][2] ([i915#4391])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-adls-5/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-adls-5/igt@i915_module_load@load.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][3] ([i915#6367])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         NOTRUN -> [ABORT][4] ([i915#6687])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - {bat-mtlp-8}:       [TIMEOUT][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-mtlp-8/igt@i915_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-mtlp-8/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [ABORT][7] ([i915#4983] / [i915#7920] / [i915#7953]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][9] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-rpls-2/igt@i915_selftest@live@reset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][11] ([i915#7932]) -> [PASS][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-WARN][13] ([i915#6367] / [i915#7953]) -> [DMESG-WARN][14] ([i915#6367])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      [INCOMPLETE][15] ([i915#7443] / [i915#7953] / [i915#8102]) -> [INCOMPLETE][16] ([i915#7443] / [i915#8102])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
    - bat-rpls-1:         [ABORT][17] ([i915#6687] / [i915#7953] / [i915#7978]) -> [ABORT][18] ([i915#6687] / [i915#7978])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8102]: https://gitlab.freedesktop.org/drm/intel/issues/8102
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347


Build changes
-------------

  * Linux: CI_DRM_13151 -> Patchwork_117816v1

  CI-20190529: 20190529
  CI_DRM_13151: 4a28d03908b9d284f0b64a1fd9f5304761460db8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7292: 9d9475ffd3b5ae18fd8ec120595385f6c562f249 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117816v1: 4a28d03908b9d284f0b64a1fd9f5304761460db8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

265d72fc1d44 drm/i915: fix intel_display_irq.c include order

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/index.html

--===============8549204072827759930==
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
<tr><td><b>Series:</b></td><td>drm/i915: fix intel_display_irq.c include order</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117816/">https://patchwork.freedesktop.org/series/117816/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13151 -&gt; Patchwork_117816v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117816v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-adls-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-adls-5/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-mtlp-8/igt@i915_pm_rpm@basic-rte.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-mtlp-8/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-d-dp-1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8102">i915#8102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8102">i915#8102</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13151/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117816v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13151 -&gt; Patchwork_117816v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13151: 4a28d03908b9d284f0b64a1fd9f5304761460db8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7292: 9d9475ffd3b5ae18fd8ec120595385f6c562f249 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117816v1: 4a28d03908b9d284f0b64a1fd9f5304761460db8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>265d72fc1d44 drm/i915: fix intel_display_irq.c include order</p>

</body>
</html>

--===============8549204072827759930==--
