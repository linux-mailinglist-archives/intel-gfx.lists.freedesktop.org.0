Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B95F44C05C8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 01:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA6810E17D;
	Wed, 23 Feb 2022 00:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2619E10E17D;
 Wed, 23 Feb 2022 00:12:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23955A9932;
 Wed, 23 Feb 2022 00:12:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0744603504508869123=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Date: Wed, 23 Feb 2022 00:12:04 -0000
Message-ID: <164557512405.25291.10782175007605227486@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20220222145206.76118-1-balasubramani.vivekanandan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_the_memcpy=5Ffrom=5Fwc_function_from_drm?=
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

--===============0744603504508869123==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use the memcpy_from_wc function from drm
URL   : https://patchwork.freedesktop.org/series/100581/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11268 -> Patchwork_22356
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/index.html

Participating hosts (19 -> 15)
------------------------------

  Missing    (4): fi-icl-u2 shard-dg1 shard-tglu bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_22356 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][1] ([i915#4957]) -> [DMESG-FAIL][2] ([i915#4494] / [i915#4957])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11268 -> Patchwork_22356

  CI-20190529: 20190529
  CI_DRM_11268: 26326bf05392ab3da8cba36642a0efec97f00da9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22356: 5166347f7d660f148ac33f545a5dffaecb25bdfe @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5166347f7d66 drm/i915: Avoid dereferencing io mapped memory
fcb2d0374e1b drm/i915/gt: Avoid direct dereferencing of io memory
31fa2a37993d drm/i915/selftests: use the memcpy_from_wc call from the drm
422645148875 drm/i915/guc: use the memcpy_from_wc call from the drm
6745ebf6450b drm/i915: use the memcpy_from_wc call from the drm
6acb0786b38d drm: Add drm_memcpy_from_wc() variant which accepts destination address
8a3424cc9277 drm: Relax alignment constraint for destination address

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/index.html

--===============0744603504508869123==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use the memcpy_from_wc function from drm</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100581/">https://patchwork.freedesktop.org/series/100581/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11268 -&gt; Patchwork_22356</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/index.html</p>
<h2>Participating hosts (19 -&gt; 15)</h2>
<p>Missing    (4): fi-icl-u2 shard-dg1 shard-tglu bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22356 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22356/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11268 -&gt; Patchwork_22356</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11268: 26326bf05392ab3da8cba36642a0efec97f00da9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22356: 5166347f7d660f148ac33f545a5dffaecb25bdfe @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5166347f7d66 drm/i915: Avoid dereferencing io mapped memory<br />
fcb2d0374e1b drm/i915/gt: Avoid direct dereferencing of io memory<br />
31fa2a37993d drm/i915/selftests: use the memcpy_from_wc call from the drm<br />
422645148875 drm/i915/guc: use the memcpy_from_wc call from the drm<br />
6745ebf6450b drm/i915: use the memcpy_from_wc call from the drm<br />
6acb0786b38d drm: Add drm_memcpy_from_wc() variant which accepts destination address<br />
8a3424cc9277 drm: Relax alignment constraint for destination address</p>

</body>
</html>

--===============0744603504508869123==--
