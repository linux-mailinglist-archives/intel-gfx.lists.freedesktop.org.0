Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9C482A041
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 19:30:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F1610E655;
	Wed, 10 Jan 2024 18:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8257010E655;
 Wed, 10 Jan 2024 18:30:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3921214230585253763=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Rework_global_s?=
 =?utf-8?q?tate_serialization_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 10 Jan 2024 18:30:25 -0000
Message-ID: <170491142553.216241.2828440576869428575@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
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

--===============3921214230585253763==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Rework global state serialization (rev2)
URL   : https://patchwork.freedesktop.org/series/127968/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14108 -> Patchwork_127968v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/index.html

Participating hosts (38 -> 34)
------------------------------

  Missing    (4): bat-kbl-2 bat-dg2-9 fi-snb-2520m bat-adls-6 

Known issues
------------

  Here are the changes found in Patchwork_127968v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][1] ([i915#1836])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - bat-atsm-1:         [ABORT][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html

  
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836


Build changes
-------------

  * Linux: CI_DRM_14108 -> Patchwork_127968v2

  CI-20190529: 20190529
  CI_DRM_14108: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7666: 5f97adfd0e1636788a6af5b592f0d15b4f1027c8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127968v2: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a10e407e523c drm/i915: Extract intel_atomic_swap_state()
47b9afbea14a drm/i915: Rework global state serializaiton
16fe755e0644 drm/i915: Compute use_sagv_wm differently

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/index.html

--===============3921214230585253763==
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
<tr><td><b>Series:</b></td><td>drm/i915: Rework global state serialization (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127968/">https://patchwork.freedesktop.org/series/127968/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14108 -&gt; Patchwork_127968v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): bat-kbl-2 bat-dg2-9 fi-snb-2520m bat-adls-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127968v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc:<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@lmem0:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14108/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127968v2/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14108 -&gt; Patchwork_127968v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14108: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7666: 5f97adfd0e1636788a6af5b592f0d15b4f1027c8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127968v2: c58d1352dd193d8df380a14e95c05455acaf5b82 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a10e407e523c drm/i915: Extract intel_atomic_swap_state()<br />
47b9afbea14a drm/i915: Rework global state serializaiton<br />
16fe755e0644 drm/i915: Compute use_sagv_wm differently</p>

</body>
</html>

--===============3921214230585253763==--
