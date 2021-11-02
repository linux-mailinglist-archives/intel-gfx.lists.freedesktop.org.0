Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AF3442E83
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 13:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D376FCEE;
	Tue,  2 Nov 2021 12:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A157D6FCEE;
 Tue,  2 Nov 2021 12:53:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A31BA8169;
 Tue,  2 Nov 2021 12:53:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4244581554152791047=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 02 Nov 2021 12:53:01 -0000
Message-ID: <163585758160.15505.2451098046616494966@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211102102827.442902-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211102102827.442902-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Prepare_error_capture_for_asynchronous_migration?=
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

--===============4244581554152791047==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Prepare error capture for asynchronous migration
URL   : https://patchwork.freedesktop.org/series/96493/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10827 -> Patchwork_21503
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/index.html

Participating hosts (39 -> 34)
------------------------------

  Missing    (5): bat-dg1-6 fi-bsw-cyan fi-icl-u2 bat-adlp-4 fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_21503 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#1610])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10827/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][3] ([i915#4269]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10827/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Build changes
-------------

  * Linux: CI_DRM_10827 -> Patchwork_21503

  CI-20190529: 20190529
  CI_DRM_10827: e6d8dc4d0d95b13d1575f02beead4517de3ee045 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6267: 5c3b8f7ad9a5cfe1f0e747d92da7910243cf287d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21503: 1c9961abf806f10cf7c0ff761991288f5128debf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1c9961abf806 drm/i915: Initial introduction of vma resources
9378a0be88f4 drm/i915: Use __GFP_KSWAPD_RECLAIM in the capture code
4fd880f7f960 drm/i915: Update error capture code to avoid using the current vma state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/index.html

--===============4244581554152791047==
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
<tr><td><b>Series:</b></td><td>drm/i915: Prepare error capture for asynchronous migration</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96493/">https://patchwork.freedesktop.org/series/96493/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10827 -&gt; Patchwork_21503</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/index.html</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): bat-dg1-6 fi-bsw-cyan fi-icl-u2 bat-adlp-4 fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21503 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10827/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10827/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10827 -&gt; Patchwork_21503</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10827: e6d8dc4d0d95b13d1575f02beead4517de3ee045 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6267: 5c3b8f7ad9a5cfe1f0e747d92da7910243cf287d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21503: 1c9961abf806f10cf7c0ff761991288f5128debf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1c9961abf806 drm/i915: Initial introduction of vma resources<br />
9378a0be88f4 drm/i915: Use __GFP_KSWAPD_RECLAIM in the capture code<br />
4fd880f7f960 drm/i915: Update error capture code to avoid using the current vma state</p>

</body>
</html>

--===============4244581554152791047==--
