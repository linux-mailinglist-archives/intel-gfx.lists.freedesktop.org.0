Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 450522CE29E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 00:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58FFD6EC64;
	Thu,  3 Dec 2020 23:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A6E46E0D4;
 Thu,  3 Dec 2020 23:28:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21181A363D;
 Thu,  3 Dec 2020 23:28:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 03 Dec 2020 23:28:20 -0000
Message-ID: <160703810011.31152.7415747884902747347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201203223849.17350-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201203223849.17350-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Stop_sampling_rc6_from_inside_pmu=5Fenable?=
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
Content-Type: multipart/mixed; boundary="===============1938419686=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1938419686==
Content-Type: multipart/alternative;
 boundary="===============3404816538726338363=="

--===============3404816538726338363==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Stop sampling rc6 from inside pmu_enable
URL   : https://patchwork.freedesktop.org/series/84549/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9438 -> Patchwork_19053
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9438 and Patchwork_19053:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19053 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_basic@create-close:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9438/fi-tgl-y/igt@gem_basic@create-close.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/fi-tgl-y/igt@gem_basic@create-close.html

  
#### Possible fixes ####

  * {igt@fbdev@read}:
    - fi-tgl-y:           [DMESG-WARN][3] ([i915#402]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9438/fi-tgl-y/igt@fbdev@read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/fi-tgl-y/igt@fbdev@read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9438 -> Patchwork_19053

  CI-20190529: 20190529
  CI_DRM_9438: a07470999401550eadc26fc3954afbe5a39f753e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5880: d67bad61dc9a7515f94a7eecadd3bcd6b4f9d49e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19053: f80329b5088f43f7beb8922c83910595bce90772 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f80329b5088f drm/i915: Stop sampling rc6 from inside pmu_enable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/index.html

--===============3404816538726338363==
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
<tr><td><b>Series:</b></td><td>drm/i915: Stop sampling rc6 from inside pmu_enable</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84549/">https://patchwork.freedesktop.org/series/84549/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9438 -&gt; Patchwork_19053</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9438 and Patchwork_19053:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19053 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_basic@create-close:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9438/fi-tgl-y/igt@gem_basic@create-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/fi-tgl-y/igt@gem_basic@create-close.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>{igt@fbdev@read}:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9438/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19053/fi-tgl-y/igt@fbdev@read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9438 -&gt; Patchwork_19053</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9438: a07470999401550eadc26fc3954afbe5a39f753e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5880: d67bad61dc9a7515f94a7eecadd3bcd6b4f9d49e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19053: f80329b5088f43f7beb8922c83910595bce90772 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f80329b5088f drm/i915: Stop sampling rc6 from inside pmu_enable</p>

</body>
</html>

--===============3404816538726338363==--

--===============1938419686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1938419686==--
