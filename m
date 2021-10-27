Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B20043CD38
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 17:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9131D6E8B7;
	Wed, 27 Oct 2021 15:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC3966E8B2;
 Wed, 27 Oct 2021 15:13:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5304A00E8;
 Wed, 27 Oct 2021 15:13:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0167047537600905803=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 15:13:00 -0000
Message-ID: <163534758067.4641.17413231392930477347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211027105211.485125-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211027105211.485125-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?pare_error_capture_for_asynchronous_migration_=28rev2=29?=
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

--===============0167047537600905803==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Prepare error capture for asynchronous migration (rev2)
URL   : https://patchwork.freedesktop.org/series/96281/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10796 -> Patchwork_21460
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/index.html

Participating hosts (39 -> 33)
------------------------------

  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-icl-u2 bat-adlp-4 fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_21460 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#1610])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10796/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10796/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#4269])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10796/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-hsw-gt1}:       [DMESG-WARN][7] ([i915#4290]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10796/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4290]: https://gitlab.freedesktop.org/drm/intel/issues/4290


Build changes
-------------

  * Linux: CI_DRM_10796 -> Patchwork_21460

  CI-20190529: 20190529
  CI_DRM_10796: c2698ab428a9398c02ef1ee3a03f51608cf97a86 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21460: ff852d0fa9dfdea483c8c2af48d1ea23e75be309 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ff852d0fa9df drm/i915: Initial introduction of vma resources
69d21354f04a drm/i915: Update error capture code to avoid using the current vma state
bf0df3812af8 drm/i915: Introduce refcounted sg-tables

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/index.html

--===============0167047537600905803==
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
<tr><td><b>Series:</b></td><td>Prepare error capture for asynchronous migration (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96281/">https://patchwork.freedesktop.org/series/96281/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10796 -&gt; Patchwork_21460</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/index.html</p>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-icl-u2 bat-adlp-4 fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21460 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10796/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10796/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10796/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10796/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4290">i915#4290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21460/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10796 -&gt; Patchwork_21460</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10796: c2698ab428a9398c02ef1ee3a03f51608cf97a86 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21460: ff852d0fa9dfdea483c8c2af48d1ea23e75be309 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ff852d0fa9df drm/i915: Initial introduction of vma resources<br />
69d21354f04a drm/i915: Update error capture code to avoid using the current vma state<br />
bf0df3812af8 drm/i915: Introduce refcounted sg-tables</p>

</body>
</html>

--===============0167047537600905803==--
