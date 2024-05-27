Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2FD8D02C0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 16:07:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3839B10EEA2;
	Mon, 27 May 2024 14:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E899B10EE7E;
 Mon, 27 May 2024 14:07:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4615247141540081984=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_pass_dev=5Fpriv?=
 =?utf-8?q?_explicitly_to_DIP_regs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2024 14:07:41 -0000
Message-ID: <171681886195.2213173.2997996910634525836@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1716808214.git.jani.nikula@intel.com>
In-Reply-To: <cover.1716808214.git.jani.nikula@intel.com>
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

--===============4615247141540081984==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: pass dev_priv explicitly to DIP regs
URL   : https://patchwork.freedesktop.org/series/134074/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14823 -> Patchwork_134074v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/index.html

Participating hosts (39 -> 37)
------------------------------

  Additional (4): bat-mtlp-9 fi-kbl-8809g bat-arls-2 bat-arls-3 
  Missing    (6): fi-bsw-n3050 fi-glk-j4005 fi-elk-e7500 bat-apl-1 bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_134074v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][2] ([i915#4613]) +3 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#10594])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14823/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][5] +30 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html

  * igt@runner@aborted:
    - bat-arls-2:         NOTRUN -> [FAIL][6] ([i915#11189])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/bat-arls-2/igt@runner@aborted.html
    - bat-arls-3:         NOTRUN -> [FAIL][7] ([i915#11189])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/bat-arls-3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594
  [i915#10812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10812
  [i915#11189]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11189
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14823 -> Patchwork_134074v1

  CI-20190529: 20190529
  CI_DRM_14823: f2c37d7fd878c82ea57075948d614f60a168128c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7871: 1d7b961235e345db20933c057f265898e2e96fd2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134074v1: f2c37d7fd878c82ea57075948d614f60a168128c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/index.html

--===============4615247141540081984==
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
<tr><td><b>Series:</b></td><td>drm/i915: pass dev_priv explicitly to DIP regs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134074/">https://patchwork.freedesktop.org/series/134074/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14823 -&gt; Patchwork_134074v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Additional (4): bat-mtlp-9 fi-kbl-8809g bat-arls-2 bat-arls-3 <br />
  Missing    (6): fi-bsw-n3050 fi-glk-j4005 fi-elk-e7500 bat-apl-1 bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134074v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14823/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/bat-arls-2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11189">i915#11189</a>)</li>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134074v1/bat-arls-3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11189">i915#11189</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14823 -&gt; Patchwork_134074v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14823: f2c37d7fd878c82ea57075948d614f60a168128c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7871: 1d7b961235e345db20933c057f265898e2e96fd2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134074v1: f2c37d7fd878c82ea57075948d614f60a168128c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4615247141540081984==--
