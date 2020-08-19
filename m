Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DE524A299
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 17:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5939B6E42F;
	Wed, 19 Aug 2020 15:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52D256E42F;
 Wed, 19 Aug 2020 15:16:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4CECDA66C9;
 Wed, 19 Aug 2020 15:16:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 19 Aug 2020 15:16:20 -0000
Message-ID: <159785018031.23596.16873820153379383339@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Correct_the_locking_hierarchy_in_gem=2C_v2=2E?=
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
Content-Type: multipart/mixed; boundary="===============0258869363=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0258869363==
Content-Type: multipart/alternative;
 boundary="===============6445876920375417578=="

--===============6445876920375417578==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Correct the locking hierarchy in gem, v2.
URL   : https://patchwork.freedesktop.org/series/80810/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8908 -> Patchwork_18374
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/index.html

Known issues
------------

  Here are the changes found in Patchwork_18374 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#2276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-byt-j1900:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
    - fi-skl-guc:         [DMESG-WARN][7] ([i915#2203]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][9] ([i915#62]) -> [DMESG-FAIL][10] ([i915#62] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([i915#62] / [i915#92]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (39 -> 34)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8908 -> Patchwork_18374

  CI-20190529: 20190529
  CI_DRM_8908: 03a59fdcea84502e199bf7fa55fd117dcd161dab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18374: fdd39765eae58963bd1405e1598e0d09178f7e2f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fdd39765eae5 drm/i915: Do not share hwsp across contexts any more
522ece1ba91b drm/i915: Add ww locking to pin_to_display_plane, v2.
77406d7cd764 drm/i915: Add ww locking to vm_fault_gtt
a8997bbea05d drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.
478ef7479d6a drm/i915: Use ww pinning for intel_context_create_request()
b2fb8ffc3110 drm/i915/selftests: Fix locking inversion in lrc selftest.
a6580e163685 drm/i915: Dirty hack to fix selftests locking inversion
649c0c5fec5f drm/i915: Convert i915_perf to ww locking as well
f4187a322484 drm/i915: Kill last user of intel_context_create_request outside of selftests
53e6e03ef7cf drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
86668af120e8 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
d1acab8da722 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
6abab4f2c070 drm/i915: Pin engine before pinning all objects, v5.
6516a57e2a2b drm/i915: Nuke arguments to eb_pin_engine
d75ca134900f drm/i915: Add ww context handling to context_barrier_task
325c185dc52e drm/i915: Use ww locking in intel_renderstate.
5ad340f52366 drm/i915: Use per object locking in execbuf, v12.
9459f3800775 drm/i915: Parse command buffer earlier in eb_relocate(slow)
f40fdcf94ee9 drm/i915: Remove locking from i915_gem_object_prepare_read/write
268d9bdb0425 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
12b748c65392 Revert "drm/i915/gem: Split eb_vma into its own allocation"
2b58aa855f4d Revert "drm/i915/gem: Drop relocation slowpath".
862b043e1d65 drm/i915: Revert relocation chaining commits.
9d40440069d8 Revert "drm/i915/gem: Async GPU relocations only"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/index.html

--===============6445876920375417578==
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
<tr><td><b>Series:</b></td><td>drm/i915: Correct the locking hierarchy in gem, v2.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80810/">https://patchwork.freedesktop.org/series/80810/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8908 -&gt; Patchwork_18374</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18374 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18374/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8908 -&gt; Patchwork_18374</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8908: 03a59fdcea84502e199bf7fa55fd117dcd161dab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18374: fdd39765eae58963bd1405e1598e0d09178f7e2f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fdd39765eae5 drm/i915: Do not share hwsp across contexts any more<br />
522ece1ba91b drm/i915: Add ww locking to pin_to_display_plane, v2.<br />
77406d7cd764 drm/i915: Add ww locking to vm_fault_gtt<br />
a8997bbea05d drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.<br />
478ef7479d6a drm/i915: Use ww pinning for intel_context_create_request()<br />
b2fb8ffc3110 drm/i915/selftests: Fix locking inversion in lrc selftest.<br />
a6580e163685 drm/i915: Dirty hack to fix selftests locking inversion<br />
649c0c5fec5f drm/i915: Convert i915_perf to ww locking as well<br />
f4187a322484 drm/i915: Kill last user of intel_context_create_request outside of selftests<br />
53e6e03ef7cf drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.<br />
86668af120e8 drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.<br />
d1acab8da722 drm/i915: Rework intel_context pinning to do everything outside of pin_mutex<br />
6abab4f2c070 drm/i915: Pin engine before pinning all objects, v5.<br />
6516a57e2a2b drm/i915: Nuke arguments to eb_pin_engine<br />
d75ca134900f drm/i915: Add ww context handling to context_barrier_task<br />
325c185dc52e drm/i915: Use ww locking in intel_renderstate.<br />
5ad340f52366 drm/i915: Use per object locking in execbuf, v12.<br />
9459f3800775 drm/i915: Parse command buffer earlier in eb_relocate(slow)<br />
f40fdcf94ee9 drm/i915: Remove locking from i915_gem_object_prepare_read/write<br />
268d9bdb0425 drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.<br />
12b748c65392 Revert "drm/i915/gem: Split eb_vma into its own allocation"<br />
2b58aa855f4d Revert "drm/i915/gem: Drop relocation slowpath".<br />
862b043e1d65 drm/i915: Revert relocation chaining commits.<br />
9d40440069d8 Revert "drm/i915/gem: Async GPU relocations only"</p>

</body>
</html>

--===============6445876920375417578==--

--===============0258869363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0258869363==--
