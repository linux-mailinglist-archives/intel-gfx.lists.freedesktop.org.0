Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3503D9DB5
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 08:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376A26E532;
	Thu, 29 Jul 2021 06:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0A166E104;
 Thu, 29 Jul 2021 06:36:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A76AEA66C9;
 Thu, 29 Jul 2021 06:36:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 29 Jul 2021 06:36:05 -0000
Message-ID: <162754056565.27325.16742834588259713034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
In-Reply-To: <20210729054118.2458523-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRm9y?=
 =?utf-8?q?cewake_and_shadowed_register_updates?=
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
Content-Type: multipart/mixed; boundary="===============1026720420=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1026720420==
Content-Type: multipart/alternative;
 boundary="===============7983918805915551334=="

--===============7983918805915551334==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Forcewake and shadowed register updates
URL   : https://patchwork.freedesktop.org/series/93158/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10416 -> Patchwork_20736
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/index.html

Known issues
------------

  Here are the changes found in Patchwork_20736 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +29 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#579])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][4] -> [DMESG-FAIL][5] ([i915#2927])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#1436])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bsw-nick/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (40 -> 35)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10416 -> Patchwork_20736

  CI-20190529: 20190529
  CI_DRM_10416: 68506f9070522fa084cb3a8e5e0de44ee63b61ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6155: 4b51398dcd7559012b85776e7353d516ff1e6ce6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20736: 6f65d9de01bf32edbe7cfef1c8e405685ea3cf40 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6f65d9de01bf drm/i915/xehp: Xe_HP shadowed registers are a strict superset of gen12
490ac23b9af9 drm/i915/gen12: Update shadowed register table
0a7b44dd5dd6 drm/i915/gen11: Update shadowed register table
13ee96857911 drm/i915: Make shadow tables range-based
91dc5afff480 drm/i915: Re-use gen11 forcewake read functions on gen12
6ce756ba709e drm/i915: correct name of GT forcewake domain in error messages

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/index.html

--===============7983918805915551334==
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
<tr><td><b>Series:</b></td><td>Forcewake and shadowed register updates</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93158/">https://patchwork.freedesktop.org/series/93158/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10416 -&gt; Patchwork_20736</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20736 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bdw-5557u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10416 -&gt; Patchwork_20736</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10416: 68506f9070522fa084cb3a8e5e0de44ee63b61ca @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6155: 4b51398dcd7559012b85776e7353d516ff1e6ce6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20736: 6f65d9de01bf32edbe7cfef1c8e405685ea3cf40 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6f65d9de01bf drm/i915/xehp: Xe_HP shadowed registers are a strict superset of gen12<br />
490ac23b9af9 drm/i915/gen12: Update shadowed register table<br />
0a7b44dd5dd6 drm/i915/gen11: Update shadowed register table<br />
13ee96857911 drm/i915: Make shadow tables range-based<br />
91dc5afff480 drm/i915: Re-use gen11 forcewake read functions on gen12<br />
6ce756ba709e drm/i915: correct name of GT forcewake domain in error messages</p>

</body>
</html>

--===============7983918805915551334==--

--===============1026720420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1026720420==--
