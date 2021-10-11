Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE5B4296F5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 20:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B286E52C;
	Mon, 11 Oct 2021 18:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B25D6E52C;
 Mon, 11 Oct 2021 18:34:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1370DA7DFB;
 Mon, 11 Oct 2021 18:34:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8548550792562322865=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Oct 2021 18:34:28 -0000
Message-ID: <163397726804.22682.15060170088830200112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211011161155.6397-1-ramalingam.c@intel.com>
In-Reply-To: <20211011161155.6397-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs?=
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

--===============8548550792562322865==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Enabling 64k page size and flat ccs
URL   : https://patchwork.freedesktop.org/series/95686/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10717 -> Patchwork_21306
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21306 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21306, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/index.html

Known issues
------------

  Here are the changes found in Patchwork_21306 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][2] ([i915#3921]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10717/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (37 -> 8)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_21306 prevented too many machines from booting.

  Missing    (29): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 fi-jsl-1 fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 


Build changes
-------------

  * Linux: CI_DRM_10717 -> Patchwork_21306

  CI-20190529: 20190529
  CI_DRM_10717: 81e199c3565fe949631d8d08343bd89632a8ec0c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6242: 721fd85ee95225ed5df322f7182bdfa9b86a3e68 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21306: 2b517348c6fb5167aa7a9fbbe59a548daef475fb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2b517348c6fb Doc/gpu/rfc/i915: i915 DG2 uAPI
749ff0849c0e drm/i915/uapi: document behaviour for DG2 64K support
fcae6b137d64 drm/i915/gt: Clear compress metadata for Gen12.5 >= platforms
4a8a8a8bebf2 drm/i915/lmem: Enable lmem for platforms with Flat CCS
79dc6a059d71 drm/i915/xehpsdv: Add has_flat_ccs to device info
7062763f0800 drm/i915/xehpsdv: implement memory coloring
147ff265df2f drm/i915/selftests: account for min_alignment in GTT selftests
b4c9e5a8a623 drm/i915: Add vm min alignment support
a1536f2e5783 drm/i915/xehpsdv: support 64K GTT pages
6f36d1ed51b4 drm/i915/gtt/xehpsdv: move scratch page to system memory
ead605ff4376 drm/i915: enforce min page size for scratch
b2c0a0a180c4 drm/i915/xehpsdv: enforce min GTT alignment
70d612d1a872 drm/i915/xehpsdv: set min page-size to 64K
5bf9ba0e1d7d drm/i915: Add has_64k_pages flag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/index.html

--===============8548550792562322865==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Enabling 64k page size and flat ccs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95686/">https://patchwork.freedesktop.org/series/95686/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10717 -&gt; Patchwork_21306</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21306 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21306, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21306 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_cs_nop@sync-fork-compute0:<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10717/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21306/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 8)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_21306 prevented too many machines from booting.</p>
<p>Missing    (29): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 fi-jsl-1 fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10717 -&gt; Patchwork_21306</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10717: 81e199c3565fe949631d8d08343bd89632a8ec0c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6242: 721fd85ee95225ed5df322f7182bdfa9b86a3e68 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21306: 2b517348c6fb5167aa7a9fbbe59a548daef475fb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2b517348c6fb Doc/gpu/rfc/i915: i915 DG2 uAPI<br />
749ff0849c0e drm/i915/uapi: document behaviour for DG2 64K support<br />
fcae6b137d64 drm/i915/gt: Clear compress metadata for Gen12.5 &gt;= platforms<br />
4a8a8a8bebf2 drm/i915/lmem: Enable lmem for platforms with Flat CCS<br />
79dc6a059d71 drm/i915/xehpsdv: Add has_flat_ccs to device info<br />
7062763f0800 drm/i915/xehpsdv: implement memory coloring<br />
147ff265df2f drm/i915/selftests: account for min_alignment in GTT selftests<br />
b4c9e5a8a623 drm/i915: Add vm min alignment support<br />
a1536f2e5783 drm/i915/xehpsdv: support 64K GTT pages<br />
6f36d1ed51b4 drm/i915/gtt/xehpsdv: move scratch page to system memory<br />
ead605ff4376 drm/i915: enforce min page size for scratch<br />
b2c0a0a180c4 drm/i915/xehpsdv: enforce min GTT alignment<br />
70d612d1a872 drm/i915/xehpsdv: set min page-size to 64K<br />
5bf9ba0e1d7d drm/i915: Add has_64k_pages flag</p>

</body>
</html>

--===============8548550792562322865==--
