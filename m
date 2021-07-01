Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2003B97A1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 22:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7818E6EB80;
	Thu,  1 Jul 2021 20:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCD816EB08;
 Thu,  1 Jul 2021 20:31:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDD52A41FB;
 Thu,  1 Jul 2021 20:31:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Thu, 01 Jul 2021 20:31:18 -0000
Message-ID: <162517147874.15053.4120562565547279104@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210701155513.2024-1-michal.wajdeczko@intel.com>
In-Reply-To: <20210701155513.2024-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Improve_CTB_error_handling?=
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
Content-Type: multipart/mixed; boundary="===============0374979648=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0374979648==
Content-Type: multipart/alternative;
 boundary="===============3572960236242165691=="

--===============3572960236242165691==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Improve CTB error handling
URL   : https://patchwork.freedesktop.org/series/92118/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10299 -> Patchwork_20511
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/index.html

Known issues
------------

  Here are the changes found in Patchwork_20511 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][2] ([fdo#109271]) +32 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717


Participating hosts (36 -> 35)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10299 -> Patchwork_20511

  CI-20190529: 20190529
  CI_DRM_10299: 40a1952a06a94218e1bb751a3091a1c105173f1a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6126: 098d0b82276fa0595e3d0fd745885f9d2147035d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20511: db4a4850eae15de316aed98dc87ea3e0a9f60088 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

db4a4850eae1 drm/i915/guc: Move and improve error message for missed CTB reply
8b841ad277be drm/i915/guc: Print error name on CTB send failure
9d728956d405 drm/i915/guc: Print error name on CTB (de)registration failure
7a4060b10fcd drm/i915/guc: Verify result from CTB (de)register action

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/index.html

--===============3572960236242165691==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Improve CTB error handling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92118/">https://patchwork.freedesktop.org/series/92118/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10299 -&gt; Patchwork_20511</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20511 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20511/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10299 -&gt; Patchwork_20511</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10299: 40a1952a06a94218e1bb751a3091a1c105173f1a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6126: 098d0b82276fa0595e3d0fd745885f9d2147035d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20511: db4a4850eae15de316aed98dc87ea3e0a9f60088 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>db4a4850eae1 drm/i915/guc: Move and improve error message for missed CTB reply<br />
8b841ad277be drm/i915/guc: Print error name on CTB send failure<br />
9d728956d405 drm/i915/guc: Print error name on CTB (de)registration failure<br />
7a4060b10fcd drm/i915/guc: Verify result from CTB (de)register action</p>

</body>
</html>

--===============3572960236242165691==--

--===============0374979648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0374979648==--
