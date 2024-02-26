Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B9986729C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 12:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C73BC10F086;
	Mon, 26 Feb 2024 11:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6931910F089;
 Mon, 26 Feb 2024 11:08:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3361026327903552976=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_HDCP_MST_Type1_fixes_=28rev?=
 =?utf-8?q?8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Feb 2024 11:08:08 -0000
Message-ID: <170894568842.299097.15384643062332157954@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240226063051.1685326-2-suraj.kandpal@intel.com>
In-Reply-To: <20240226063051.1685326-2-suraj.kandpal@intel.com>
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

--===============3361026327903552976==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP MST Type1 fixes (rev8)
URL   : https://patchwork.freedesktop.org/series/129925/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14335 -> Patchwork_129925v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (1): bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_129925v8 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14335/bat-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/bat-jsl-1/boot.html
    - fi-apl-guc:         [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14335/fi-apl-guc/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@basic@smem:
    - bat-arls-1:         [PASS][5] -> [DMESG-WARN][6] ([i915#10194])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14335/bat-arls-1/igt@gem_exec_create@basic@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/bat-arls-1/igt@gem_exec_create@basic@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][9] ([fdo#109271]) +10 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-dg2-11:         NOTRUN -> [SKIP][10] ([i915#9197])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - bat-arls-1:         [DMESG-WARN][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14335/bat-arls-1/igt@gem_exec_fence@basic-busy@bcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/bat-arls-1/igt@gem_exec_fence@basic-busy@bcs0.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197


Build changes
-------------

  * Linux: CI_DRM_14335 -> Patchwork_129925v8

  CI-20190529: 20190529
  CI_DRM_14335: ee8d5fa0c2351fea161393f790aecfca2c84f4ab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7729: 7729
  Patchwork_129925v8: ee8d5fa0c2351fea161393f790aecfca2c84f4ab @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5c782483bddc drm/i915/hdcp: Read Rxcaps for robustibility
9153b925efb9 drm/i915/hdcp: Allocate stream id after HDCP AKE stage
3748f2f679b2 drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link
add339cc460a drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link
6234bd731486 drm/i915/hdcp: Extract hdcp structure from correct connector

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/index.html

--===============3361026327903552976==
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
<tr><td><b>Series:</b></td><td>HDCP MST Type1 fixes (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129925/">https://patchwork.freedesktop.org/series/129925/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14335 -&gt; Patchwork_129925v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (1): bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129925v8 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14335/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14335/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic@smem:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14335/bat-arls-1/igt@gem_exec_create@basic@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/bat-arls-1/igt@gem_exec_create@basic@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_fence@basic-busy@bcs0:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14335/bat-arls-1/igt@gem_exec_fence@basic-busy@bcs0.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v8/bat-arls-1/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14335 -&gt; Patchwork_129925v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14335: ee8d5fa0c2351fea161393f790aecfca2c84f4ab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7729: 7729<br />
  Patchwork_129925v8: ee8d5fa0c2351fea161393f790aecfca2c84f4ab @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5c782483bddc drm/i915/hdcp: Read Rxcaps for robustibility<br />
9153b925efb9 drm/i915/hdcp: Allocate stream id after HDCP AKE stage<br />
3748f2f679b2 drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link<br />
add339cc460a drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link<br />
6234bd731486 drm/i915/hdcp: Extract hdcp structure from correct connector</p>

</body>
</html>

--===============3361026327903552976==--
