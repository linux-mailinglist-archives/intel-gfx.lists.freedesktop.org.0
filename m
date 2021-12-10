Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5273470601
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 17:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E236710E2D1;
	Fri, 10 Dec 2021 16:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1196010E38E;
 Fri, 10 Dec 2021 16:41:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D8CFA66C8;
 Fri, 10 Dec 2021 16:41:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2279122083913232900=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 10 Dec 2021 16:41:15 -0000
Message-ID: <163915447504.3443.16980169161415256707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1639142167.git.jani.nikula@intel.com>
In-Reply-To: <cover.1639142167.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_include_reductions_=28rev2=29?=
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

--===============2279122083913232900==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: include reductions (rev2)
URL   : https://patchwork.freedesktop.org/series/97789/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10988 -> Patchwork_21823
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/index.html

Participating hosts (45 -> 34)
------------------------------

  Missing    (11): fi-ilk-m540 bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-jsl-2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_21823 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - fi-skl-6600u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +18 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#4269])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [FAIL][4] ([i915#4547]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_10988 -> Patchwork_21823

  CI-20190529: 20190529
  CI_DRM_10988: 24a4093e85c578905d39ebe14225dbeb5b6f07d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6305: 136258e86a093fdb50a7a341de1c09ac9a076fea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21823: d27cc2218d8872067d8c7a8b5eec03c9852040d1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d27cc2218d88 drm/i915/pxp: remove useless includes
4bf740c51295 drm/i915/pxp: un-inline intel_pxp_is_enabled()
db2bff005387 drm/i915/fb: reduce include dependencies
40f36fd84f38 drm/i915/fbc: avoid intel_frontbuffer.h include with declaration
ef0a62281bb7 drm/i915/psr: avoid intel_frontbuffer.h include with declaration
395be16b5fe3 drm/i915/active: remove useless i915_utils.h include
14de03f378d6 drm/i915/reset: include intel_display.h instead of intel_display_types.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/index.html

--===============2279122083913232900==
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
<tr><td><b>Series:</b></td><td>drm/i915: include reductions (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97789/">https://patchwork.freedesktop.org/series/97789/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10988 -&gt; Patchwork_21823</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/index.html</p>
<h2>Participating hosts (45 -&gt; 34)</h2>
<p>Missing    (11): fi-ilk-m540 bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-jsl-2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21823 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21823/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10988 -&gt; Patchwork_21823</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10988: 24a4093e85c578905d39ebe14225dbeb5b6f07d5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6305: 136258e86a093fdb50a7a341de1c09ac9a076fea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21823: d27cc2218d8872067d8c7a8b5eec03c9852040d1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d27cc2218d88 drm/i915/pxp: remove useless includes<br />
4bf740c51295 drm/i915/pxp: un-inline intel_pxp_is_enabled()<br />
db2bff005387 drm/i915/fb: reduce include dependencies<br />
40f36fd84f38 drm/i915/fbc: avoid intel_frontbuffer.h include with declaration<br />
ef0a62281bb7 drm/i915/psr: avoid intel_frontbuffer.h include with declaration<br />
395be16b5fe3 drm/i915/active: remove useless i915_utils.h include<br />
14de03f378d6 drm/i915/reset: include intel_display.h instead of intel_display_types.h</p>

</body>
</html>

--===============2279122083913232900==--
