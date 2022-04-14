Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 658BA500FC1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 15:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A3310FCFA;
	Thu, 14 Apr 2022 13:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 294CC10FCFA;
 Thu, 14 Apr 2022 13:48:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B67AA01BB;
 Thu, 14 Apr 2022 13:48:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2038041840537412837=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 14 Apr 2022 13:48:46 -0000
Message-ID: <164994412617.1345.15244449917832519925@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649685475.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649685475.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_low_level_EDID_block_read_refactoring_etc=2E_=28rev9?=
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

--===============2038041840537412837==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: low level EDID block read refactoring etc. (rev9)
URL   : https://patchwork.freedesktop.org/series/102329/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11499 -> Patchwork_102329v9
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/index.html

Participating hosts (49 -> 44)
------------------------------

  Missing    (5): bat-dg1-5 fi-bsw-cyan bat-hsw-1 fi-hsw-4770 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_102329v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2] ([i915#146])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11499/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11499/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - {bat-dg2-8}:        [TIMEOUT][5] ([i915#5709]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11499/bat-dg2-8/igt@gem_ringfill@basic-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/bat-dg2-8/igt@gem_ringfill@basic-all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#5306]: https://gitlab.freedesktop.org/drm/intel/issues/5306
  [i915#5709]: https://gitlab.freedesktop.org/drm/intel/issues/5709


Build changes
-------------

  * Linux: CI_DRM_11499 -> Patchwork_102329v9

  CI-20190529: 20190529
  CI_DRM_11499: aad6e551495e0ff256adeae6106c8fa1bdb3faed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102329v9: aad6e551495e0ff256adeae6106c8fa1bdb3faed @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

16f4a3c1f57b drm/edid: add EDID block count and size helpers
55fa58906d82 drm/edid: add single point of return to drm_do_get_edid()
35ed0d14223f drm/edid: drop extra local var
042ca1e5d291 drm/edid: convert extension block read to EDID block read helper
e9e46c8fc10e drm/edid: use EDID block read helper in drm_do_get_edid()
089e5cdee4ba drm/edid: abstract an EDID block read helper
9375fc462e0f drm/edid: add typedef for block read function
b6c3a8c8f56f drm/edid: pass struct edid to connector_bad_edid()
1bcedf446591 drm/edid: add a helper to log dump an EDID block
d3d3c634ea4e drm/edid: refactor EDID block status printing
22891422dc78 drm/edid: have edid_block_check() detect blocks that are all zero
8093d175f8f6 drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/index.html

--===============2038041840537412837==
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
<tr><td><b>Series:</b></td><td>drm/edid: low level EDID block read refactoring etc. (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102329/">https://patchwork.freedesktop.org/series/102329/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11499 -&gt; Patchwork_102329v9</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/index.html</p>
<h2>Participating hosts (49 -&gt; 44)</h2>
<p>Missing    (5): bat-dg1-5 fi-bsw-cyan bat-hsw-1 fi-hsw-4770 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102329v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11499/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11499/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_ringfill@basic-all:<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11499/bat-dg2-8/igt@gem_ringfill@basic-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5709">i915#5709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v9/bat-dg2-8/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11499 -&gt; Patchwork_102329v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11499: aad6e551495e0ff256adeae6106c8fa1bdb3faed @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102329v9: aad6e551495e0ff256adeae6106c8fa1bdb3faed @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>16f4a3c1f57b drm/edid: add EDID block count and size helpers<br />
55fa58906d82 drm/edid: add single point of return to drm_do_get_edid()<br />
35ed0d14223f drm/edid: drop extra local var<br />
042ca1e5d291 drm/edid: convert extension block read to EDID block read helper<br />
e9e46c8fc10e drm/edid: use EDID block read helper in drm_do_get_edid()<br />
089e5cdee4ba drm/edid: abstract an EDID block read helper<br />
9375fc462e0f drm/edid: add typedef for block read function<br />
b6c3a8c8f56f drm/edid: pass struct edid to connector_bad_edid()<br />
1bcedf446591 drm/edid: add a helper to log dump an EDID block<br />
d3d3c634ea4e drm/edid: refactor EDID block status printing<br />
22891422dc78 drm/edid: have edid_block_check() detect blocks that are all zero<br />
8093d175f8f6 drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks</p>

</body>
</html>

--===============2038041840537412837==--
