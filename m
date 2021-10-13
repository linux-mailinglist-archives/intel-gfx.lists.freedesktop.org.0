Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7087142CD91
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 00:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902816E117;
	Wed, 13 Oct 2021 22:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52E566E117;
 Wed, 13 Oct 2021 22:11:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49D26A9A42;
 Wed, 13 Oct 2021 22:11:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0904837172914806022=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Oct 2021 22:11:07 -0000
Message-ID: <163416306726.10253.7693561421081576452@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211013204231.19287-1-matthew.brost@intel.com>
In-Reply-To: <20211013204231.19287-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUGFy?=
 =?utf-8?q?allel_submission_aka_multi-bb_execbuf_=28rev6=29?=
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

--===============0904837172914806022==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Parallel submission aka multi-bb execbuf (rev6)
URL   : https://patchwork.freedesktop.org/series/92789/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10732 -> Patchwork_21334
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21334 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21334, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21334:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-kbl-r:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10732/fi-kbl-r/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-kbl-r/boot.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10732 and Patchwork_21334:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc_multi_lrc:
    - Statuses : 31 pass(s)
    - Exec time: [0.45, 3.91] s

  

Known issues
------------

  Here are the changes found in Patchwork_21334 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][4] ([i915#1610])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][5] ([i915#2426] / [i915#3363])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-apl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10732/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [FAIL][8] ([i915#1161]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10732/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363


Participating hosts (41 -> 36)
------------------------------

  Additional (1): fi-apl-guc 
  Missing    (6): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan fi-bwr-2160 fi-dg1-1 fi-skl-6700k2 


Build changes
-------------

  * Linux: CI_DRM_10732 -> Patchwork_21334

  CI-20190529: 20190529
  CI_DRM_10732: 3fdfa1de4774903b9cb4fb308102b5a2d762d829 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6243: 438788b5dbd23085745fdd3da5a237f3577945df @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21334: 9a0c2d682fa102c39ca1c74e30b4f829a5a33a67 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9a0c2d682fa1 drm/i915/execlists: Weak parallel submission support for execlists
1f94d4826235 drm/i915: Enable multi-bb execbuf
20f16cbe9cab drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
45927bbbecde drm/i915: Make request conflict tracking understand parallel submits
5370262c7b18 drm/i915/guc: Handle errors in multi-lrc requests
f5b8b45334d5 drm/i915: Multi-BB execbuf
1984b91d5186 drm/i915/guc: Implement no mid batch preemption for multi-lrc
27d342e07431 drm/i915/guc: Add basic GuC multi-lrc selftest
304fa81a9399 drm/i915/doc: Update parallel submit doc to point to i915_drm.h
a6dbcce14531 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
fc3628d02c3a drm/i915/guc: Update debugfs for GuC multi-lrc
cc32a9e001af drm/i915/guc: Implement multi-lrc reset
31917c1dcf79 drm/i915/guc: Insert submit fences between requests in parent-child relationship
13fb055cc22c drm/i915/guc: Implement multi-lrc submission
15aba0f8dc81 drm/i915/guc: Implement parallel context pin / unpin functions
0bdfa5c16cbe drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
0d569f349c42 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
150093ea7387 drm/i915/guc: Add multi-lrc context registration
3fcd1f83dde6 drm/i915/guc: Introduce context parent-child relationship
baf5dc1fc9df drm/i915: Expose logical engine instance to user
edf6b764f7ad drm/i915: Add logical engine mapping
7751cb08a525 drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
fce1426ce7b7 drm/i915/guc: Take engine PM when a context is pinned with GuC submission
a7d1c1c82188 drm/i915/guc: Take GT PM ref when deregistering context
96b392951d3d drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/index.html

--===============0904837172914806022==
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
<tr><td><b>Series:</b></td><td>Parallel submission aka multi-bb execbuf (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92789/">https://patchwork.freedesktop.org/series/92789/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10732 -&gt; Patchwork_21334</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21334 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21334, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21334:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10732/fi-kbl-r/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-kbl-r/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10732 and Patchwork_21334:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc_multi_lrc:<ul>
<li>Statuses : 31 pass(s)</li>
<li>Exec time: [0.45, 3.91] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21334 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10732/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10732/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21334/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Additional (1): fi-apl-guc <br />
  Missing    (6): fi-kbl-soraka fi-hsw-4200u fi-bsw-cyan fi-bwr-2160 fi-dg1-1 fi-skl-6700k2 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10732 -&gt; Patchwork_21334</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10732: 3fdfa1de4774903b9cb4fb308102b5a2d762d829 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6243: 438788b5dbd23085745fdd3da5a237f3577945df @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21334: 9a0c2d682fa102c39ca1c74e30b4f829a5a33a67 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9a0c2d682fa1 drm/i915/execlists: Weak parallel submission support for execlists<br />
1f94d4826235 drm/i915: Enable multi-bb execbuf<br />
20f16cbe9cab drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences<br />
45927bbbecde drm/i915: Make request conflict tracking understand parallel submits<br />
5370262c7b18 drm/i915/guc: Handle errors in multi-lrc requests<br />
f5b8b45334d5 drm/i915: Multi-BB execbuf<br />
1984b91d5186 drm/i915/guc: Implement no mid batch preemption for multi-lrc<br />
27d342e07431 drm/i915/guc: Add basic GuC multi-lrc selftest<br />
304fa81a9399 drm/i915/doc: Update parallel submit doc to point to i915_drm.h<br />
a6dbcce14531 drm/i915/guc: Connect UAPI to GuC multi-lrc interface<br />
fc3628d02c3a drm/i915/guc: Update debugfs for GuC multi-lrc<br />
cc32a9e001af drm/i915/guc: Implement multi-lrc reset<br />
31917c1dcf79 drm/i915/guc: Insert submit fences between requests in parent-child relationship<br />
13fb055cc22c drm/i915/guc: Implement multi-lrc submission<br />
15aba0f8dc81 drm/i915/guc: Implement parallel context pin / unpin functions<br />
0bdfa5c16cbe drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids<br />
0d569f349c42 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts<br />
150093ea7387 drm/i915/guc: Add multi-lrc context registration<br />
3fcd1f83dde6 drm/i915/guc: Introduce context parent-child relationship<br />
baf5dc1fc9df drm/i915: Expose logical engine instance to user<br />
edf6b764f7ad drm/i915: Add logical engine mapping<br />
7751cb08a525 drm/i915/guc: Don't call switch_to_kernel_context with GuC submission<br />
fce1426ce7b7 drm/i915/guc: Take engine PM when a context is pinned with GuC submission<br />
a7d1c1c82188 drm/i915/guc: Take GT PM ref when deregistering context<br />
96b392951d3d drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct</p>

</body>
</html>

--===============0904837172914806022==--
