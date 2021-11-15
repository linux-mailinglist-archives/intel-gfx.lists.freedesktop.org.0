Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E51044FD83
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 04:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097F289CDD;
	Mon, 15 Nov 2021 03:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF6E589CDD;
 Mon, 15 Nov 2021 03:36:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADFD5A7E03;
 Mon, 15 Nov 2021 03:36:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1739307788437187974=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Mon, 15 Nov 2021 03:36:46 -0000
Message-ID: <163694740668.2947.5892351995934284912@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211110102354.5640-1-william.tseng@intel.com>
In-Reply-To: <20211110102354.5640-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_let_HW_maintain_the_HS-TRAIL_timing_=28rev2=29?=
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

--===============1739307788437187974==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsi: let HW maintain the HS-TRAIL timing (rev2)
URL   : https://patchwork.freedesktop.org/series/96750/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10878 -> Patchwork_21583
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/index.html

Participating hosts (29 -> 26)
------------------------------

  Additional (2): fi-elk-e7500 fi-pnv-d510 
  Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-bsw-nick fi-skl-6600u 

Known issues
------------

  Here are the changes found in Patchwork_21583 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-multi-fence:
    - fi-blb-e6850:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-blb-e6850/igt@amdgpu/amd_basic@cs-multi-fence.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271]) +53 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-elk-e7500:       NOTRUN -> [FAIL][3] ([i915#2426])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-elk-e7500/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][4] ([i915#4528]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10878/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][6] ([i915#4269]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10878/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
    - {fi-hsw-gt1}:       [DMESG-WARN][8] ([i915#4290]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10878/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4290]: https://gitlab.freedesktop.org/drm/intel/issues/4290
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528


Build changes
-------------

  * Linux: CI_DRM_10878 -> Patchwork_21583

  CI-20190529: 20190529
  CI_DRM_10878: 9fccd12cfac1c863fa46d4d17c2d8ac25a44b190 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6280: 246bfd31dba6bf184b26b170d91d72c90a54be6b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21583: 59c9ecf03efc5ebc932ea5d5fd9eda31fe1450f0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

59c9ecf03efc drm/i915/dsi: let HW maintain the HS-TRAIL timing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/index.html

--===============1739307788437187974==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsi: let HW maintain the HS-TRAIL timing (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96750/">https://patchwork.freedesktop.org/series/96750/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10878 -&gt; Patchwork_21583</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/index.html</p>
<h2>Participating hosts (29 -&gt; 26)</h2>
<p>Additional (2): fi-elk-e7500 fi-pnv-d510 <br />
  Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-bsw-nick fi-skl-6600u </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21583 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-multi-fence:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-blb-e6850/igt@amdgpu/amd_basic@cs-multi-fence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10878/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10878/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10878/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4290">i915#4290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21583/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10878 -&gt; Patchwork_21583</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10878: 9fccd12cfac1c863fa46d4d17c2d8ac25a44b190 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6280: 246bfd31dba6bf184b26b170d91d72c90a54be6b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21583: 59c9ecf03efc5ebc932ea5d5fd9eda31fe1450f0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>59c9ecf03efc drm/i915/dsi: let HW maintain the HS-TRAIL timing</p>

</body>
</html>

--===============1739307788437187974==--
