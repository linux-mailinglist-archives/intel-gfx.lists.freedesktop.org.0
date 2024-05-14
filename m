Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 357308C5C9C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 23:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E8E510EB52;
	Tue, 14 May 2024 21:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F1010E5BE;
 Tue, 14 May 2024 21:06:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2680298983489555175=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=5Fmst=3A_Enable?=
 =?utf-8?q?_link_training_fallback_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2024 21:06:51 -0000
Message-ID: <171572081174.2116355.14868808627030871873@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240514191418.2863344-1-imre.deak@intel.com>
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
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

--===============2680298983489555175==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp_mst: Enable link training fallback (rev2)
URL   : https://patchwork.freedesktop.org/series/133624/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14761 -> Patchwork_133624v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/index.html

Participating hosts (42 -> 36)
------------------------------

  Missing    (6): bat-kbl-2 fi-snb-2520m fi-cfl-8109u bat-jsl-1 bat-mtlp-8 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_133624v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [PASS][1] -> [DMESG-WARN][2] ([i915#7507])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14761/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][3] ([i915#10800]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14761/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
  [i915#10800]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10800
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507


Build changes
-------------

  * Linux: CI_DRM_14761 -> Patchwork_133624v2

  CI-20190529: 20190529
  CI_DRM_14761: a0c161037de0a89c0a9ea744f60099a4f94cc123 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7853: b6c459b99abc85cad050b0b04faaca9fc3568a69 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133624v2: a0c161037de0a89c0a9ea744f60099a4f94cc123 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/index.html

--===============2680298983489555175==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp_mst: Enable link training fallback (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133624/">https://patchwork.freedesktop.org/series/133624/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14761 -&gt; Patchwork_133624v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/index.html</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Missing    (6): bat-kbl-2 fi-snb-2520m fi-cfl-8109u bat-jsl-1 bat-mtlp-8 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133624v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14761/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14761/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10800">i915#10800</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133624v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14761 -&gt; Patchwork_133624v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14761: a0c161037de0a89c0a9ea744f60099a4f94cc123 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7853: b6c459b99abc85cad050b0b04faaca9fc3568a69 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133624v2: a0c161037de0a89c0a9ea744f60099a4f94cc123 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2680298983489555175==--
