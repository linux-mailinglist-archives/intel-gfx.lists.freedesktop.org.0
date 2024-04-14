Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780A89D915
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 14:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53572112D31;
	Tue,  9 Apr 2024 12:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0172D112D31;
 Tue,  9 Apr 2024 12:20:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2656161178531420646=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/psr=3A_Use_crtc=5F?=
 =?utf-8?q?state-=3Eport=5Fclock_instead_of_intel=5Fdp-=3Elink=5Frate?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Apr 2024 12:20:06 -0000
Message-ID: <171266520600.1300822.11824038886707139422@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240409085759.178235-1-jouni.hogander@intel.com>
In-Reply-To: <20240409085759.178235-1-jouni.hogander@intel.com>
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

--===============2656161178531420646==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: Use crtc_state->port_clock instead of intel_dp->link_rate
URL   : https://patchwork.freedesktop.org/series/132198/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14548 -> Patchwork_132198v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132198v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132198v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-blb-e6850 bat-mtlp-9 fi-glk-j4005 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132198v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-arls-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-arls-2/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/bat-arls-2/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_132198v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@client:
    - bat-dg2-8:          [PASS][3] -> [ABORT][4] ([i915#10366])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-dg2-8/igt@i915_selftest@live@client.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/bat-dg2-8/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][5] -> [ABORT][6] ([i915#10594])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - bat-dg2-9:          [ABORT][7] ([i915#10366]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-dg2-9/igt@i915_selftest@live@perf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/bat-dg2-9/igt@i915_selftest@live@perf.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10594]: https://gitlab.freedesktop.org/drm/intel/issues/10594


Build changes
-------------

  * Linux: CI_DRM_14548 -> Patchwork_132198v1

  CI-20190529: 20190529
  CI_DRM_14548: d2e6568486674a4a3a4455df449d80a038f11e10 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7802: 7802
  Patchwork_132198v1: d2e6568486674a4a3a4455df449d80a038f11e10 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2f0a88934df0 drm/i915/psr: Use crtc_state->port_clock instead of intel_dp->link_rate

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/index.html

--===============2656161178531420646==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: Use crtc_state-&gt;port_clock instead of intel_dp-&gt;link_rate</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132198/">https://patchwork.freedesktop.org/series/132198/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14548 -&gt; Patchwork_132198v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132198v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132198v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-blb-e6850 bat-mtlp-9 fi-glk-j4005 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132198v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-arls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/bat-arls-2/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132198v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/bat-dg2-8/igt@i915_selftest@live@client.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10594">i915#10594</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-dg2-9/igt@i915_selftest@live@perf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132198v1/bat-dg2-9/igt@i915_selftest@live@perf.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14548 -&gt; Patchwork_132198v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14548: d2e6568486674a4a3a4455df449d80a038f11e10 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7802: 7802<br />
  Patchwork_132198v1: d2e6568486674a4a3a4455df449d80a038f11e10 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2f0a88934df0 drm/i915/psr: Use crtc_state-&gt;port_clock instead of intel_dp-&gt;link_rate</p>

</body>
</html>

--===============2656161178531420646==--
