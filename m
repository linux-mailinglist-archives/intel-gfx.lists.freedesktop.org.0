Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD3E85E99A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 22:10:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF63710E813;
	Wed, 21 Feb 2024 21:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EE810E813;
 Wed, 21 Feb 2024 21:10:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6181017888009431048=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_GPU_hang_replay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 21:10:29 -0000
Message-ID: <170854982995.178729.13192729346679031364@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240221142245.2331484-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20240221142245.2331484-1-tvrtko.ursulin@linux.intel.com>
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

--===============6181017888009431048==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GPU hang replay
URL   : https://patchwork.freedesktop.org/series/130208/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14311 -> Patchwork_130208v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/index.html

Participating hosts (38 -> 35)
------------------------------

  Missing    (3): bat-kbl-2 fi-snb-2520m bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_130208v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-cfl-8109u:       [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/fi-cfl-8109u/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [CRASH][3] ([i915#9947]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][5] ([i915#7911]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9947]: https://gitlab.freedesktop.org/drm/intel/issues/9947


Build changes
-------------

  * Linux: CI_DRM_14311 -> Patchwork_130208v1

  CI-20190529: 20190529
  CI_DRM_14311: 06b279b4fb58a00667e47fafed72bba923d032ae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7720: 7720
  Patchwork_130208v1: 06b279b4fb58a00667e47fafed72bba923d032ae @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5e8021aae34b drm/i915: Support replaying GPU hangs with captured context image
02cc3b0a4a0d drm/i915: Shadow default engine context image in the context

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/index.html

--===============6181017888009431048==
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
<tr><td><b>Series:</b></td><td>GPU hang replay</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130208/">https://patchwork.freedesktop.org/series/130208/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14311 -&gt; Patchwork_130208v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): bat-kbl-2 fi-snb-2520m bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130208v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9947">i915#9947</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130208v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14311 -&gt; Patchwork_130208v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14311: 06b279b4fb58a00667e47fafed72bba923d032ae @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7720: 7720<br />
  Patchwork_130208v1: 06b279b4fb58a00667e47fafed72bba923d032ae @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5e8021aae34b drm/i915: Support replaying GPU hangs with captured context image<br />
02cc3b0a4a0d drm/i915: Shadow default engine context image in the context</p>

</body>
</html>

--===============6181017888009431048==--
