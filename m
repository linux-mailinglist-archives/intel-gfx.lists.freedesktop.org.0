Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B663CC8E0B6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 12:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29BC810E05D;
	Thu, 27 Nov 2025 11:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D67A10E047;
 Thu, 27 Nov 2025 11:28:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3375048005432924170=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Revert_=22power=3A_always?=
 =?utf-8?q?_freeze_efivarfs=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Nov 2025 11:28:44 -0000
Message-ID: <176424292431.33971.8503602451767943249@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251127100400.1372221-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20251127100400.1372221-1-chaitanya.kumar.borah@intel.com>
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

--===============3375048005432924170==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "power: always freeze efivarfs"
URL   : https://patchwork.freedesktop.org/series/158163/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17595 -> Patchwork_158163v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158163v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158163v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_158163v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_store@basic:
    - bat-dg2-14:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/bat-dg2-14/igt@gem_exec_store@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/bat-dg2-14/igt@gem_exec_store@basic.html

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@kms_addfb_basic (NEW):
    - bat-arlh-3:         NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/bat-arlh-3/igt@kms_addfb_basic.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-guc:         [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/fi-kbl-guc/igt@kms_force_connector_basic@force-edid.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/fi-kbl-guc/igt@kms_force_connector_basic@force-edid.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17595 and Patchwork_158163v1:

### New IGT tests (1) ###

  * igt@kms_addfb_basic:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_158163v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-jsl-1:          [PASS][8] -> [DMESG-FAIL][9] ([i915#13774]) +1 other test dmesg-fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/bat-jsl-1/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/bat-jsl-1/igt@i915_selftest@live.html

  
  [i915#13774]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774


Build changes
-------------

  * Linux: CI_DRM_17595 -> Patchwork_158163v1

  CI-20190529: 20190529
  CI_DRM_17595: e7a767430515c3a6e8aee91c2a68cba8b06fe884 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8639: 2ce563031e6b2ec91479f6af8c326d25c15bdb26 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158163v1: e7a767430515c3a6e8aee91c2a68cba8b06fe884 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/index.html

--===============3375048005432924170==
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
<tr><td><b>Series:</b></td><td>Revert &quot;power: always freeze efivarfs&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158163/">https://patchwork.freedesktop.org/series/158163/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17595 -&gt; Patchwork_158163v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158163v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_158163v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_158163v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_store@basic:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/bat-dg2-14/igt@gem_exec_store@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/bat-dg2-14/igt@gem_exec_store@basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/fi-kbl-8809g/igt@gem_linear_blits@basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic (NEW):</p>
<ul>
<li>bat-arlh-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/bat-arlh-3/igt@kms_addfb_basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/fi-kbl-guc/igt@kms_force_connector_basic@force-edid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/fi-kbl-guc/igt@kms_force_connector_basic@force-edid.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17595 and Patchwork_158163v1:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_addfb_basic:<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158163v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158163v1/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774">i915#13774</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17595 -&gt; Patchwork_158163v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17595: e7a767430515c3a6e8aee91c2a68cba8b06fe884 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8639: 2ce563031e6b2ec91479f6af8c326d25c15bdb26 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158163v1: e7a767430515c3a6e8aee91c2a68cba8b06fe884 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3375048005432924170==--
