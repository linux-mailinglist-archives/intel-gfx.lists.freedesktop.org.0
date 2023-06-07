Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5192727214
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 00:52:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3820F10E564;
	Wed,  7 Jun 2023 22:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED71C10E564;
 Wed,  7 Jun 2023 22:52:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6946AADD2;
 Wed,  7 Jun 2023 22:52:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0838681442014633277=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 07 Jun 2023 22:52:07 -0000
Message-ID: <168617832791.21181.7955647571822463437@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230607124941.19016-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230607124941.19016-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mst=3A_Make_sure_all_resources_are_freed_for_MST_topology?=
 =?utf-8?q?_manager_before_destroy?=
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

--===============0838681442014633277==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mst: Make sure all resources are freed for MST topology manager before destroy
URL   : https://patchwork.freedesktop.org/series/119010/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13245 -> Patchwork_119010v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/index.html

Participating hosts (38 -> 34)
------------------------------

  Missing    (4): fi-kbl-soraka fi-bsw-n3050 fi-apl-guc fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_119010v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-WARN][1] ([i915#6367])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [ABORT][2] ([i915#6687] / [i915#7978])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][3] ([i915#1845] / [i915#5354])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [DMESG-FAIL][4] ([i915#4258] / [i915#7913]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13245/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@guc:
    - bat-rpls-2:         [DMESG-WARN][6] ([i915#7852]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13245/bat-rpls-2/igt@i915_selftest@live@guc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [ABORT][8] ([i915#4983] / [i915#7911] / [i915#7920]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13245/bat-rpls-1/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dp1:
    - bat-adlp-9:         [FAIL][10] ([i915#4190]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13245/bat-adlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-adlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html

  
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4190]: https://gitlab.freedesktop.org/drm/intel/issues/4190
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978


Build changes
-------------

  * Linux: CI_DRM_13245 -> Patchwork_119010v1

  CI-20190529: 20190529
  CI_DRM_13245: 1e46797563ae19f55a141a03d4b8a4e3a41e467b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7321: f52cfd53f353fdaca537c810fbc35e09ffd07345 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119010v1: 1e46797563ae19f55a141a03d4b8a4e3a41e467b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

dd3b4fc628cd drm/i915/mst: Make sure all resources are freed for MST topology manager before destroy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/index.html

--===============0838681442014633277==
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
<tr><td><b>Series:</b></td><td>drm/i915/mst: Make sure all resources are freed for MST topology manager before destroy</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119010/">https://patchwork.freedesktop.org/series/119010/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13245 -&gt; Patchwork_119010v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): fi-kbl-soraka fi-bsw-n3050 fi-apl-guc fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119010v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13245/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13245/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-2/igt@i915_selftest@live@guc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13245/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13245/bat-adlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4190">i915#4190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119010v1/bat-adlp-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13245 -&gt; Patchwork_119010v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13245: 1e46797563ae19f55a141a03d4b8a4e3a41e467b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7321: f52cfd53f353fdaca537c810fbc35e09ffd07345 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119010v1: 1e46797563ae19f55a141a03d4b8a4e3a41e467b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>dd3b4fc628cd drm/i915/mst: Make sure all resources are freed for MST topology manager before destroy</p>

</body>
</html>

--===============0838681442014633277==--
