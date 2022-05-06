Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCD951D5DD
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 12:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C44E510E092;
	Fri,  6 May 2022 10:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AA0710E092;
 Fri,  6 May 2022 10:42:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79D34AADD6;
 Fri,  6 May 2022 10:42:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7311179290417682412=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Fri, 06 May 2022 10:42:11 -0000
Message-ID: <165183373146.18818.13314512897554885963@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
In-Reply-To: <20220506054834.2822650-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?es_for_selective_fetch_area_calculation?=
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

--===============7311179290417682412==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes for selective fetch area calculation
URL   : https://patchwork.freedesktop.org/series/103659/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11616 -> Patchwork_103659v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/index.html

Participating hosts (42 -> 36)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (7): bat-adls-5 bat-adlm-1 fi-bsw-cyan bat-adlp-6 bat-adln-1 bat-rpls-1 bat-rpls-2 

Known issues
------------

  Here are the changes found in Patchwork_103659v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-snb-2600:        [PASS][1] -> [FAIL][2] ([i915#4338])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-snb-2600/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/fi-snb-2600/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][3] ([i915#3690])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/fi-icl-u2/igt@runner@aborted.html

  
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338


Build changes
-------------

  * Linux: CI_DRM_11616 -> Patchwork_103659v1

  CI-20190529: 20190529
  CI_DRM_11616: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103659v1: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

699ac7b731d4 drm/i915: Ensure damage clip area is within pipe area
259af3dc5feb drm/i915/psr: Use full update In case of area calculation fails

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/index.html

--===============7311179290417682412==
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
<tr><td><b>Series:</b></td><td>Fixes for selective fetch area calculation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103659/">https://patchwork.freedesktop.org/series/103659/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11616 -&gt; Patchwork_103659v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/index.html</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (7): bat-adls-5 bat-adlm-1 fi-bsw-cyan bat-adlp-6 bat-adln-1 bat-rpls-1 bat-rpls-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103659v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11616/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/fi-snb-2600/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4338">i915#4338</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103659v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11616 -&gt; Patchwork_103659v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11616: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103659v1: 65a5fe9ac96c60bd6dfcc44a0bb8d584912ea53d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>699ac7b731d4 drm/i915: Ensure damage clip area is within pipe area<br />
259af3dc5feb drm/i915/psr: Use full update In case of area calculation fails</p>

</body>
</html>

--===============7311179290417682412==--
