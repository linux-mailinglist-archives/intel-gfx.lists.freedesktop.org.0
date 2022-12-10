Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08211648CE2
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Dec 2022 04:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095AC10E08A;
	Sat, 10 Dec 2022 03:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DC4F10E08A;
 Sat, 10 Dec 2022 03:31:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 384B5AADE6;
 Sat, 10 Dec 2022 03:31:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8268933144433946335=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Sat, 10 Dec 2022 03:31:58 -0000
Message-ID: <167064311819.23486.4025115585522571150@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_OAG_32_bit_format_support_for_MTL_=28rev3=29?=
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

--===============8268933144433946335==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Add OAG 32 bit format support for MTL (rev3)
URL   : https://patchwork.freedesktop.org/series/111512/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12491 -> Patchwork_111512v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111512v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111512v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/index.html

Participating hosts (41 -> 6)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_111512v3 prevented too many machines from booting.

  Missing    (35): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc bat-adls-5 bat-dg1-5 fi-bdw-gvtdvm fi-icl-u2 bat-adlp-6 fi-pnv-d510 fi-skl-6600u fi-snb-2600 fi-bsw-n3050 fi-adl-ddr5 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-hsw-4770 bat-atsm-1 fi-ivb-3770 bat-jsl-3 fi-elk-e7500 bat-dg2-11 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u bat-kbl-2 bat-adlp-9 fi-skl-guc fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-cfl-guc bat-adlp-4 fi-kbl-8809g fi-bsw-kefka 

Known issues
------------

  Here are the changes found in Patchwork_111512v3 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][1] ([i915#2582]) -> [PASS][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/bat-rpls-2/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rpls-2}:       [DMESG-WARN][3] ([i915#6434]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7355]: https://gitlab.freedesktop.org/drm/intel/issues/7355
  [i915#7467]: https://gitlab.freedesktop.org/drm/intel/issues/7467


Build changes
-------------

  * IGT: IGT_7090 -> IGTPW_8166
  * Linux: CI_DRM_12491 -> Patchwork_111512v3

  CI-20190529: 20190529
  CI_DRM_12491: d322881f7e33af24901ee8ccaec3beef82f21203 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8166: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8166/index.html
  IGT_7090: 5aafcf060b6dfbb2fa7aace76c8074d98ac7da8f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111512v3: d322881f7e33af24901ee8ccaec3beef82f21203 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1f74a227d48b drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL
5544dfa5fc93 drm/i915/mtl: Update OA mux whitelist for MTL
3d0f93c4e73a drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch
48b5e7bc23de drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/index.html

--===============8268933144433946335==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Add OAG 32 bit format support for MTL (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111512/">https://patchwork.freedesktop.org/series/111512/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12491 -&gt; Patchwork_111512v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111512v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_111512v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/index.html</p>
<h2>Participating hosts (41 -&gt; 6)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_111512v3 prevented too many machines from booting.</p>
<p>Missing    (35): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc bat-adls-5 bat-dg1-5 fi-bdw-gvtdvm fi-icl-u2 bat-adlp-6 fi-pnv-d510 fi-skl-6600u fi-snb-2600 fi-bsw-n3050 fi-adl-ddr5 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-hsw-4770 bat-atsm-1 fi-ivb-3770 bat-jsl-3 fi-elk-e7500 bat-dg2-11 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u bat-kbl-2 bat-adlp-9 fi-skl-guc fi-glk-j4005 fi-ehl-2 fi-jsl-1 fi-cfl-guc bat-adlp-4 fi-kbl-8809g fi-bsw-kefka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111512v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v3/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7090 -&gt; IGTPW_8166</li>
<li>Linux: CI_DRM_12491 -&gt; Patchwork_111512v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12491: d322881f7e33af24901ee8ccaec3beef82f21203 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8166: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8166/index.html<br />
  IGT_7090: 5aafcf060b6dfbb2fa7aace76c8074d98ac7da8f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111512v3: d322881f7e33af24901ee8ccaec3beef82f21203 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1f74a227d48b drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL<br />
5544dfa5fc93 drm/i915/mtl: Update OA mux whitelist for MTL<br />
3d0f93c4e73a drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch<br />
48b5e7bc23de drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs</p>

</body>
</html>

--===============8268933144433946335==--
