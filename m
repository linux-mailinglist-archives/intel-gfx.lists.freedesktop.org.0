Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D86622D1435
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 16:00:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E226E82E;
	Mon,  7 Dec 2020 15:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61DDE89FA6;
 Mon,  7 Dec 2020 15:00:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DA56A7DFB;
 Mon,  7 Dec 2020 15:00:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 07 Dec 2020 15:00:03 -0000
Message-ID: <160735320328.8717.17227778130171128301@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201207130201.8492-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201207130201.8492-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Improve_error_reporting_for_igt=5Fmock=5Fmax?=
 =?utf-8?b?X3NlZ21lbnQgKHJldjIp?=
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
Content-Type: multipart/mixed; boundary="===============2034506816=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2034506816==
Content-Type: multipart/alternative;
 boundary="===============5853913550969884312=="

--===============5853913550969884312==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Improve error reporting for igt_mock_max_segment (rev2)
URL   : https://patchwork.freedesktop.org/series/84641/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9453 -> Patchwork_19075
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19075:

### CI changes ###

#### Possible regressions ####

  * boot (NEW):
    - {fi-dg1-1}:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/fi-dg1-1/boot.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9453 and Patchwork_19075:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 39 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19075 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@i915_hangman@error-state-basic:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/fi-tgl-y/igt@i915_hangman@error-state-basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/fi-tgl-y/igt@i915_hangman@error-state-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Additional (1): fi-dg1-1 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9453 -> Patchwork_19075

  CI-20190529: 20190529
  CI_DRM_9453: 52e2ca46b7e2aa62c0509bce0be189d2f5a7325f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5883: 02244f60c98b4e4106b1099ade3439b159ac848e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19075: ce3956bde786d896f93a805cd80ea0d5f06b983f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ce3956bde786 drm/i915/selftests: Improve error reporting for igt_mock_max_segment

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/index.html

--===============5853913550969884312==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Improve error reporting for igt_mock_max_segment (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84641/">https://patchwork.freedesktop.org/series/84641/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9453 -&gt; Patchwork_19075</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19075:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot (NEW):<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/fi-dg1-1/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9453 and Patchwork_19075:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 39 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19075 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_self_import@basic-with_two_bos:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_hangman@error-state-basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9453/fi-tgl-y/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19075/fi-tgl-y/igt@i915_hangman@error-state-basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Additional (1): fi-dg1-1 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9453 -&gt; Patchwork_19075</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9453: 52e2ca46b7e2aa62c0509bce0be189d2f5a7325f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5883: 02244f60c98b4e4106b1099ade3439b159ac848e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19075: ce3956bde786d896f93a805cd80ea0d5f06b983f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ce3956bde786 drm/i915/selftests: Improve error reporting for igt_mock_max_segment</p>

</body>
</html>

--===============5853913550969884312==--

--===============2034506816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2034506816==--
