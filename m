Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7EFA9BFBA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 09:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB27910E89A;
	Fri, 25 Apr 2025 07:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D6A10E89A;
 Fri, 25 Apr 2025 07:29:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1355470412136878754=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gsc=3A_mei_inter?=
 =?utf-8?q?rupt_top_half_should_be_in_irq_disabled_context_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Junxiao Chang" <junxiao.chang@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Apr 2025 07:29:22 -0000
Message-ID: <174556616233.9642.12858635073383085674@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250424065609.624457-1-junxiao.chang@intel.com>
In-Reply-To: <20250424065609.624457-1-junxiao.chang@intel.com>
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

--===============1355470412136878754==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gsc: mei interrupt top half should be in irq disabled context (rev2)
URL   : https://patchwork.freedesktop.org/series/148172/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16463 -> Patchwork_148172v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_148172v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_148172v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/index.html

Participating hosts (41 -> 41)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_148172v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines:
    - bat-adls-6:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16463/bat-adls-6/igt@gem_exec_parallel@engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/bat-adls-6/igt@gem_exec_parallel@engines.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16463 and Patchwork_148172v2:

### New IGT tests (2) ###

  * igt@gem_exec_parallel@load:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_parallel@nullptr:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_148172v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16463/bat-apl-1/igt@dmabuf@all-tests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12061]) +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16463/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-2:         [DMESG-FAIL][7] ([i915#12061]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16463/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904


Build changes
-------------

  * Linux: CI_DRM_16463 -> Patchwork_148172v2

  CI-20190529: 20190529
  CI_DRM_16463: 22d29c516450a3931a8e0b1346ab9f334c19ab9c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8336: 8336
  Patchwork_148172v2: 22d29c516450a3931a8e0b1346ab9f334c19ab9c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/index.html

--===============1355470412136878754==
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
<tr><td><b>Series:</b></td><td>drm/i915/gsc: mei interrupt top half should be in irq disabled context (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148172/">https://patchwork.freedesktop.org/series/148172/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16463 -&gt; Patchwork_148172v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_148172v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_148172v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_148172v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_parallel@engines:<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16463/bat-adls-6/igt@gem_exec_parallel@engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/bat-adls-6/igt@gem_exec_parallel@engines.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16463 and Patchwork_148172v2:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@gem_exec_parallel@load:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@nullptr:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148172v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16463/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16463/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16463/bat-arlh-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16463 -&gt; Patchwork_148172v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16463: 22d29c516450a3931a8e0b1346ab9f334c19ab9c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8336: 8336<br />
  Patchwork_148172v2: 22d29c516450a3931a8e0b1346ab9f334c19ab9c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1355470412136878754==--
