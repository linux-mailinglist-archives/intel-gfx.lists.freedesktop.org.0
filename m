Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494C33B679F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 19:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3666E4F3;
	Mon, 28 Jun 2021 17:27:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D0B36E4F3;
 Mon, 28 Jun 2021 17:27:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85F27A00E6;
 Mon, 28 Jun 2021 17:27:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 28 Jun 2021 17:27:41 -0000
Message-ID: <162490126154.2573.12285239475551864947@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Introduce_a_migrate_interface_=28rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0803345443=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0803345443==
Content-Type: multipart/alternative;
 boundary="===============1333169596684200953=="

--===============1333169596684200953==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Introduce a migrate interface (rev3)
URL   : https://patchwork.freedesktop.org/series/91890/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10284 -> Patchwork_20479
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10284 and Patchwork_20479:

### New IGT tests (1) ###

  * igt@i915_selftest@live@gem_migrate:
    - Statuses : 33 pass(s)
    - Exec time: [0.43, 5.28] s

  

Known issues
------------

  Here are the changes found in Patchwork_20479 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][2] -> [INCOMPLETE][3] ([i915#2782] / [i915#2940])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10284/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][4] ([fdo#109271] / [i915#1436])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][5] ([i915#2782]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10284/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940


Participating hosts (40 -> 36)
------------------------------

  Missing    (4): fi-bsw-cyan fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 


Build changes
-------------

  * Linux: CI_DRM_10284 -> Patchwork_20479

  CI-20190529: 20190529
  CI_DRM_10284: c4cc46175b38e554eab7ac3d1b95a85c79963d4a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6120: c45c6b727c1efaced0b53620bd41c8e4facfb31f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20479: effbc92a43a968b385dca5695e50487386c8d33c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

effbc92a43a9 drm/i915/gem: Migrate to system at dma-buf map time
00ac06b936ba drm/i915/gem: Fix same-driver-another-instance dma-buf export
65e3941fa259 drm/i915/display: Migrate objects to LMEM if possible for display
fb5a2bfc3766 drm/i915/gem: Introduce a selftest for the gem object migrate functionality
673d9747bd21 drm/i915/gem: Implement object migration

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/index.html

--===============1333169596684200953==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Introduce a migrate interface (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91890/">https://patchwork.freedesktop.org/series/91890/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10284 -&gt; Patchwork_20479</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10284 and Patchwork_20479:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@gem_migrate:<ul>
<li>Statuses : 33 pass(s)</li>
<li>Exec time: [0.43, 5.28] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20479 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10284/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10284/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20479/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): fi-bsw-cyan fi-hsw-4200u fi-bdw-samus fi-bsw-n3050 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10284 -&gt; Patchwork_20479</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10284: c4cc46175b38e554eab7ac3d1b95a85c79963d4a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6120: c45c6b727c1efaced0b53620bd41c8e4facfb31f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20479: effbc92a43a968b385dca5695e50487386c8d33c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>effbc92a43a9 drm/i915/gem: Migrate to system at dma-buf map time<br />
00ac06b936ba drm/i915/gem: Fix same-driver-another-instance dma-buf export<br />
65e3941fa259 drm/i915/display: Migrate objects to LMEM if possible for display<br />
fb5a2bfc3766 drm/i915/gem: Introduce a selftest for the gem object migrate functionality<br />
673d9747bd21 drm/i915/gem: Implement object migration</p>

</body>
</html>

--===============1333169596684200953==--

--===============0803345443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0803345443==--
