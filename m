Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B9489CC20
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5089810E5E5;
	Mon,  8 Apr 2024 18:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A7110E5E5;
 Mon,  8 Apr 2024 18:59:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4015719021540613029=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm=3A_debug_logging_improv?=
 =?utf-8?q?ements_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 18:59:50 -0000
Message-ID: <171260279074.1286971.12312854398151926720@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712568037.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712568037.git.jani.nikula@intel.com>
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

--===============4015719021540613029==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: debug logging improvements (rev2)
URL   : https://patchwork.freedesktop.org/series/130881/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14543 -> Patchwork_130881v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130881v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130881v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/index.html

Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-glk-j4005 fi-cfl-8109u fi-apl-guc fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130881v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-adlp-11:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-adlp-11/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/bat-adlp-11/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@objects:
    - bat-arls-2:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-arls-2/igt@i915_selftest@live@objects.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/bat-arls-2/igt@i915_selftest@live@objects.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_mocs:
    - {bat-arls-4}:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-arls-4/igt@i915_selftest@live@gt_mocs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/bat-arls-4/igt@i915_selftest@live@gt_mocs.html

  
Known issues
------------

  Here are the changes found in Patchwork_130881v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-dpms@a-dp6:
    - {bat-mtlp-9}:       [DMESG-WARN][7] ([i915#10435]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10435]: https://gitlab.freedesktop.org/drm/intel/issues/10435


Build changes
-------------

  * Linux: CI_DRM_14543 -> Patchwork_130881v2

  CI-20190529: 20190529
  CI_DRM_14543: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7801: 7801
  Patchwork_130881v2: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

fd8df2b8a798 drm: prefer DRM_MODE_FMT/ARG over drm_mode_debug_printmodeline()
adc78f76eb2b drm/crtc-helper: switch to drm device based logging and warns
a83408378298 drm/crtc: switch to drm device based logging
bfd64144ecbc drm/client: switch to drm device based logging, and more
ac3c8a489c1f drm/sysfs: switch to drm device based logging
eddb4a71e3c1 drm/modes: switch to drm device based error logging
7830c15dc1f6 drm/probe-helper: switch to drm device based logging

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/index.html

--===============4015719021540613029==
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
<tr><td><b>Series:</b></td><td>drm: debug logging improvements (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130881/">https://patchwork.freedesktop.org/series/130881/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14543 -&gt; Patchwork_130881v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130881v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130881v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/index.html</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-glk-j4005 fi-cfl-8109u fi-apl-guc fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130881v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-adlp-11/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/bat-adlp-11/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-arls-2/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/bat-arls-2/igt@i915_selftest@live@objects.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-arls-4/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/bat-arls-4/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130881v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms@a-dp6:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14543/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10435">i915#10435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130881v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@a-dp6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14543 -&gt; Patchwork_130881v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14543: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7801: 7801<br />
  Patchwork_130881v2: a533b51ca017728c1228432e8e1e9aba4fd65b02 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>fd8df2b8a798 drm: prefer DRM_MODE_FMT/ARG over drm_mode_debug_printmodeline()<br />
adc78f76eb2b drm/crtc-helper: switch to drm device based logging and warns<br />
a83408378298 drm/crtc: switch to drm device based logging<br />
bfd64144ecbc drm/client: switch to drm device based logging, and more<br />
ac3c8a489c1f drm/sysfs: switch to drm device based logging<br />
eddb4a71e3c1 drm/modes: switch to drm device based error logging<br />
7830c15dc1f6 drm/probe-helper: switch to drm device based logging</p>

</body>
</html>

--===============4015719021540613029==--
