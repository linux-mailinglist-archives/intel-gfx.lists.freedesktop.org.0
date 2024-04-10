Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D39289FBEA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 17:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E122D10EAA6;
	Wed, 10 Apr 2024 15:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708F110EB3C;
 Wed, 10 Apr 2024 15:44:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5133330023480663847=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/2?=
 =?utf-8?q?=5D_drm/print=3A_drop_include_debugfs=2Eh_and_include_where_neede?=
 =?utf-8?q?d?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Apr 2024 15:44:35 -0000
Message-ID: <171276387545.1332903.8210420465041131984@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240410141434.157908-1-jani.nikula@intel.com>
In-Reply-To: <20240410141434.157908-1-jani.nikula@intel.com>
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

--===============5133330023480663847==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/print: drop include debugfs.h and include where needed
URL   : https://patchwork.freedesktop.org/series/132280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14557 -> Patchwork_132280v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/index.html

Participating hosts (39 -> 33)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (7): bat-kbl-2 fi-bsw-n3050 fi-snb-2520m fi-glk-j4005 fi-cfl-8109u fi-blb-e6850 bat-dg2-11 

Known issues
------------

  Here are the changes found in Patchwork_132280v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][1] ([i915#10689])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/fi-kbl-8809g/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-dg2-8:          [ABORT][2] ([i915#10366] / [i915#10677]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14557/bat-dg2-8/igt@i915_selftest@live@gt_pm.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/bat-dg2-8/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hugepages:
    - fi-apl-guc:         [INCOMPLETE][4] ([i915#10461]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14557/fi-apl-guc/igt@i915_selftest@live@hugepages.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/fi-apl-guc/igt@i915_selftest@live@hugepages.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10461]: https://gitlab.freedesktop.org/drm/intel/issues/10461
  [i915#10677]: https://gitlab.freedesktop.org/drm/intel/issues/10677
  [i915#10689]: https://gitlab.freedesktop.org/drm/intel/issues/10689


Build changes
-------------

  * Linux: CI_DRM_14557 -> Patchwork_132280v1

  CI-20190529: 20190529
  CI_DRM_14557: bf24d40fae19bcceac3e32c4866079b4f10c70f9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7803: 9669a17ae56f1dcd22ba4c5cb39b3cd334a46862 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132280v1: bf24d40fae19bcceac3e32c4866079b4f10c70f9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8bf340e713b7 drm/print: drop include seq_file.h
e08c94f7f77e drm/print: drop include debugfs.h and include where needed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/index.html

--===============5133330023480663847==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/print: drop include debugfs.h and include where needed</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132280/">https://patchwork.freedesktop.org/series/132280/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14557 -&gt; Patchwork_132280v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/index.html</p>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (7): bat-kbl-2 fi-bsw-n3050 fi-snb-2520m fi-glk-j4005 fi-cfl-8109u fi-blb-e6850 bat-dg2-11 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132280v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10689">i915#10689</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14557/bat-dg2-8/igt@i915_selftest@live@gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10677">i915#10677</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/bat-dg2-8/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14557/fi-apl-guc/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10461">i915#10461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132280v1/fi-apl-guc/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14557 -&gt; Patchwork_132280v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14557: bf24d40fae19bcceac3e32c4866079b4f10c70f9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7803: 9669a17ae56f1dcd22ba4c5cb39b3cd334a46862 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132280v1: bf24d40fae19bcceac3e32c4866079b4f10c70f9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8bf340e713b7 drm/print: drop include seq_file.h<br />
e08c94f7f77e drm/print: drop include debugfs.h and include where needed</p>

</body>
</html>

--===============5133330023480663847==--
