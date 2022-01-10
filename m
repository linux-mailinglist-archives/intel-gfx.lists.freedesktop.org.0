Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8754899EC
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 430B614A2EA;
	Mon, 10 Jan 2022 13:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDB3814A2E8;
 Mon, 10 Jan 2022 13:28:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE180A47DF;
 Mon, 10 Jan 2022 13:28:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6984937430702028428=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 10 Jan 2022 13:28:31 -0000
Message-ID: <164182131196.28742.17618471332679415447@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220110115133.1500718-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220110115133.1500718-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_short_term_pins_from_execbuf_by_requiring_lock_?=
 =?utf-8?q?to_unbind=2E_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6984937430702028428==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove short term pins from execbuf by requiring lock to unbind. (rev2)
URL   : https://patchwork.freedesktop.org/series/98137/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11059 -> Patchwork_21948
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/index.html

Participating hosts (43 -> 35)
------------------------------

  Missing    (8): bat-dg1-6 bat-dg1-5 bat-adlp-6 bat-adlp-4 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21948 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-pnv-d510/igt@amdgpu/amd_prime@amd-to-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8700k:       [DMESG-FAIL][3] ([i915#541]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11059/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][5] ([i915#2927] / [i915#4528]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11059/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][7] ([i915#4269]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11059/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11059 -> Patchwork_21948

  CI-20190529: 20190529
  CI_DRM_11059: 1d8aba1cfbab48b322c4d464437dd0c34da468ec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6325: ac29e097d4ff0f2e269a955ca86c5eb23908467a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21948: 953cc81f3a16f407d1aba0a97deb4496b6a56c47 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

953cc81f3a16 drm/i915: Remove short-term pins from execbuf, v6.
f5cb09503ae0 drm/i915: Remove support for unlocked i915_vma unbind
24fe65e145e6 drm/i915: Remove assert_object_held_shared
ec557f8e7070 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind, v2.
775c2d0a1bd1 drm/i915: Add object locking to i915_gem_evict_for_node and i915_gem_evict_something
2ffa12202a76 drm/i915: Add locking to i915_gem_evict_vm()
0a564d5e4bd9 drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors, v2.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/index.html

--===============6984937430702028428==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove short term pins from execbuf by requiring lock to unbind. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98137/">https://patchwork.freedesktop.org/series/98137/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11059 -&gt; Patchwork_21948</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/index.html</p>
<h2>Participating hosts (43 -&gt; 35)</h2>
<p>Missing    (8): bat-dg1-6 bat-dg1-5 bat-adlp-6 bat-adlp-4 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21948 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-pnv-d510/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11059/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11059/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11059/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21948/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11059 -&gt; Patchwork_21948</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11059: 1d8aba1cfbab48b322c4d464437dd0c34da468ec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6325: ac29e097d4ff0f2e269a955ca86c5eb23908467a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21948: 953cc81f3a16f407d1aba0a97deb4496b6a56c47 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>953cc81f3a16 drm/i915: Remove short-term pins from execbuf, v6.<br />
f5cb09503ae0 drm/i915: Remove support for unlocked i915_vma unbind<br />
24fe65e145e6 drm/i915: Remove assert_object_held_shared<br />
ec557f8e7070 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind, v2.<br />
775c2d0a1bd1 drm/i915: Add object locking to i915_gem_evict_for_node and i915_gem_evict_something<br />
2ffa12202a76 drm/i915: Add locking to i915_gem_evict_vm()<br />
0a564d5e4bd9 drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors, v2.</p>

</body>
</html>

--===============6984937430702028428==--
