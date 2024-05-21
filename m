Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7B78CB617
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 00:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8194410F185;
	Tue, 21 May 2024 22:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0727210F185;
 Tue, 21 May 2024 22:42:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2064857375783515331=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Fix_CCS_id?=
 =?utf-8?q?=27s_calculation_for_CCS_mode_setting_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 May 2024 22:42:33 -0000
Message-ID: <171633135302.2165265.493792000387836495@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240517090616.242529-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240517090616.242529-1-andi.shyti@linux.intel.com>
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

--===============2064857375783515331==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Fix CCS id's calculation for CCS mode setting (rev2)
URL   : https://patchwork.freedesktop.org/series/133732/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14797 -> Patchwork_133732v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_133732v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_133732v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_133732v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_migrate:
    - bat-arls-3:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14797/bat-arls-3/igt@i915_selftest@live@gem_migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/bat-arls-3/igt@i915_selftest@live@gem_migrate.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_getparams_basic@basic-eu-total:
    - {bat-apl-1}:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14797/bat-apl-1/igt@i915_getparams_basic@basic-eu-total.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/bat-apl-1/igt@i915_getparams_basic@basic-eu-total.html

  * igt@runner@aborted:
    - {bat-apl-1}:        NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/bat-apl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_133732v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-9:          [PASS][6] -> [FAIL][7] ([i915#10378])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14797/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10911]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10911


Build changes
-------------

  * Linux: CI_DRM_14797 -> Patchwork_133732v2

  CI-20190529: 20190529
  CI_DRM_14797: 3fc3e155dc8c334ca7b18aa461b2171867e4febe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7866: 2b7701838c3ebaa3c717b6521cafafe3b9ae4a4f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133732v2: 3fc3e155dc8c334ca7b18aa461b2171867e4febe @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/index.html

--===============2064857375783515331==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Fix CCS id&#x27;s calculation for CCS mode setting (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133732/">https://patchwork.freedesktop.org/series/133732/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14797 -&gt; Patchwork_133732v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_133732v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_133732v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_133732v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem_migrate:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14797/bat-arls-3/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/bat-arls-3/igt@i915_selftest@live@gem_migrate.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14797/bat-apl-1/igt@i915_getparams_basic@basic-eu-total.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/bat-apl-1/igt@i915_getparams_basic@basic-eu-total.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{bat-apl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/bat-apl-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133732v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@basic@lmem0:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14797/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133732v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14797 -&gt; Patchwork_133732v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14797: 3fc3e155dc8c334ca7b18aa461b2171867e4febe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7866: 2b7701838c3ebaa3c717b6521cafafe3b9ae4a4f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133732v2: 3fc3e155dc8c334ca7b18aa461b2171867e4febe @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2064857375783515331==--
