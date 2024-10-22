Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5FE9AA2D8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 15:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F39210E325;
	Tue, 22 Oct 2024 13:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C6C810E325;
 Tue, 22 Oct 2024 13:16:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7083640449292663184=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_mtd=3A_add_driver_for_Intel?=
 =?utf-8?q?_discrete_graphics?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2024 13:16:12 -0000
Message-ID: <172960297250.1310194.7869353698598049891@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241022104119.3149051-1-alexander.usyskin@intel.com>
In-Reply-To: <20241022104119.3149051-1-alexander.usyskin@intel.com>
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

--===============7083640449292663184==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: mtd: add driver for Intel discrete graphics
URL   : https://patchwork.freedesktop.org/series/140306/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15576 -> Patchwork_140306v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_140306v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][1] -> [ABORT][2] ([i915#12216]) +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/bat-mtlp-8/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/bat-mtlp-8/igt@i915_selftest@live.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [DMESG-WARN][3] ([i915#11621]) -> [PASS][4] +51 other tests pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - fi-cfl-8109u:       [DMESG-WARN][5] ([i915#11621]) -> [INCOMPLETE][6] ([i915#12236]) +1 other test incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#12236]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12236


Build changes
-------------

  * Linux: CI_DRM_15576 -> Patchwork_140306v1

  CI-20190529: 20190529
  CI_DRM_15576: d5bac12430b0d4a980c0498b3c946772950e70ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8081: 9b8c0f6da8898f760bfaa2113455eb84b68a69f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140306v1: d5bac12430b0d4a980c0498b3c946772950e70ee @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/index.html

--===============7083640449292663184==
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
<tr><td><b>Series:</b></td><td>mtd: add driver for Intel discrete graphics</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140306/">https://patchwork.freedesktop.org/series/140306/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15576 -&gt; Patchwork_140306v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140306v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_addfb_basic@too-high:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">PASS</a> +51 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms@c-dp1:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140306v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12236">i915#12236</a>) +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15576 -&gt; Patchwork_140306v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15576: d5bac12430b0d4a980c0498b3c946772950e70ee @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8081: 9b8c0f6da8898f760bfaa2113455eb84b68a69f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140306v1: d5bac12430b0d4a980c0498b3c946772950e70ee @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7083640449292663184==--
