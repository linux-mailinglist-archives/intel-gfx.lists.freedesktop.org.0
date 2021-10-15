Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ED642E53D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 02:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392FE6ECB0;
	Fri, 15 Oct 2021 00:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8132F6ECAD;
 Fri, 15 Oct 2021 00:25:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FDBCA7DFB;
 Fri, 15 Oct 2021 00:25:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3388095185135429614=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 00:25:22 -0000
Message-ID: <163425752228.29319.16892105375305876402@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211014172005.27155-1-matthew.brost@intel.com>
In-Reply-To: <20211014172005.27155-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUGFy?=
 =?utf-8?q?allel_submission_aka_multi-bb_execbuf_=28rev7=29?=
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

--===============3388095185135429614==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Parallel submission aka multi-bb execbuf (rev7)
URL   : https://patchwork.freedesktop.org/series/92789/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10739 -> Patchwork_21340
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10739 and Patchwork_21340:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc_multi_lrc:
    - Statuses : 30 pass(s)
    - Exec time: [0.43, 5.08] s

  

Known issues
------------

  Here are the changes found in Patchwork_21340 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-WARN][3] ([i915#1982])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-kbl-soraka/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [PASS][4] -> [INCOMPLETE][5] ([i915#3303])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bdw-samus:       NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-bdw-samus/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - fi-cfl-8109u:       [PASS][7] -> [FAIL][8] ([i915#4165])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#4269])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][11] -> [DMESG-WARN][12] ([i915#295]) +14 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-bdw-samus:       NOTRUN -> [SKIP][13] ([fdo#109271]) +29 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-bdw-samus/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][14] ([i915#1602] / [i915#2029])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][15] ([i915#2426] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-bxt-dsi/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Participating hosts (39 -> 37)
------------------------------

  Additional (1): fi-bdw-samus 
  Missing    (3): fi-bsw-cyan bat-dg1-6 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10739 -> Patchwork_21340

  CI-20190529: 20190529
  CI_DRM_10739: 9fedda3a0fa2032ccd125a7bedea74d3ec99d930 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6249: 04b156109f1c5128d5ace67420ee2e35e8a24e1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21340: 2bc7c2c9b7acee83c44eade627226f344c6410ad @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2bc7c2c9b7ac drm/i915/execlists: Weak parallel submission support for execlists
25451cb4c07c drm/i915: Enable multi-bb execbuf
3b3b377a0bbd drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
fe5061134b09 drm/i915: Make request conflict tracking understand parallel submits
39cdfa25bc1e drm/i915/guc: Handle errors in multi-lrc requests
1d47f6b2307a drm/i915: Multi-BB execbuf
a79f00b57457 drm/i915/guc: Implement no mid batch preemption for multi-lrc
4ba62c9f9d88 drm/i915/guc: Add basic GuC multi-lrc selftest
f6db1ca849ee drm/i915/doc: Update parallel submit doc to point to i915_drm.h
b474e9648a8b drm/i915/guc: Connect UAPI to GuC multi-lrc interface
0f3988587b37 drm/i915/guc: Update debugfs for GuC multi-lrc
45d246c108f9 drm/i915/guc: Implement multi-lrc reset
264ff2b6144b drm/i915/guc: Insert submit fences between requests in parent-child relationship
fe0a09e6a3fb drm/i915/guc: Implement multi-lrc submission
937b37f379ea drm/i915/guc: Implement parallel context pin / unpin functions
84e7e2921b9b drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
fda03257da24 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
08c07249af20 drm/i915/guc: Add multi-lrc context registration
a91a24abd8c2 drm/i915/guc: Introduce context parent-child relationship
81882ab40924 drm/i915: Expose logical engine instance to user
5913bebc8358 drm/i915: Add logical engine mapping
35ecc2c2e66d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
caa597edafab drm/i915/guc: Take engine PM when a context is pinned with GuC submission
8ae907f4ab40 drm/i915/guc: Take GT PM ref when deregistering context
84599e51bd29 drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/index.html

--===============3388095185135429614==
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
<tr><td><b>Series:</b></td><td>Parallel submission aka multi-bb execbuf (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92789/">https://patchwork.freedesktop.org/series/92789/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10739 -&gt; Patchwork_21340</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10739 and Patchwork_21340:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc_multi_lrc:<ul>
<li>Statuses : 30 pass(s)</li>
<li>Exec time: [0.43, 5.08] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21340 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-kbl-soraka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bdw-samus:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-bdw-samus/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10739/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-bdw-samus:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-bdw-samus/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21340/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Additional (1): fi-bdw-samus <br />
  Missing    (3): fi-bsw-cyan bat-dg1-6 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10739 -&gt; Patchwork_21340</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10739: 9fedda3a0fa2032ccd125a7bedea74d3ec99d930 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6249: 04b156109f1c5128d5ace67420ee2e35e8a24e1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21340: 2bc7c2c9b7acee83c44eade627226f344c6410ad @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2bc7c2c9b7ac drm/i915/execlists: Weak parallel submission support for execlists<br />
25451cb4c07c drm/i915: Enable multi-bb execbuf<br />
3b3b377a0bbd drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences<br />
fe5061134b09 drm/i915: Make request conflict tracking understand parallel submits<br />
39cdfa25bc1e drm/i915/guc: Handle errors in multi-lrc requests<br />
1d47f6b2307a drm/i915: Multi-BB execbuf<br />
a79f00b57457 drm/i915/guc: Implement no mid batch preemption for multi-lrc<br />
4ba62c9f9d88 drm/i915/guc: Add basic GuC multi-lrc selftest<br />
f6db1ca849ee drm/i915/doc: Update parallel submit doc to point to i915_drm.h<br />
b474e9648a8b drm/i915/guc: Connect UAPI to GuC multi-lrc interface<br />
0f3988587b37 drm/i915/guc: Update debugfs for GuC multi-lrc<br />
45d246c108f9 drm/i915/guc: Implement multi-lrc reset<br />
264ff2b6144b drm/i915/guc: Insert submit fences between requests in parent-child relationship<br />
fe0a09e6a3fb drm/i915/guc: Implement multi-lrc submission<br />
937b37f379ea drm/i915/guc: Implement parallel context pin / unpin functions<br />
84e7e2921b9b drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids<br />
fda03257da24 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts<br />
08c07249af20 drm/i915/guc: Add multi-lrc context registration<br />
a91a24abd8c2 drm/i915/guc: Introduce context parent-child relationship<br />
81882ab40924 drm/i915: Expose logical engine instance to user<br />
5913bebc8358 drm/i915: Add logical engine mapping<br />
35ecc2c2e66d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission<br />
caa597edafab drm/i915/guc: Take engine PM when a context is pinned with GuC submission<br />
8ae907f4ab40 drm/i915/guc: Take GT PM ref when deregistering context<br />
84599e51bd29 drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct</p>

</body>
</html>

--===============3388095185135429614==--
