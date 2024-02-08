Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDAD84EB14
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 23:02:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8495D10EA2B;
	Thu,  8 Feb 2024 22:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BAFC10EA2B;
 Thu,  8 Feb 2024 22:02:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7081994147286913284=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_drm=5Fdbg=5Fkms?=
 =?utf-8?q?=28=29_conversions_and_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 08 Feb 2024 22:02:33 -0000
Message-ID: <170742975317.1109598.13797238727852460090@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
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

--===============7081994147286913284==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: drm_dbg_kms() conversions and cleanups
URL   : https://patchwork.freedesktop.org/series/129677/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14244 -> Patchwork_129677v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (2): fi-snb-2520m fi-bsw-n3050 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129677v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_create@basic-files:
    - {bat-arls-2}:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14244/bat-arls-2/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-arls-2/igt@gem_ctx_create@basic-files.html

  
Known issues
------------

  Here are the changes found in Patchwork_129677v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14244/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1849])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][6] ([fdo#109271]) +35 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-adlm-1:         NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_mmap@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][8] ([i915#4083])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@gem_mmap@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][9] ([i915#4077]) +2 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][10] ([i915#4079]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-atsm-1:         NOTRUN -> [SKIP][11] ([i915#6621])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html
    - bat-adlm-1:         NOTRUN -> [SKIP][12] ([i915#6621])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@size-max:
    - bat-atsm-1:         NOTRUN -> [SKIP][13] ([i915#6077]) +37 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-atsm-1:         NOTRUN -> [SKIP][14] ([i915#6078]) +17 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlm-1:         NOTRUN -> [SKIP][15] ([fdo#109285])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-atsm-1:         NOTRUN -> [SKIP][16] ([i915#6093]) +4 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-adlm-1:         NOTRUN -> [SKIP][17] ([i915#1849] / [i915#4342])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
    - bat-atsm-1:         NOTRUN -> [SKIP][18] ([i915#1836]) +6 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-adlm-1:         NOTRUN -> [SKIP][19] ([i915#9875] / [i915#9900]) +6 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-adlm-1:         NOTRUN -> [SKIP][20] ([i915#5354])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_prop_blob@basic:
    - bat-atsm-1:         NOTRUN -> [SKIP][21] ([i915#7357])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_prop_blob@basic.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-atsm-1:         NOTRUN -> [SKIP][22] ([i915#6094])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlm-1:         NOTRUN -> [SKIP][23] ([i915#3555])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-atsm-1:         NOTRUN -> [SKIP][24] ([fdo#109295] / [i915#6078])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html
    - bat-adlm-1:         NOTRUN -> [SKIP][25] ([i915#3708] / [i915#9900])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-atsm-1:         NOTRUN -> [SKIP][26] ([fdo#109295] / [i915#4077]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-atsm-1:         NOTRUN -> [SKIP][27] ([fdo#109295]) +2 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@prime_vgem@basic-write.html
    - bat-adlm-1:         NOTRUN -> [SKIP][28] ([i915#3708]) +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@prime_vgem@basic-write.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9875]: https://gitlab.freedesktop.org/drm/intel/issues/9875
  [i915#9900]: https://gitlab.freedesktop.org/drm/intel/issues/9900


Build changes
-------------

  * Linux: CI_DRM_14244 -> Patchwork_129677v1

  CI-20190529: 20190529
  CI_DRM_14244: 22d626404cb81d7818ab55e5b14885e31a998dfd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7706: dd38bc402e08b8a6c9ef26a2f5b8a9a9034cb435 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129677v1: 22d626404cb81d7818ab55e5b14885e31a998dfd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e1adfe66a95d drm/i915/dvo: Use sizeof(*variable) instead of sizeof(type)
3e9f9282fb40 drm/i915/dvo/ns2501: Nuke pointless casts
1dba7a091d69 drm/i915/wm: Use per-device debugs ilk wm code
5dbb6d08eb07 drm/i915/wm: Use per-device debugs in pre-ilk wm code
dcde5fd0779c drm/i915/wm: Pass the whole i916 to intel_get_cxsr_latency()
1084b5a920b9 drm/i915/hdcp: Use per-device debugs
2db47c6956e6 drm/i915/bios: Use per-device debugs for VBT related stuff
eb656c6d7c3c drm/i915/bios: Switch to kms debugs
bce9b29b45af drm/i915/fb: Use per-device debugs
a2ce859f31a6 drm/i915/color: Use per-device debugs
62c378321f23 drm/i915/sdvo: Fix up code alignment
e22a7b4b1235 drm/i915/sdvo: Convert to per-device debugs
c5a8ea8dd1cf drm/i915: Correct for_each_old_global_obj_in_state() arguments

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/index.html

--===============7081994147286913284==
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
<tr><td><b>Series:</b></td><td>drm/i915: drm_dbg_kms() conversions and cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129677/">https://patchwork.freedesktop.org/series/129677/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14244 -&gt; Patchwork_129677v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (2): fi-snb-2520m fi-bsw-n3050 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129677v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_ctx_create@basic-files:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14244/bat-arls-2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-arls-2/igt@gem_ctx_create@basic-files.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129677v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14244/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 other tests skip</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_addfb_basic@size-max.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6077">i915#6077</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6093">i915#6093</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4342">i915#4342</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9875">i915#9875</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prop_blob@basic:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_prop_blob@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7357">i915#7357</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6094">i915#6094</a>)</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>)</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9900">i915#9900</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-atsm-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a>) +2 other tests skip</li>
<li>bat-adlm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129677v1/bat-adlm-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14244 -&gt; Patchwork_129677v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14244: 22d626404cb81d7818ab55e5b14885e31a998dfd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7706: dd38bc402e08b8a6c9ef26a2f5b8a9a9034cb435 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129677v1: 22d626404cb81d7818ab55e5b14885e31a998dfd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e1adfe66a95d drm/i915/dvo: Use sizeof(*variable) instead of sizeof(type)<br />
3e9f9282fb40 drm/i915/dvo/ns2501: Nuke pointless casts<br />
1dba7a091d69 drm/i915/wm: Use per-device debugs ilk wm code<br />
5dbb6d08eb07 drm/i915/wm: Use per-device debugs in pre-ilk wm code<br />
dcde5fd0779c drm/i915/wm: Pass the whole i916 to intel_get_cxsr_latency()<br />
1084b5a920b9 drm/i915/hdcp: Use per-device debugs<br />
2db47c6956e6 drm/i915/bios: Use per-device debugs for VBT related stuff<br />
eb656c6d7c3c drm/i915/bios: Switch to kms debugs<br />
bce9b29b45af drm/i915/fb: Use per-device debugs<br />
a2ce859f31a6 drm/i915/color: Use per-device debugs<br />
62c378321f23 drm/i915/sdvo: Fix up code alignment<br />
e22a7b4b1235 drm/i915/sdvo: Convert to per-device debugs<br />
c5a8ea8dd1cf drm/i915: Correct for_each_old_global_obj_in_state() arguments</p>

</body>
</html>

--===============7081994147286913284==--
