Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E85598319
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 14:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA31C8531;
	Thu, 18 Aug 2022 12:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7952911ADAD;
 Thu, 18 Aug 2022 12:26:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D487A47DF;
 Thu, 18 Aug 2022 12:26:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4960035666038701389=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 18 Aug 2022 12:26:15 -0000
Message-ID: <166082557534.16682.15320694139740417193@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220817122624.213889-1-jani.nikula@intel.com>
In-Reply-To: <20220817122624.213889-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Introduce_FBC_B_=28rev3=29?=
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

--===============4960035666038701389==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Introduce FBC B (rev3)
URL   : https://patchwork.freedesktop.org/series/107365/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11997 -> Patchwork_107365v3
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_107365v3 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107365v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/index.html

Participating hosts (33 -> 33)
------------------------------

  Additional (2): fi-kbl-soraka bat-adls-5 
  Missing    (2): bat-rpls-2 fi-icl-u2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107365v3:

### IGT changes ###

#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-elk-e7500:       [INCOMPLETE][1] ([i915#6598] / [i915#6601]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11997/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html

  
Known issues
------------

  Here are the changes found in Patchwork_107365v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][3] ([i915#6219])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/fi-kbl-soraka/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][4] ([i915#4957]) -> [DMESG-FAIL][5] ([i915#4494] / [i915#4957])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11997/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601


Build changes
-------------

  * Linux: CI_DRM_11997 -> Patchwork_107365v3

  CI-20190529: 20190529
  CI_DRM_11997: ce38effc5cd7cb2af612fd8946149275e3c1f919 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6630: b5e2222c9a988015bdf237e6ebb9f5b6d87ac7e1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107365v3: ce38effc5cd7cb2af612fd8946149275e3c1f919 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

896224b5c9f1 drm/i915/mtl: Introduce FBC B

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/index.html

--===============4960035666038701389==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Introduce FBC B (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107365/">https://patchwork.freedesktop.org/series/107365/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11997 -&gt; Patchwork_107365v3</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_107365v3 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107365v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/index.html</p>
<h2>Participating hosts (33 -&gt; 33)</h2>
<p>Additional (2): fi-kbl-soraka bat-adls-5 <br />
  Missing    (2): bat-rpls-2 fi-icl-u2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107365v3:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11997/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107365v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11997/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107365v3/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11997 -&gt; Patchwork_107365v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11997: ce38effc5cd7cb2af612fd8946149275e3c1f919 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6630: b5e2222c9a988015bdf237e6ebb9f5b6d87ac7e1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107365v3: ce38effc5cd7cb2af612fd8946149275e3c1f919 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>896224b5c9f1 drm/i915/mtl: Introduce FBC B</p>

</body>
</html>

--===============4960035666038701389==--
