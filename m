Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 957648A0016
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 20:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF62710E35D;
	Wed, 10 Apr 2024 18:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59ED910E35D;
 Wed, 10 Apr 2024 18:53:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0568262514176869499=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dsi=3A_stop_relyin?=
 =?utf-8?q?g_on_implicit_dev=5Fpriv_variable?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Apr 2024 18:53:45 -0000
Message-ID: <171277522536.1338744.16547539318427715697@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712766927.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712766927.git.jani.nikula@intel.com>
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

--===============0568262514176869499==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dsi: stop relying on implicit dev_priv variable
URL   : https://patchwork.freedesktop.org/series/132285/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14559 -> Patchwork_132285v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-kbl-7567u fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_132285v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2] ([i915#10378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14559/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [WARN][3] ([i915#10436]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14559/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gtt:
    - bat-arls-2:         [ABORT][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14559/bat-arls-2/igt@i915_selftest@live@gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/bat-arls-2/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@uncore:
    - bat-dg2-14:         [ABORT][7] ([i915#10366]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14559/bat-dg2-14/igt@i915_selftest@live@uncore.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/bat-dg2-14/igt@i915_selftest@live@uncore.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10436]: https://gitlab.freedesktop.org/drm/intel/issues/10436


Build changes
-------------

  * Linux: CI_DRM_14559 -> Patchwork_132285v1

  CI-20190529: 20190529
  CI_DRM_14559: 3658e2ec471a1d67baa30a554583bcdd4be55857 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7804: 7804
  Patchwork_132285v1: 3658e2ec471a1d67baa30a554583bcdd4be55857 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a456ef6d0d79 drm/i915/dsi: pass i915 to register macros instead of implicit variable
9024f5184152 drm/i915/dsi: add VLV_ prefix to VLV only register macros
bcea19177b09 drm/i915/dsi: remove unused _MIPIA_AUTOPWG register definition

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/index.html

--===============0568262514176869499==
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
<tr><td><b>Series:</b></td><td>drm/i915/dsi: stop relying on implicit dev_priv variable</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132285/">https://patchwork.freedesktop.org/series/132285/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14559 -&gt; Patchwork_132285v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-kbl-7567u fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132285v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14559/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14559/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10436">i915#10436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14559/bat-arls-2/igt@i915_selftest@live@gtt.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/bat-arls-2/igt@i915_selftest@live@gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14559/bat-dg2-14/igt@i915_selftest@live@uncore.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v1/bat-dg2-14/igt@i915_selftest@live@uncore.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14559 -&gt; Patchwork_132285v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14559: 3658e2ec471a1d67baa30a554583bcdd4be55857 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7804: 7804<br />
  Patchwork_132285v1: 3658e2ec471a1d67baa30a554583bcdd4be55857 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a456ef6d0d79 drm/i915/dsi: pass i915 to register macros instead of implicit variable<br />
9024f5184152 drm/i915/dsi: add VLV_ prefix to VLV only register macros<br />
bcea19177b09 drm/i915/dsi: remove unused _MIPIA_AUTOPWG register definition</p>

</body>
</html>

--===============0568262514176869499==--
