Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EE58C7D90
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 22:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4434310E208;
	Thu, 16 May 2024 20:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B78B10E208;
 Thu, 16 May 2024 20:00:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0233928298249405368=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/probe-helper=3A_Call_dr?=
 =?utf-8?q?m=5Fmode=5Fvalidate=5Fycbcr420=28=29_before_connector-=3Emode=5Fv?=
 =?utf-8?q?alid=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2024 20:00:58 -0000
Message-ID: <171588965817.2123004.2275594031553862813@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516173324.18149-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240516173324.18149-1-ville.syrjala@linux.intel.com>
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

--===============0233928298249405368==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/probe-helper: Call drm_mode_validate_ycbcr420() before connector->mode_valid()
URL   : https://patchwork.freedesktop.org/series/133709/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14776 -> Patchwork_133709v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_133709v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_133709v1, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/index.html

Participating hosts (42 -> 42)
------------------------------

  Additional (2): fi-cfl-8109u fi-elk-e7500 
  Missing    (2): bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133709v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@module-reload:
    - bat-jsl-1:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14776/bat-jsl-1/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/bat-jsl-1/igt@i915_pm_rpm@module-reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-9}:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14776/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-6:
    - {bat-mtlp-9}:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14776/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-6.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-6.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6:
    - {bat-mtlp-9}:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14776/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6.html

  
Known issues
------------

  Here are the changes found in Patchwork_133709v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][9] ([i915#2190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][10] ([i915#4613]) +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@kms_dsc@dsc-basic:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][11] +11 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - fi-elk-e7500:       NOTRUN -> [SKIP][12] +24 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14776 -> Patchwork_133709v1

  CI-20190529: 20190529
  CI_DRM_14776: 01e8fd3a8450d33ddf644820ffa8de5369e6a7a8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7858: 133c90d6aabcd90871e36946317c90ee83c2f847 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133709v1: 01e8fd3a8450d33ddf644820ffa8de5369e6a7a8 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/index.html

--===============0233928298249405368==
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
<tr><td><b>Series:</b></td><td>drm/probe-helper: Call drm_mode_validate_ycbcr420() before connector-&gt;mode_valid()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133709/">https://patchwork.freedesktop.org/series/133709/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14776 -&gt; Patchwork_133709v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_133709v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_133709v1, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/index.html</p>
<h2>Participating hosts (42 -&gt; 42)</h2>
<p>Additional (2): fi-cfl-8109u fi-elk-e7500 <br />
  Missing    (2): bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_133709v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14776/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/bat-jsl-1/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14776/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/bat-mtlp-9/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14776/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-6.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14776/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-6.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133709v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133709v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14776 -&gt; Patchwork_133709v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14776: 01e8fd3a8450d33ddf644820ffa8de5369e6a7a8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7858: 133c90d6aabcd90871e36946317c90ee83c2f847 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133709v1: 01e8fd3a8450d33ddf644820ffa8de5369e6a7a8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0233928298249405368==--
