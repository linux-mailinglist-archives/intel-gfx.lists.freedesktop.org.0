Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B06753B7793
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 20:04:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3BA6E8F5;
	Tue, 29 Jun 2021 18:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E7706E8EE;
 Tue, 29 Jun 2021 18:04:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 256C6AA915;
 Tue, 29 Jun 2021 18:04:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 29 Jun 2021 18:04:57 -0000
Message-ID: <162498989712.9053.10910935475623229052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210629151203.209465-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210629151203.209465-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Introduce_a_migrate_interface_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============0864321494=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0864321494==
Content-Type: multipart/alternative;
 boundary="===============8592884704904052459=="

--===============8592884704904052459==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Introduce a migrate interface (rev5)
URL   : https://patchwork.freedesktop.org/series/91890/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10289 -> Patchwork_20488
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10289 and Patchwork_20488:

### New IGT tests (1) ###

  * igt@i915_selftest@live@gem_migrate:
    - Statuses : 33 pass(s)
    - Exec time: [0.41, 5.40] s

  

Known issues
------------

  Here are the changes found in Patchwork_20488 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        NOTRUN -> [INCOMPLETE][3] ([i915#2782])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([i915#1372])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - fi-snb-2600:        [INCOMPLETE][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-snb-2600/igt@i915_selftest@live@hugepages.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-snb-2600/igt@i915_selftest@live@hugepages.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][8] ([i915#165]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10289 -> Patchwork_20488

  CI-20190529: 20190529
  CI_DRM_10289: b9081c2437cee8e573eeafcd19c816cc7e10f19d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6121: a63ceb48e6c3e733d04156b32fba3b4f4d5ad794 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20488: 94b313f6c0d29c7be21a8bb730b0de3ea3620b52 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

94b313f6c0d2 drm/i915/display: Migrate objects to LMEM if possible for display
7f6ae4d61ef2 drm/i915/gem: Introduce a selftest for the gem object migrate functionality
e12a3001cec3 drm/i915/gem: Implement object migration

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/index.html

--===============8592884704904052459==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Introduce a migrate interface (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91890/">https://patchwork.freedesktop.org/series/91890/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10289 -&gt; Patchwork_20488</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10289 and Patchwork_20488:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@gem_migrate:<ul>
<li>Statuses : 33 pass(s)</li>
<li>Exec time: [0.41, 5.40] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20488 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-snb-2600/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-snb-2600/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10289/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20488/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10289 -&gt; Patchwork_20488</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10289: b9081c2437cee8e573eeafcd19c816cc7e10f19d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6121: a63ceb48e6c3e733d04156b32fba3b4f4d5ad794 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20488: 94b313f6c0d29c7be21a8bb730b0de3ea3620b52 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>94b313f6c0d2 drm/i915/display: Migrate objects to LMEM if possible for display<br />
7f6ae4d61ef2 drm/i915/gem: Introduce a selftest for the gem object migrate functionality<br />
e12a3001cec3 drm/i915/gem: Implement object migration</p>

</body>
</html>

--===============8592884704904052459==--

--===============0864321494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0864321494==--
