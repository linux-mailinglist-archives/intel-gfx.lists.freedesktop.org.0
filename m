Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80CD9BF46A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:39:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6F710E15D;
	Wed,  6 Nov 2024 17:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5206510E15D;
 Wed,  6 Nov 2024 17:39:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2127912891593260891=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Refactor_MST_DSC_Determinat?=
 =?utf-8?q?ion_Policy_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Fangzhi Zuo" <jerry.zuo@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Nov 2024 17:39:23 -0000
Message-ID: <173091476332.1418240.7313697119446449244@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241106150444.424579-1-Jerry.Zuo@amd.com>
In-Reply-To: <20241106150444.424579-1-Jerry.Zuo@amd.com>
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

--===============2127912891593260891==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Refactor MST DSC Determination Policy (rev2)
URL   : https://patchwork.freedesktop.org/series/140832/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15647 -> Patchwork_140832v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (1): fi-skl-6600u 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_140832v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6600u:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@kms_dsc@dsc-basic:
    - fi-skl-6600u:       NOTRUN -> [SKIP][3] +9 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/fi-skl-6600u/igt@kms_dsc@dsc-basic.html

  
#### Possible fixes ####

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [DMESG-WARN][4] ([i915#12253]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15647/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_15647 -> Patchwork_140832v2

  CI-20190529: 20190529
  CI_DRM_15647: 438ef86a725b59a171dba81fc258bb23a0ff536c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8099: 27be46dee80b6b0de80f9fa3cd9bb5f55edccaf8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140832v2: 438ef86a725b59a171dba81fc258bb23a0ff536c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/index.html

--===============2127912891593260891==
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
<tr><td><b>Series:</b></td><td>Refactor MST DSC Determination Policy (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140832/">https://patchwork.freedesktop.org/series/140832/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15647 -&gt; Patchwork_140832v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (1): fi-skl-6600u <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140832v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium_edid@hdmi-edid-read:<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15647/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253">i915#12253</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140832v2/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15647 -&gt; Patchwork_140832v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15647: 438ef86a725b59a171dba81fc258bb23a0ff536c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8099: 27be46dee80b6b0de80f9fa3cd9bb5f55edccaf8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140832v2: 438ef86a725b59a171dba81fc258bb23a0ff536c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2127912891593260891==--
