Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7416C870C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 21:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EAB110E1DA;
	Fri, 24 Mar 2023 20:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3FDE10E1DA;
 Fri, 24 Mar 2023 20:47:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B13DAADE7;
 Fri, 24 Mar 2023 20:47:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4215731141647595846=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Fri, 24 Mar 2023 20:47:44 -0000
Message-ID: <167969086462.30853.253823230838878694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230324180253.4182375-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230324180253.4182375-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Disable_C6_on_MTL_A0_for_media_=28rev2=29?=
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

--===============4215731141647595846==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Disable C6 on MTL A0 for media (rev2)
URL   : https://patchwork.freedesktop.org/series/115610/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12912 -> Patchwork_115610v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_115610v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_115610v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_115610v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@objects:
    - bat-atsm-1:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-atsm-1/igt@i915_selftest@live@objects.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-atsm-1/igt@i915_selftest@live@objects.html

  
Known issues
------------

  Here are the changes found in Patchwork_115610v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-2:         NOTRUN -> [ABORT][3] ([i915#6687] / [i915#7978])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][4] -> [DMESG-FAIL][5] ([i915#5334])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [PASS][6] -> [ABORT][7] ([i915#7913])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][8] -> [ABORT][9] ([i915#4983] / [i915#7911])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-rpls-1/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][10] ([i915#6367] / [i915#7913] / [i915#7996])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-rpls-2/igt@i915_selftest@live@slpc.html
    - bat-adln-1:         NOTRUN -> [DMESG-FAIL][11] ([i915#6997])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-adln-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-adln-1:         NOTRUN -> [SKIP][12] ([i915#7828])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][13] ([i915#5354]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [INCOMPLETE][14] ([i915#4983] / [i915#7609]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][16] ([i915#4983] / [i915#7913]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-rpls-2/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:
    - bat-dg1-5:          [FAIL][18] ([fdo#103375]) -> [PASS][19] +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_12912 -> Patchwork_115610v2

  CI-20190529: 20190529
  CI_DRM_12912: 28b9e84f614bdf4dfc33f6ff44568da3fe98db91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7218: 8036123f781059c54a31240756794b17bd3d15dc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115610v2: 28b9e84f614bdf4dfc33f6ff44568da3fe98db91 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1be30db5b37b drm/i915/mtl: Disable C6 on MTL A0 for media

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/index.html

--===============4215731141647595846==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Disable C6 on MTL A0 for media (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115610/">https://patchwork.freedesktop.org/series/115610/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12912 -&gt; Patchwork_115610v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_115610v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_115610v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_115610v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@objects:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-atsm-1/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-atsm-1/igt@i915_selftest@live@objects.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115610v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12912/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115610v2/bat-dg1-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-2.html">PASS</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12912 -&gt; Patchwork_115610v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12912: 28b9e84f614bdf4dfc33f6ff44568da3fe98db91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7218: 8036123f781059c54a31240756794b17bd3d15dc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115610v2: 28b9e84f614bdf4dfc33f6ff44568da3fe98db91 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1be30db5b37b drm/i915/mtl: Disable C6 on MTL A0 for media</p>

</body>
</html>

--===============4215731141647595846==--
