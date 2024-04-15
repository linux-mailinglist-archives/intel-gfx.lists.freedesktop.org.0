Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F168D8A4B8F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 11:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869291123F5;
	Mon, 15 Apr 2024 09:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24941123F8;
 Mon, 15 Apr 2024 09:35:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6619170119087528734=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Add_support_for_partial_map?=
 =?utf-8?q?ping_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 09:35:10 -0000
Message-ID: <171317371098.1404405.7649410459715918424@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412004808.288130-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240412004808.288130-1-andi.shyti@linux.intel.com>
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

--===============6619170119087528734==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for partial mapping (rev5)
URL   : https://patchwork.freedesktop.org/series/131817/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14571 -> Patchwork_131817v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/index.html

Participating hosts (35 -> 34)
------------------------------

  Additional (1): fi-apl-guc 
  Missing    (2): bat-atsm-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_131817v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][1] ([i915#4613]) +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [PASS][2] -> [FAIL][3] ([i915#10378])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  * igt@i915_selftest@live@gt_engines:
    - bat-adls-6:         [PASS][4] -> [TIMEOUT][5] ([i915#10026])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-adls-6/igt@i915_selftest@live@gt_engines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-adls-6/igt@i915_selftest@live@gt_engines.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-apl-guc:         NOTRUN -> [SKIP][6] +17 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [WARN][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-arls-2:         [ABORT][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-arls-2/igt@i915_selftest@live@gt_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-arls-2/igt@i915_selftest@live@gt_contexts.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-dp-6:
    - {bat-mtlp-9}:       [DMESG-WARN][11] ([i915#10435]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-dp-6.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-dp-6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14571 -> Patchwork_131817v5

  CI-20190529: 20190529
  CI_DRM_14571: 8af056cad31bddacf155eeb7a199af5bd0f02abc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131817v5: 8af056cad31bddacf155eeb7a199af5bd0f02abc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bba54149aeba drm/i915/gem: Calculate object page offset for partial memory mapping
212a7fed3ba0 drm/i915/gem: Do not look for the exact address in node
3c69c65059c3 drm/i915/gem: Increment vma offset when mapping fb objects

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/index.html

--===============6619170119087528734==
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
<tr><td><b>Series:</b></td><td>Add support for partial mapping (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131817/">https://patchwork.freedesktop.org/series/131817/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14571 -&gt; Patchwork_131817v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Additional (1): fi-apl-guc <br />
  Missing    (2): bat-atsm-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131817v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-adls-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-adls-6/igt@i915_selftest@live@gt_engines.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10026">i915#10026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/fi-apl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-arls-2/igt@i915_selftest@live@gt_contexts.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-arls-2/igt@i915_selftest@live@gt_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14571/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-dp-6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10435">i915#10435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131817v5/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-dp-6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14571 -&gt; Patchwork_131817v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14571: 8af056cad31bddacf155eeb7a199af5bd0f02abc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131817v5: 8af056cad31bddacf155eeb7a199af5bd0f02abc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bba54149aeba drm/i915/gem: Calculate object page offset for partial memory mapping<br />
212a7fed3ba0 drm/i915/gem: Do not look for the exact address in node<br />
3c69c65059c3 drm/i915/gem: Increment vma offset when mapping fb objects</p>

</body>
</html>

--===============6619170119087528734==--
