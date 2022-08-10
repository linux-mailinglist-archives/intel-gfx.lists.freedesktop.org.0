Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E580D58F394
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 22:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F578D8FC;
	Wed, 10 Aug 2022 20:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C91B12A9AF;
 Wed, 10 Aug 2022 20:35:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61B4DA0078;
 Wed, 10 Aug 2022 20:35:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0785077791590608330=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 10 Aug 2022 20:35:28 -0000
Message-ID: <166016372839.12354.6526164235688552507@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220808235203.123892-1-lyude@redhat.com>
In-Reply-To: <20220808235203.123892-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/display/dp=5Fmst=3A_Drop_Radeon_MST_support=2C_make_MST_atomic?=
 =?utf-8?q?-only_=28rev3=29?=
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

--===============0785077791590608330==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/display/dp_mst: Drop Radeon MST support, make MST atomic-only (rev3)
URL   : https://patchwork.freedesktop.org/series/107073/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11981 -> Patchwork_107073v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/index.html

Participating hosts (42 -> 28)
------------------------------

  Missing    (14): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-hsw-4200u bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-jsl-3 bat-rplp-1 bat-rpls-1 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_107073v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][1] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][2] -> [INCOMPLETE][3] ([i915#146])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-ehl-2}:         [DMESG-FAIL][4] ([i915#5334]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][6] ([i915#4528]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][8] ([i915#6298]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298


Build changes
-------------

  * Linux: CI_DRM_11981 -> Patchwork_107073v3

  CI-20190529: 20190529
  CI_DRM_11981: 6f207fdd93a13166b4adfe2f3a2972a9c632e757 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6619: ec2ab8e3a151ce05bd2726319c528c2ab99e8a96 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107073v3: 6f207fdd93a13166b4adfe2f3a2972a9c632e757 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9310c663430f drm/display/dp_mst: Move all payload info into the atomic state
8e7e26d72dc2 drm/radeon: Drop legacy MST support
d82cdc1ecb46 drm/display/dp_mst: Maintain time slot allocations when deleting payloads
50aedded245e drm/display/dp_mst: Skip releasing payloads if last connected port isn't connected
d7dfd325cf08 drm/display/dp_mst: Drop all ports from topology on CSNs before queueing link address work
243ab1025c79 drm/display/dp_mst: Add helpers for serializing SST <-> MST transitions
a150e19f23b2 drm/nouveau/kms: Pull mst state in for all modesets
30d55742e722 drm/nouveau/kms: Cache DP encoders in nouveau_connector
b3ba7f27e7d6 drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()
4f2b27dce718 drm/display/dp_mst: Don't open code modeset checks for releasing time slots
054350d3417a drm/display/dp_mst: Add nonblocking helpers for DP MST
f9c51036ef86 drm/display/dp_mst: Add helper for finding payloads in atomic MST state
93cac2df77db drm/display/dp_mst: Add some missing kdocs for atomic MST structs
9f4d2d50cb78 drm/display/dp_mst: Fix confusing docs for drm_dp_atomic_release_time_slots()
381e9b3c424b drm/display/dp_mst: Call them time slots, not VCPI slots
0871c9b75f49 drm/display/dp_mst: Rename drm_dp_mst_vcpi_allocation
353115345666 drm/amdgpu/dm/mst: Rename get_payload_table()
12ff7e585006 drm/amdgpu/dc/mst: Rename dp_mst_stream_allocation(_table)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/index.html

--===============0785077791590608330==
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
<tr><td><b>Series:</b></td><td>drm/display/dp_mst: Drop Radeon MST support, make MST atomic-only (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107073/">https://patchwork.freedesktop.org/series/107073/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11981 -&gt; Patchwork_107073v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/index.html</p>
<h2>Participating hosts (42 -&gt; 28)</h2>
<p>Missing    (14): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-hsw-4200u bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-jsl-3 bat-rplp-1 bat-rpls-1 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107073v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11981/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11981 -&gt; Patchwork_107073v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11981: 6f207fdd93a13166b4adfe2f3a2972a9c632e757 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6619: ec2ab8e3a151ce05bd2726319c528c2ab99e8a96 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107073v3: 6f207fdd93a13166b4adfe2f3a2972a9c632e757 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9310c663430f drm/display/dp_mst: Move all payload info into the atomic state<br />
8e7e26d72dc2 drm/radeon: Drop legacy MST support<br />
d82cdc1ecb46 drm/display/dp_mst: Maintain time slot allocations when deleting payloads<br />
50aedded245e drm/display/dp_mst: Skip releasing payloads if last connected port isn't connected<br />
d7dfd325cf08 drm/display/dp_mst: Drop all ports from topology on CSNs before queueing link address work<br />
243ab1025c79 drm/display/dp_mst: Add helpers for serializing SST &lt;-&gt; MST transitions<br />
a150e19f23b2 drm/nouveau/kms: Pull mst state in for all modesets<br />
30d55742e722 drm/nouveau/kms: Cache DP encoders in nouveau_connector<br />
b3ba7f27e7d6 drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()<br />
4f2b27dce718 drm/display/dp_mst: Don't open code modeset checks for releasing time slots<br />
054350d3417a drm/display/dp_mst: Add nonblocking helpers for DP MST<br />
f9c51036ef86 drm/display/dp_mst: Add helper for finding payloads in atomic MST state<br />
93cac2df77db drm/display/dp_mst: Add some missing kdocs for atomic MST structs<br />
9f4d2d50cb78 drm/display/dp_mst: Fix confusing docs for drm_dp_atomic_release_time_slots()<br />
381e9b3c424b drm/display/dp_mst: Call them time slots, not VCPI slots<br />
0871c9b75f49 drm/display/dp_mst: Rename drm_dp_mst_vcpi_allocation<br />
353115345666 drm/amdgpu/dm/mst: Rename get_payload_table()<br />
12ff7e585006 drm/amdgpu/dc/mst: Rename dp_mst_stream_allocation(_table)</p>

</body>
</html>

--===============0785077791590608330==--
