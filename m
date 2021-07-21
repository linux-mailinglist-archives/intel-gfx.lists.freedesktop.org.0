Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165013D19A5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:25:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706DA6E9C7;
	Wed, 21 Jul 2021 22:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 874B36E9C7;
 Wed, 21 Jul 2021 22:25:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8019EA77A5;
 Wed, 21 Jul 2021 22:25:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Wed, 21 Jul 2021 22:25:36 -0000
Message-ID: <162690633650.767.3886384116405930750@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721215101.139794-1-matthew.brost@intel.com>
In-Reply-To: <20210721215101.139794-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2Vy?=
 =?utf-8?q?ies_to_merge_a_subset_of_GuC_submission_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1099294792=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1099294792==
Content-Type: multipart/alternative;
 boundary="===============9171146573773947954=="

--===============9171146573773947954==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Series to merge a subset of GuC submission (rev2)
URL   : https://patchwork.freedesktop.org/series/92791/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10367 -> Patchwork_20670
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20670:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@dmabuf:
    - {fi-tgl-dsi}:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-tgl-dsi/igt@i915_selftest@live@dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/fi-tgl-dsi/igt@i915_selftest@live@dmabuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_20670 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-tgl-1115g4}:    [FAIL][3] ([i915#1888]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][5] ([i915#165]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][7] ([i915#1372]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966


Participating hosts (38 -> 34)
------------------------------

  Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10367 -> Patchwork_20670

  CI-20190529: 20190529
  CI_DRM_10367: 598494d0149b67545593dfb1b5fa60278907749e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20670: 61b81bfe2ddee11be2e8fd22f84ba4e548a90d77 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

61b81bfe2dde drm/i915: Add intel_context tracing
37a4e4eb390b drm/i915/guc: Add trace point for GuC submit
752e0551e1d6 drm/i915/guc: Update GuC debugfs to support new GuC
af704c4a01b5 drm/i915/guc: Update intel_gt_wait_for_idle to work with GuC
0c70454fb944 drm/i915/guc: Ensure G2H response has space in buffer
48900c02cbf4 drm/i915/guc: Disable semaphores when using GuC scheduling
a2e1e262476d drm/i915/guc: Ensure request ordering via completion fences
b7c5a26b4acb drm/i915: Disable preempt busywait when using GuC scheduling
9786ce9beec1 drm/i915/guc: Extend deregistration fence to schedule disable
68b4749ad89a drm/i915/guc: Disable engine barriers with GuC during unpin
2a7cea557692 drm/i915/guc: Defer context unpin until scheduling is disabled
ac2069bdddf5 drm/i915/guc: Insert fence on context when deregistering
ba27aaa2fae5 drm/i915/guc: Implement GuC context operations for new inteface
0d92798721fc drm/i915/guc: Add bypass tasklet submission path to GuC
c9e9768ec25b drm/i915/guc: Implement GuC submission tasklet
7b76cda1c85a drm/i915/guc: Add LRC descriptor context lookup array
87421139cc96 drm/i915/guc: Remove GuC stage descriptor, add LRC descriptor
081c22c811d7 drm/i915/guc: Add new GuC interface defines and structures

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/index.html

--===============9171146573773947954==
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
<tr><td><b>Series:</b></td><td>Series to merge a subset of GuC submission (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92791/">https://patchwork.freedesktop.org/series/92791/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10367 -&gt; Patchwork_20670</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20670:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@dmabuf:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-tgl-dsi/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/fi-tgl-dsi/igt@i915_selftest@live@dmabuf.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20670 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20670/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10367 -&gt; Patchwork_20670</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10367: 598494d0149b67545593dfb1b5fa60278907749e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6146: 6caef22e4aafed275771f564d4ea4cab09896ebc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20670: 61b81bfe2ddee11be2e8fd22f84ba4e548a90d77 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>61b81bfe2dde drm/i915: Add intel_context tracing<br />
37a4e4eb390b drm/i915/guc: Add trace point for GuC submit<br />
752e0551e1d6 drm/i915/guc: Update GuC debugfs to support new GuC<br />
af704c4a01b5 drm/i915/guc: Update intel_gt_wait_for_idle to work with GuC<br />
0c70454fb944 drm/i915/guc: Ensure G2H response has space in buffer<br />
48900c02cbf4 drm/i915/guc: Disable semaphores when using GuC scheduling<br />
a2e1e262476d drm/i915/guc: Ensure request ordering via completion fences<br />
b7c5a26b4acb drm/i915: Disable preempt busywait when using GuC scheduling<br />
9786ce9beec1 drm/i915/guc: Extend deregistration fence to schedule disable<br />
68b4749ad89a drm/i915/guc: Disable engine barriers with GuC during unpin<br />
2a7cea557692 drm/i915/guc: Defer context unpin until scheduling is disabled<br />
ac2069bdddf5 drm/i915/guc: Insert fence on context when deregistering<br />
ba27aaa2fae5 drm/i915/guc: Implement GuC context operations for new inteface<br />
0d92798721fc drm/i915/guc: Add bypass tasklet submission path to GuC<br />
c9e9768ec25b drm/i915/guc: Implement GuC submission tasklet<br />
7b76cda1c85a drm/i915/guc: Add LRC descriptor context lookup array<br />
87421139cc96 drm/i915/guc: Remove GuC stage descriptor, add LRC descriptor<br />
081c22c811d7 drm/i915/guc: Add new GuC interface defines and structures</p>

</body>
</html>

--===============9171146573773947954==--

--===============1099294792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1099294792==--
