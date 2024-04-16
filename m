Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6225D8A5F1A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 02:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE49112453;
	Tue, 16 Apr 2024 00:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 811BB10EB55;
 Tue, 16 Apr 2024 00:15:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8948885483696614348=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/vma=3A_Fix_UAF_on_?=
 =?utf-8?q?reopen_vs_destroy_race_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Apr 2024 00:15:20 -0000
Message-ID: <171322652049.1424598.2794381804529387163@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240415195310.165934-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20240415195310.165934-2-janusz.krzysztofik@linux.intel.com>
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

--===============8948885483696614348==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vma: Fix UAF on reopen vs destroy race (rev3)
URL   : https://patchwork.freedesktop.org/series/132360/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14582 -> Patchwork_132360v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/index.html

Participating hosts (38 -> 34)
------------------------------

  Missing    (4): fi-glk-j4005 fi-cfl-8109u fi-snb-2520m bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_132360v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - bat-atsm-1:         NOTRUN -> [ABORT][1] ([i915#10182] / [i915#10564])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/bat-atsm-1/igt@i915_selftest@live@gem.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - bat-adls-6:         [TIMEOUT][2] ([i915#10795]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/bat-adls-6/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/bat-adls-6/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-atsm-1:         [INCOMPLETE][4] ([i915#10461]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/bat-atsm-1/igt@i915_selftest@live@gt_timelines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/bat-atsm-1/igt@i915_selftest@live@gt_timelines.html

  
  [i915#10182]: https://gitlab.freedesktop.org/drm/intel/issues/10182
  [i915#10461]: https://gitlab.freedesktop.org/drm/intel/issues/10461
  [i915#10564]: https://gitlab.freedesktop.org/drm/intel/issues/10564
  [i915#10795]: https://gitlab.freedesktop.org/drm/intel/issues/10795


Build changes
-------------

  * Linux: CI_DRM_14582 -> Patchwork_132360v3

  CI-20190529: 20190529
  CI_DRM_14582: 7bc330055f5c2924b42e389887691fea3f401a45 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132360v3: 7bc330055f5c2924b42e389887691fea3f401a45 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3d942f9707fc drm/i915/vma: Fix UAF on reopen vs destroy race

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/index.html

--===============8948885483696614348==
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
<tr><td><b>Series:</b></td><td>drm/i915/vma: Fix UAF on reopen vs destroy race (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132360/">https://patchwork.freedesktop.org/series/132360/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14582 -&gt; Patchwork_132360v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): fi-glk-j4005 fi-cfl-8109u fi-snb-2520m bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132360v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gem:<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/bat-atsm-1/igt@i915_selftest@live@gem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10182">i915#10182</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10564">i915#10564</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/bat-adls-6/igt@i915_selftest@live@execlists.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10795">i915#10795</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/bat-adls-6/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14582/bat-atsm-1/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10461">i915#10461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132360v3/bat-atsm-1/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14582 -&gt; Patchwork_132360v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14582: 7bc330055f5c2924b42e389887691fea3f401a45 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132360v3: 7bc330055f5c2924b42e389887691fea3f401a45 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3d942f9707fc drm/i915/vma: Fix UAF on reopen vs destroy race</p>

</body>
</html>

--===============8948885483696614348==--
