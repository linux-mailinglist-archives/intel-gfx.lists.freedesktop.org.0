Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DA1435A91
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 08:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1616EB36;
	Thu, 21 Oct 2021 06:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 487106EA2A;
 Thu, 21 Oct 2021 06:01:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3FD22AA0ED;
 Thu, 21 Oct 2021 06:01:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2403586383661506061=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 06:01:37 -0000
Message-ID: <163479609722.20173.9994955004142478382@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021050713.836498-1-khaled.almahallawy@intel.com>
In-Reply-To: <20211021050713.836498-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=3A_Use_DP2=2E0_DPCD_248h_updated_register/field_names_for_D?=
 =?utf-8?q?P_PHY_CTS?=
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

--===============2403586383661506061==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp: Use DP2.0 DPCD 248h updated register/field names for DP PHY CTS
URL   : https://patchwork.freedesktop.org/series/96096/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10767 -> Patchwork_21400
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/index.html

Known issues
------------

  Here are the changes found in Patchwork_21400 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][2] -> [INCOMPLETE][3] ([i915#2940])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#4269])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][6] ([i915#1814] / [i915#3363] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-kbl-7500u/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][8] ([i915#3921]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - fi-cfl-8109u:       [FAIL][10] ([i915#4165]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][12] ([i915#295]) -> [PASS][13] +14 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan bat-dg1-6 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10767 -> Patchwork_21400

  CI-20190529: 20190529
  CI_DRM_10767: 4d947bb057406e5c30081736db70da3f5726e0cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21400: 0e23aeb9be7703f7d0f95d6e806f33ab8771c219 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0e23aeb9be77 drm/msm/dp: Use DPCD 248h DP 2.0 new names/definitions
d394b46305e2 drm/amd/dc: Use DPCD 248h DP 2.0 new name
801e4b2d5433 drm/i915/dp: Use DP 2.0 LINK_QUAL_PATTERN_* Phy test pattern definitions
2bdec9c1bda4 drm/dp: Rename DPCD 248h according to DP 2.0 specs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/index.html

--===============2403586383661506061==
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
<tr><td><b>Series:</b></td><td>drm/dp: Use DP2.0 DPCD 248h updated register/field names for DP PHY CTS</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96096/">https://patchwork.freedesktop.org/series/96096/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10767 -&gt; Patchwork_21400</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21400 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21400/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +14 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan bat-dg1-6 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10767 -&gt; Patchwork_21400</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10767: 4d947bb057406e5c30081736db70da3f5726e0cd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21400: 0e23aeb9be7703f7d0f95d6e806f33ab8771c219 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0e23aeb9be77 drm/msm/dp: Use DPCD 248h DP 2.0 new names/definitions<br />
d394b46305e2 drm/amd/dc: Use DPCD 248h DP 2.0 new name<br />
801e4b2d5433 drm/i915/dp: Use DP 2.0 LINK_QUAL_PATTERN_* Phy test pattern definitions<br />
2bdec9c1bda4 drm/dp: Rename DPCD 248h according to DP 2.0 specs</p>

</body>
</html>

--===============2403586383661506061==--
