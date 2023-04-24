Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 897F16EC453
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 06:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9977A10E233;
	Mon, 24 Apr 2023 04:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A38210E233;
 Mon, 24 Apr 2023 04:23:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52359A882E;
 Mon, 24 Apr 2023 04:23:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0578067865427000108=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Mon, 24 Apr 2023 04:23:58 -0000
Message-ID: <168231023830.1231.1184288564670055905@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230424034403.3390144-1-fei.yang@intel.com>
In-Reply-To: <20230424034403.3390144-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_add_PTE_encode_function?=
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

--===============0578067865427000108==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: add PTE encode function
URL   : https://patchwork.freedesktop.org/series/116868/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13050 -> Patchwork_116868v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116868v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116868v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116868v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@guc:
    - bat-jsl-3:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13050/bat-jsl-3/igt@i915_selftest@live@guc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/bat-jsl-3/igt@i915_selftest@live@guc.html

  
Known issues
------------

  Here are the changes found in Patchwork_116868v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][3] ([i915#3546]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][4] ([i915#6367]) -> [DMESG-FAIL][5] ([i915#6367] / [i915#7996])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13050/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_13050 -> Patchwork_116868v1

  CI-20190529: 20190529
  CI_DRM_13050: 9687e107450f2d5b270c04f8d17183e603d2c4f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116868v1: 9687e107450f2d5b270c04f8d17183e603d2c4f1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ca2b7e23992b drm/i915: make sure correct pte encode is used
151ad09f5b58 drm/i915: use pat_index instead of cache_level
4b0bed9fd5a6 drm/i915: preparation for using PAT index
3768dd1d2eb8 drm/i915/mtl: Add PTE encode function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/index.html

--===============0578067865427000108==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: add PTE encode function</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116868/">https://patchwork.freedesktop.org/series/116868/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13050 -&gt; Patchwork_116868v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116868v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116868v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116868v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13050/bat-jsl-3/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/bat-jsl-3/igt@i915_selftest@live@guc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116868v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc:<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13050/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116868v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13050 -&gt; Patchwork_116868v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13050: 9687e107450f2d5b270c04f8d17183e603d2c4f1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116868v1: 9687e107450f2d5b270c04f8d17183e603d2c4f1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ca2b7e23992b drm/i915: make sure correct pte encode is used<br />
151ad09f5b58 drm/i915: use pat_index instead of cache_level<br />
4b0bed9fd5a6 drm/i915: preparation for using PAT index<br />
3768dd1d2eb8 drm/i915/mtl: Add PTE encode function</p>

</body>
</html>

--===============0578067865427000108==--
