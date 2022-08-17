Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCEC597758
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 22:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F1AA666A;
	Wed, 17 Aug 2022 20:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98B5310FD84;
 Wed, 17 Aug 2022 20:07:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F5E3A00E8;
 Wed, 17 Aug 2022 20:07:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2745624930749735494=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 17 Aug 2022 20:07:10 -0000
Message-ID: <166076683054.11667.10774368233468223738@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220817193847.557945-1-lyude@redhat.com>
In-Reply-To: <20220817193847.557945-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/display/dp=5Fmst=3A_Drop_Radeon_MST_support=2C_make_MST_atomic?=
 =?utf-8?q?-only_=28rev4=29?=
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

--===============2745624930749735494==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/display/dp_mst: Drop Radeon MST support, make MST atomic-only (rev4)
URL   : https://patchwork.freedesktop.org/series/107073/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11994 -> Patchwork_107073v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/index.html

Participating hosts (30 -> 30)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (1): bat-rpls-1 

Known issues
------------

  Here are the changes found in Patchwork_107073v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][1] ([i915#4939])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_module_load@reload:
    - fi-hsw-4770:        NOTRUN -> [WARN][2] ([i915#6596])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#3012])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-hsw-4770:        NOTRUN -> [FAIL][4] ([i915#6593])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271]) +10 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_selftest@live.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][6] -> [DMESG-FAIL][7] ([i915#4528])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11994/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-hsw-4770:        NOTRUN -> [FAIL][8] ([i915#6559]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][9] ([i915#6011])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][10] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#1072]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [INCOMPLETE][12] ([i915#4418]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11994/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][14] ([i915#6298]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11994/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6593]: https://gitlab.freedesktop.org/drm/intel/issues/6593
  [i915#6596]: https://gitlab.freedesktop.org/drm/intel/issues/6596


Build changes
-------------

  * Linux: CI_DRM_11994 -> Patchwork_107073v4

  CI-20190529: 20190529
  CI_DRM_11994: 8a680797ba1c5c96edf296a7e6a46365efe5ef6f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6630: b5e2222c9a988015bdf237e6ebb9f5b6d87ac7e1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107073v4: 8a680797ba1c5c96edf296a7e6a46365efe5ef6f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

44f52f508be1 drm/display/dp_mst: Move all payload info into the atomic state
f8c5481983e0 drm/radeon: Drop legacy MST support
006b864b8844 drm/display/dp_mst: Maintain time slot allocations when deleting payloads
fc50ba656d6d drm/display/dp_mst: Drop all ports from topology on CSNs before queueing link address work
85d7a6c7d2fa drm/display/dp_mst: Add helpers for serializing SST <-> MST transitions
97ad80930fb1 drm/nouveau/kms: Pull mst state in for all modesets
184d5a784c70 drm/nouveau/kms: Cache DP encoders in nouveau_connector
679af71cf048 drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()
643d54e4e376 drm/display/dp_mst: Don't open code modeset checks for releasing time slots
c722cb637492 drm/display/dp_mst: Add nonblocking helpers for DP MST
2a8202bd365d drm/display/dp_mst: Add helper for finding payloads in atomic MST state
21ade3bdf741 drm/display/dp_mst: Add some missing kdocs for atomic MST structs
354fd9c00cfa drm/display/dp_mst: Fix confusing docs for drm_dp_atomic_release_time_slots()
f7b865b66790 drm/display/dp_mst: Call them time slots, not VCPI slots
e6f65821fb33 drm/display/dp_mst: Rename drm_dp_mst_vcpi_allocation
8bd34d4fc78a drm/amdgpu/dm/mst: Rename get_payload_table()
4b15f4a83019 drm/amdgpu/dc/mst: Rename dp_mst_stream_allocation(_table)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/index.html

--===============2745624930749735494==
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
<tr><td><b>Series:</b></td><td>drm/display/dp_mst: Drop Radeon MST support, make MST atomic-only (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107073/">https://patchwork.freedesktop.org/series/107073/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11994 -&gt; Patchwork_107073v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/index.html</p>
<h2>Participating hosts (30 -&gt; 30)</h2>
<p>Additional (1): fi-hsw-4770 <br />
  Missing    (1): bat-rpls-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107073v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_module_load@reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6596">i915#6596</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6593">i915#6593</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_selftest@live.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11994/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@i915_suspend@basic-s2idle-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6559">i915#6559</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6011">i915#6011</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11994/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11994/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107073v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11994 -&gt; Patchwork_107073v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11994: 8a680797ba1c5c96edf296a7e6a46365efe5ef6f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6630: b5e2222c9a988015bdf237e6ebb9f5b6d87ac7e1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107073v4: 8a680797ba1c5c96edf296a7e6a46365efe5ef6f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>44f52f508be1 drm/display/dp_mst: Move all payload info into the atomic state<br />
f8c5481983e0 drm/radeon: Drop legacy MST support<br />
006b864b8844 drm/display/dp_mst: Maintain time slot allocations when deleting payloads<br />
fc50ba656d6d drm/display/dp_mst: Drop all ports from topology on CSNs before queueing link address work<br />
85d7a6c7d2fa drm/display/dp_mst: Add helpers for serializing SST &lt;-&gt; MST transitions<br />
97ad80930fb1 drm/nouveau/kms: Pull mst state in for all modesets<br />
184d5a784c70 drm/nouveau/kms: Cache DP encoders in nouveau_connector<br />
679af71cf048 drm/display/dp_mst: Fix modeset tracking in drm_dp_atomic_release_vcpi_slots()<br />
643d54e4e376 drm/display/dp_mst: Don't open code modeset checks for releasing time slots<br />
c722cb637492 drm/display/dp_mst: Add nonblocking helpers for DP MST<br />
2a8202bd365d drm/display/dp_mst: Add helper for finding payloads in atomic MST state<br />
21ade3bdf741 drm/display/dp_mst: Add some missing kdocs for atomic MST structs<br />
354fd9c00cfa drm/display/dp_mst: Fix confusing docs for drm_dp_atomic_release_time_slots()<br />
f7b865b66790 drm/display/dp_mst: Call them time slots, not VCPI slots<br />
e6f65821fb33 drm/display/dp_mst: Rename drm_dp_mst_vcpi_allocation<br />
8bd34d4fc78a drm/amdgpu/dm/mst: Rename get_payload_table()<br />
4b15f4a83019 drm/amdgpu/dc/mst: Rename dp_mst_stream_allocation(_table)</p>

</body>
</html>

--===============2745624930749735494==--
