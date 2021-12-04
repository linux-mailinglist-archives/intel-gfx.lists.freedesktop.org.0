Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8013468194
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Dec 2021 01:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F0DABA45;
	Sat,  4 Dec 2021 00:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 865A1ABA45;
 Sat,  4 Dec 2021 00:49:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FCDFA66C8;
 Sat,  4 Dec 2021 00:49:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6799116170374570639=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Sat, 04 Dec 2021 00:49:15 -0000
Message-ID: <163857895549.1803.2572830547443023269@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211203235112.3358-1-matthew.brost@intel.com>
In-Reply-To: <20211203235112.3358-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Rollback_seqno_when_request_creation_fails_=28rev2=29?=
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

--===============6799116170374570639==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Rollback seqno when request creation fails (rev2)
URL   : https://patchwork.freedesktop.org/series/97562/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10963 -> Patchwork_21756
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/index.html

Participating hosts (45 -> 33)
------------------------------

  Missing    (12): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21756 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +31 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][2] -> [INCOMPLETE][3] ([i915#198])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bdw-5557u:       [INCOMPLETE][5] ([i915#146]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198


Build changes
-------------

  * Linux: CI_DRM_10963 -> Patchwork_21756

  CI-20190529: 20190529
  CI_DRM_10963: 2b63a468d3e3c264a3d1a4773edfe8785d45d4ec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6300: f69bd65fa9f72b7d5e5a5a22981f16d034334761 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21756: 1cf3b54b7c910952dcd286013db37f0d7b927b21 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1cf3b54b7c91 drm/i915: Rollback seqno when request creation fails

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/index.html

--===============6799116170374570639==
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
<tr><td><b>Series:</b></td><td>drm/i915: Rollback seqno when request creation fails (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97562/">https://patchwork.freedesktop.org/series/97562/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10963 -&gt; Patchwork_21756</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/index.html</p>
<h2>Participating hosts (45 -&gt; 33)</h2>
<p>Missing    (12): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21756 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10963/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21756/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10963 -&gt; Patchwork_21756</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10963: 2b63a468d3e3c264a3d1a4773edfe8785d45d4ec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6300: f69bd65fa9f72b7d5e5a5a22981f16d034334761 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21756: 1cf3b54b7c910952dcd286013db37f0d7b927b21 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1cf3b54b7c91 drm/i915: Rollback seqno when request creation fails</p>

</body>
</html>

--===============6799116170374570639==--
