Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E832A0FD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 14:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814586E947;
	Tue,  2 Mar 2021 13:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EF276E15C;
 Tue,  2 Mar 2021 13:33:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47F57A47EB;
 Tue,  2 Mar 2021 13:33:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 02 Mar 2021 13:33:54 -0000
Message-ID: <161469203426.3588.2857338544153996925@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210302120040.94435-1-hdegoede@redhat.com>
In-Reply-To: <20210302120040.94435-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Make_vlv=5Ffind=5Ffree=5Fpps=28=29_skip_pipes_?=
 =?utf-8?q?which_are_in_use_for_non_DP_purposes?=
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
Content-Type: multipart/mixed; boundary="===============0547131364=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0547131364==
Content-Type: multipart/alternative;
 boundary="===============6375790911461194620=="

--===============6375790911461194620==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Make vlv_find_free_pps() skip pipes which are in use for non DP purposes
URL   : https://patchwork.freedesktop.org/series/87542/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9820 -> Patchwork_19744
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/index.html

Known issues
------------

  Here are the changes found in Patchwork_19744 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] ([i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-tgl-y/igt@prime_vgem@basic-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-tgl-y/igt@prime_vgem@basic-read.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][7] ([i915#1436])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-tgl-y/igt@gem_exec_create@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-tgl-y/igt@gem_exec_create@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][12] ([i915#2940]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][14] ([i915#2782]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9820 -> Patchwork_19744

  CI-20190529: 20190529
  CI_DRM_9820: 9761fb66bc43d298a90c7dd353d376d0802e6e79 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6017: dc9f6d13f4ddea5286ed4723627b79db1e2210d2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19744: 428b36184c012f3566040d6a61888dd549d509cd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

428b36184c01 drm/i915/display: Make vlv_find_free_pps() skip pipes which are in use for non DP purposes
e0ab76cefc03 drm/i915/display: Add a intel_pipe_is_enabled() helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/index.html

--===============6375790911461194620==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Make vlv_find_free_pps() skip pipes which are in use for non DP purposes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87542/">https://patchwork.freedesktop.org/series/87542/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9820 -&gt; Patchwork_19744</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19744 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-tgl-y/igt@gem_exec_create@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-tgl-y/igt@gem_exec_create@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9820/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19744/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9820 -&gt; Patchwork_19744</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9820: 9761fb66bc43d298a90c7dd353d376d0802e6e79 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6017: dc9f6d13f4ddea5286ed4723627b79db1e2210d2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19744: 428b36184c012f3566040d6a61888dd549d509cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>428b36184c01 drm/i915/display: Make vlv_find_free_pps() skip pipes which are in use for non DP purposes<br />
e0ab76cefc03 drm/i915/display: Add a intel_pipe_is_enabled() helper</p>

</body>
</html>

--===============6375790911461194620==--

--===============0547131364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0547131364==--
