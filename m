Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3143A853DAA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 22:54:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8648910E94F;
	Tue, 13 Feb 2024 21:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D344510E94F;
 Tue, 13 Feb 2024 21:54:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8806442459321444076=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Fix_crash_due_to_open_pmu_e?=
 =?utf-8?q?vents_during_unbind?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Feb 2024 21:54:00 -0000
Message-ID: <170786124091.1218995.5007803837071240005@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
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

--===============8806442459321444076==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix crash due to open pmu events during unbind
URL   : https://patchwork.freedesktop.org/series/129845/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14267 -> Patchwork_129845v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129845v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_psr@psr-sprite-plane-onoff}:
    - {bat-arls-2}:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/bat-arls-2/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - {bat-arls-2}:       [SKIP][2] ([i915#10208] / [i915#8809]) -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html

  
Known issues
------------

  Here are the changes found in Patchwork_129845v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][4] -> [FAIL][5] ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/fi-bsw-n3050/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/fi-bsw-n3050/boot.html
    - fi-apl-guc:         [PASS][6] -> [FAIL][7] ([i915#8293])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/fi-apl-guc/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/fi-apl-guc/boot.html
    - fi-cfl-8109u:       [PASS][8] -> [FAIL][9] ([i915#8293])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/fi-cfl-8109u/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-mtlp-6:         [DMESG-FAIL][10] -> [PASS][11] +20 other tests pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809


Build changes
-------------

  * IGT: IGT_7711 -> IGTPW_10664
  * Linux: CI_DRM_14267 -> Patchwork_129845v1

  CI-20190529: 20190529
  CI_DRM_14267: 43ab7b073fa4840f29521c57cab1f4eb161d4223 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_10664: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10664/index.html
  IGT_7711: 7711
  Patchwork_129845v1: 43ab7b073fa4840f29521c57cab1f4eb161d4223 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9b31829b0a65 i915/pmu: Cleanup pending events on unbind
4224b822ae0d i915/pmu: Add pmu_teardown helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/index.html

--===============8806442459321444076==
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
<tr><td><b>Series:</b></td><td>Fix crash due to open pmu events during unbind</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129845/">https://patchwork.freedesktop.org/series/129845/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14267 -&gt; Patchwork_129845v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-glk-j4005 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129845v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_psr@psr-sprite-plane-onoff}:</p>
<ul>
<li>{bat-arls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/bat-arls-2/igt@kms_psr@psr-sprite-plane-onoff.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10208">i915#10208</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/bat-arls-2/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129845v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14267/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129845v1/bat-mtlp-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> +20 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7711 -&gt; IGTPW_10664</li>
<li>Linux: CI_DRM_14267 -&gt; Patchwork_129845v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14267: 43ab7b073fa4840f29521c57cab1f4eb161d4223 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_10664: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10664/index.html<br />
  IGT_7711: 7711<br />
  Patchwork_129845v1: 43ab7b073fa4840f29521c57cab1f4eb161d4223 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9b31829b0a65 i915/pmu: Cleanup pending events on unbind<br />
4224b822ae0d i915/pmu: Add pmu_teardown helper</p>

</body>
</html>

--===============8806442459321444076==--
