Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA9558E40F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 02:25:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3021DEDD9;
	Wed, 10 Aug 2022 00:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75A4ADEDB0;
 Wed, 10 Aug 2022 00:25:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FB8FA0096;
 Wed, 10 Aug 2022 00:25:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6421111557068267756=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 10 Aug 2022 00:25:30 -0000
Message-ID: <166009113035.12353.15527477600249670625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220808235203.123892-1-lyude@redhat.com>
In-Reply-To: <20220808235203.123892-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/display/dp=5Fmst=3A_Drop_Radeon_MST_support=2C_make_MST_atomic?=
 =?utf-8?q?-only_=28rev2=29?=
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

--===============6421111557068267756==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/display/dp_mst: Drop Radeon MST support, make MST atomic-only (rev2)
URL   : https://patchwork.freedesktop.org/series/107073/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11977 -> Patchwork_107073v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/index.html

Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-hsw-4200u bat-dg2-9 fi-ctg-p8600 bat-jsl-3 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107073v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-rpls-2}:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-rpls-2/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/bat-rpls-2/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_107073v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][5] -> [DMESG-FAIL][6] ([i915#4528])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][8] ([i915#2867]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][10] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][11] ([i915#4957])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367


Build changes
-------------

  * Linux: CI_DRM_11977 -> Patchwork_107073v2

  CI-20190529: 20190529
  CI_DRM_11977: 71776a3cc166e6400e713acdd2b03094120e1baa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6619: ec2ab8e3a151ce05bd2726319c528c2ab99e8a96 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107073v2: 71776a3cc166e6400e713acdd2b03094120e1baa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

36278c461712 drm/display/dp_mst: Move all payload info into the atomic state
bc63574e60fa drm/radeon: Drop legacy MST support
d6febec6c602 drm/display/dp_mst: Maintain time slot allocations when deleting payloads
bf2bdda736b0 drm/display/dp_mst: Skip releasing payloads if last connected port isn't connected
bb0243f1a496 drm/display/dp_mst: Drop all ports from topology on CSNs before queueing link address work
55d383c46eef drm/display/dp_mst: Add helpers for serializing SST <-> MST transitions
79354823c545 drm/nouveau/kms: Pull mst state in for all modesets
6e79bd460773 drm/nouveau/kms: Cache DP encoders in nouveau_connector
088373c522b0 drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()
04abdc6435ef drm/display/dp_mst: Don't open code modeset checks for releasing time slots
0dbb1df1c648 drm/display/dp_mst: Add nonblocking helpers for DP MST
76f3f8878254 drm/display/dp_mst: Add helper for finding payloads in atomic MST state
392e8f9645e9 drm/display/dp_mst: Add some missing kdocs for atomic MST structs
9d929d819574 drm/display/dp_mst: Fix confusing docs for drm_dp_atomic_release_time_slots()
bb4bce13609a drm/display/dp_mst: Call them time slots, not VCPI slots
3e36f6eb4da0 drm/display/dp_mst: Rename drm_dp_mst_vcpi_allocation
52cc4993511a drm/amdgpu/dm/mst: Rename get_payload_table()
83534dafea6f drm/amdgpu/dc/mst: Rename dp_mst_stream_allocation(_table)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/index.html

--===============6421111557068267756==
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
<tr><td><b>Series:</b></td><td>drm/display/dp_mst: Drop Radeon MST support, make MST atomic-only (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107073/">https://patchwork.freedesktop.org/series/107073/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11977 -&gt; Patchwork_107073v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/index.html</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-hsw-4200u bat-dg2-9 fi-ctg-p8600 bat-jsl-3 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107073v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-rpls-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/bat-rpls-2/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107073v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11977/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11977 -&gt; Patchwork_107073v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11977: 71776a3cc166e6400e713acdd2b03094120e1baa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6619: ec2ab8e3a151ce05bd2726319c528c2ab99e8a96 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107073v2: 71776a3cc166e6400e713acdd2b03094120e1baa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>36278c461712 drm/display/dp_mst: Move all payload info into the atomic state<br />
bc63574e60fa drm/radeon: Drop legacy MST support<br />
d6febec6c602 drm/display/dp_mst: Maintain time slot allocations when deleting payloads<br />
bf2bdda736b0 drm/display/dp_mst: Skip releasing payloads if last connected port isn't connected<br />
bb0243f1a496 drm/display/dp_mst: Drop all ports from topology on CSNs before queueing link address work<br />
55d383c46eef drm/display/dp_mst: Add helpers for serializing SST &lt;-&gt; MST transitions<br />
79354823c545 drm/nouveau/kms: Pull mst state in for all modesets<br />
6e79bd460773 drm/nouveau/kms: Cache DP encoders in nouveau_connector<br />
088373c522b0 drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()<br />
04abdc6435ef drm/display/dp_mst: Don't open code modeset checks for releasing time slots<br />
0dbb1df1c648 drm/display/dp_mst: Add nonblocking helpers for DP MST<br />
76f3f8878254 drm/display/dp_mst: Add helper for finding payloads in atomic MST state<br />
392e8f9645e9 drm/display/dp_mst: Add some missing kdocs for atomic MST structs<br />
9d929d819574 drm/display/dp_mst: Fix confusing docs for drm_dp_atomic_release_time_slots()<br />
bb4bce13609a drm/display/dp_mst: Call them time slots, not VCPI slots<br />
3e36f6eb4da0 drm/display/dp_mst: Rename drm_dp_mst_vcpi_allocation<br />
52cc4993511a drm/amdgpu/dm/mst: Rename get_payload_table()<br />
83534dafea6f drm/amdgpu/dc/mst: Rename dp_mst_stream_allocation(_table)</p>

</body>
</html>

--===============6421111557068267756==--
