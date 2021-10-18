Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A7D43271B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 21:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9868800B;
	Mon, 18 Oct 2021 19:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 015758800B;
 Mon, 18 Oct 2021 19:07:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD91CA7DFB;
 Mon, 18 Oct 2021 19:07:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8214377873210520760=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 19:07:46 -0000
Message-ID: <163458406687.27086.17034666659075714138@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_PCH_modeset_code_into_its_own_file_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8214377873210520760==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move PCH modeset code into its own file (rev2)
URL   : https://patchwork.freedesktop.org/series/95863/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10753 -> Patchwork_21375
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/index.html

Known issues
------------

  Here are the changes found in Patchwork_21375 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-samus:       [PASS][3] -> [INCOMPLETE][4] ([i915#146])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-bdw-samus/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-bdw-samus/igt@gem_exec_suspend@basic-s3.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][5] ([i915#2940]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][7] ([i915#3921]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-bsw-cyan bat-dg1-6 


Build changes
-------------

  * Linux: CI_DRM_10753 -> Patchwork_21375

  CI-20190529: 20190529
  CI_DRM_10753: 57c1bcf63565db8d65783364c632a04a44bbd616 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6254: 51792e987da03ba2a6faf5857c12f1d173c87def @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21375: 4f18cafd1f4a074b9c608ef3bb25077ef2f88bc5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4f18cafd1f4a drm/i915: Introduce lpt_pch_disable()
39b8f7cf41e2 drm/i915: Move intel_ddi_fdi_post_disable() to fdi code
4ef845baae54 drm/i915: Introduce ilk_pch_disable() and ilk_pch_post_disable()
43488950420d drm/i915: Move iCLKIP readout to the pch code
4bfd17869e11 drm/i915: Extract ilk_pch_get_config()
25072419a975 drm/i915: Move LPT PCH readout code
3f2c8e4d7c8e drm/i915: Clean up the {ilk, lpt}_pch_enable() calling convention
9346281c5925 drm/i915: Move PCH modeset code to its own file
fe78f7aa4624 drm/i915: Move PCH refclok stuff into its own file

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/index.html

--===============8214377873210520760==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move PCH modeset code into its own file (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95863/">https://patchwork.freedesktop.org/series/95863/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10753 -&gt; Patchwork_21375</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21375 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bdw-samus:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-bdw-samus/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-bdw-samus/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10753/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21375/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-bsw-cyan bat-dg1-6 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10753 -&gt; Patchwork_21375</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10753: 57c1bcf63565db8d65783364c632a04a44bbd616 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6254: 51792e987da03ba2a6faf5857c12f1d173c87def @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21375: 4f18cafd1f4a074b9c608ef3bb25077ef2f88bc5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4f18cafd1f4a drm/i915: Introduce lpt_pch_disable()<br />
39b8f7cf41e2 drm/i915: Move intel_ddi_fdi_post_disable() to fdi code<br />
4ef845baae54 drm/i915: Introduce ilk_pch_disable() and ilk_pch_post_disable()<br />
43488950420d drm/i915: Move iCLKIP readout to the pch code<br />
4bfd17869e11 drm/i915: Extract ilk_pch_get_config()<br />
25072419a975 drm/i915: Move LPT PCH readout code<br />
3f2c8e4d7c8e drm/i915: Clean up the {ilk, lpt}_pch_enable() calling convention<br />
9346281c5925 drm/i915: Move PCH modeset code to its own file<br />
fe78f7aa4624 drm/i915: Move PCH refclok stuff into its own file</p>

</body>
</html>

--===============8214377873210520760==--
