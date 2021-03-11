Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E819337950
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CE56EE63;
	Thu, 11 Mar 2021 16:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D2A236EE60;
 Thu, 11 Mar 2021 16:29:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA1EBA47DB;
 Thu, 11 Mar 2021 16:29:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 11 Mar 2021 16:29:33 -0000
Message-ID: <161548017380.28797.8442350937961828825@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2Vw?=
 =?utf-8?q?arate_display_version_numbering_and_add_XE=5FLPD_=28version_13?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============1215541669=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1215541669==
Content-Type: multipart/alternative;
 boundary="===============5732652112741797139=="

--===============5732652112741797139==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Separate display version numbering and add XE_LPD (version 13)
URL   : https://patchwork.freedesktop.org/series/87886/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9849 -> Patchwork_19782
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/index.html

Known issues
------------

  Here are the changes found in Patchwork_19782 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][1] -> [TIMEOUT][2] ([i915#3145])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][3] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][4] ([i915#3159])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cml-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 39)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-apl-guc fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9849 -> Patchwork_19782

  CI-20190529: 20190529
  CI_DRM_9849: 123ebf0379ca90c2f64bff73ff32c7c2140d2b9c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6030: e11e4bfb91fec9af71c3909996c66e5666270e07 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19782: cddd8ca967f33144fd385a7f636c458277981034 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cddd8ca967f3 drm/i915/xelpd: Add VRR guardband for VRR CTL
1e18a983ae35 drm/i915/xelpd: Add rc_qp_table for rcparams calculation
fd3647ae8e29 drm/i915/xelpd: Calculate VDSC RC parameters
4f795e23a16a drm/i915: Get slice height before computing rc params
9de1ac3266ec drm/i915/xelpd: Support DP1.4 compression BPPs
e7d031d87c65 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
68f54617c023 drm/i915/xelpd: Add Wa_14011503030
b7e094126453 drm/i915/xelpd: Required bandwidth increases when VT-d is active
fa941027b199 drm/i915/xelpd: Increase maximum watermark lines to 255
8439a0c727fa drm/i915/xelpd: Handle LPSP for XE_LPD
223193985bf3 drm/i915/xelpd: Add XE_LPD power wells
ca26cb633455 drm/i915/xelpd: Handle new location of outputs D and E
c41d35b07706 drm/i915/xelpd: Support 128k plane stride
50ac2fcab8d8 drm/i915/xelpd: Define plane capabilities
14df043f007f drm/i915/xelpd: Enhanced pipe underrun reporting
21a721ff4189 drm/i915/xelpd: Handle proper AUX interrupt bits
873b4ff9025c drm/i915/xelpd: add XE_LPD display characteristics
5a8f8a2a7928 drm/i915/display: Simplify GLK display version tests
fbaed21cd392 drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in i915_irq.c
69601631074c drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in intel_pm.c
5b3894ed6cd4 drm/i915/display: Eliminate most usage of INTEL_GEN()
bb353a8d0201 drm/i915: Add DISPLAY_VER()
325b78c69cb5 drm/i915/display: Convert gen5/gen6 tests to IS_IRONLAKE/IS_SANDYBRIDGE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/index.html

--===============5732652112741797139==
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
<tr><td><b>Series:</b></td><td>Separate display version numbering and add XE_LPD (version 13)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87886/">https://patchwork.freedesktop.org/series/87886/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9849 -&gt; Patchwork_19782</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19782 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19782/fi-cml-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-apl-guc fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9849 -&gt; Patchwork_19782</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9849: 123ebf0379ca90c2f64bff73ff32c7c2140d2b9c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6030: e11e4bfb91fec9af71c3909996c66e5666270e07 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19782: cddd8ca967f33144fd385a7f636c458277981034 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cddd8ca967f3 drm/i915/xelpd: Add VRR guardband for VRR CTL<br />
1e18a983ae35 drm/i915/xelpd: Add rc_qp_table for rcparams calculation<br />
fd3647ae8e29 drm/i915/xelpd: Calculate VDSC RC parameters<br />
4f795e23a16a drm/i915: Get slice height before computing rc params<br />
9de1ac3266ec drm/i915/xelpd: Support DP1.4 compression BPPs<br />
e7d031d87c65 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp<br />
68f54617c023 drm/i915/xelpd: Add Wa_14011503030<br />
b7e094126453 drm/i915/xelpd: Required bandwidth increases when VT-d is active<br />
fa941027b199 drm/i915/xelpd: Increase maximum watermark lines to 255<br />
8439a0c727fa drm/i915/xelpd: Handle LPSP for XE_LPD<br />
223193985bf3 drm/i915/xelpd: Add XE_LPD power wells<br />
ca26cb633455 drm/i915/xelpd: Handle new location of outputs D and E<br />
c41d35b07706 drm/i915/xelpd: Support 128k plane stride<br />
50ac2fcab8d8 drm/i915/xelpd: Define plane capabilities<br />
14df043f007f drm/i915/xelpd: Enhanced pipe underrun reporting<br />
21a721ff4189 drm/i915/xelpd: Handle proper AUX interrupt bits<br />
873b4ff9025c drm/i915/xelpd: add XE_LPD display characteristics<br />
5a8f8a2a7928 drm/i915/display: Simplify GLK display version tests<br />
fbaed21cd392 drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in i915_irq.c<br />
69601631074c drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in intel_pm.c<br />
5b3894ed6cd4 drm/i915/display: Eliminate most usage of INTEL_GEN()<br />
bb353a8d0201 drm/i915: Add DISPLAY_VER()<br />
325b78c69cb5 drm/i915/display: Convert gen5/gen6 tests to IS_IRONLAKE/IS_SANDYBRIDGE</p>

</body>
</html>

--===============5732652112741797139==--

--===============1215541669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1215541669==--
