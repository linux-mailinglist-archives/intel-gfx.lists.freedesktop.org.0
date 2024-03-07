Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB8C874B64
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 10:55:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7AC10EFC7;
	Thu,  7 Mar 2024 09:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E125D10EFC7;
 Thu,  7 Mar 2024 09:55:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6941929535249547563=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_add_missing_header_g?=
 =?utf-8?q?uards_to_drm=5Fcrtc=5Finternal=2Eh_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 09:55:15 -0000
Message-ID: <170980531591.580282.9336731929741661956@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1709749576.git.jani.nikula@intel.com>
In-Reply-To: <cover.1709749576.git.jani.nikula@intel.com>
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

--===============6941929535249547563==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: add missing header guards to drm_crtc_internal.h (rev2)
URL   : https://patchwork.freedesktop.org/series/130822/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14401 -> Patchwork_130822v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-dg1-7 bat-kbl-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_130822v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14401/bat-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/bat-jsl-1/boot.html
    - fi-apl-guc:         [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14401/fi-apl-guc/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - bat-dg2-14:         [PASS][5] -> [ABORT][6] ([i915#10367])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14401/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10367]: https://gitlab.freedesktop.org/drm/intel/issues/10367
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14401 -> Patchwork_130822v2

  CI-20190529: 20190529
  CI_DRM_14401: 2e45ab4961e343a99fdef900be1e33234b8f3b73 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130822v2: 2e45ab4961e343a99fdef900be1e33234b8f3b73 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5945fc1e4f09 drm: ensure drm headers are self-contained and pass kernel-doc
82f2e1611bad drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings
360f69a3a9f8 drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings
ce042b6acd70 drm/ttm: make ttm_caching.h self-contained
76e59bc84049 drm/ttm: fix ttm_bo.h kernel-doc warnings
093a0c3bc992 drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings
a13eb5b827de drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings
e0f5d49639ce drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc
0d7381cd3f18 drm/suballoc: fix drm_suballoc.h kernel-doc
e7ecd4b0b248 drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings
07d1752581c2 drm/of: make drm_of.h self-contained
a1ed7ed132fd drm: fix drm_gem_vram_helper.h kernel-doc
a981da3a54e7 drm/lease: make drm_lease.h self-contained
83e69ddc2609 drm: fix drm_format_helper.h kernel-doc warnings
144744b35632 drm/encoder: silence drm_encoder_slave.h kernel-doc
f67320f1e874 drm/crc: make drm_debugfs_crc.h self-contained and fix kernel-doc
ab19506067b4 drm/dp_mst: fix drm_dp_mst_helper.h kernel-doc
92300d1569e4 drm: bridge: samsung-dsim: make samsung-dsim.h self-contained
c2fd46d7bab2 drm/amdgpu: make amd_asic_type.h self-contained
f1b195153d5f drm/kunit: fix drm_kunit_helpers.h kernel-doc
e86f18e9bdd6 drm: add missing header guards to drm_internal.h
ce95506e53cb drm/crtc: make drm_crtc_internal.h self-contained

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/index.html

--===============6941929535249547563==
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
<tr><td><b>Series:</b></td><td>drm: add missing header guards to drm_crtc_internal.h (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130822/">https://patchwork.freedesktop.org/series/130822/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14401 -&gt; Patchwork_130822v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-dg1-7 bat-kbl-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130822v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14401/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14401/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pm_rpm@basic-pci-d3-state:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14401/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130822v2/bat-dg2-14/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10367">i915#10367</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14401 -&gt; Patchwork_130822v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14401: 2e45ab4961e343a99fdef900be1e33234b8f3b73 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130822v2: 2e45ab4961e343a99fdef900be1e33234b8f3b73 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5945fc1e4f09 drm: ensure drm headers are self-contained and pass kernel-doc<br />
82f2e1611bad drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings<br />
360f69a3a9f8 drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings<br />
ce042b6acd70 drm/ttm: make ttm_caching.h self-contained<br />
76e59bc84049 drm/ttm: fix ttm_bo.h kernel-doc warnings<br />
093a0c3bc992 drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings<br />
a13eb5b827de drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings<br />
e0f5d49639ce drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc<br />
0d7381cd3f18 drm/suballoc: fix drm_suballoc.h kernel-doc<br />
e7ecd4b0b248 drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings<br />
07d1752581c2 drm/of: make drm_of.h self-contained<br />
a1ed7ed132fd drm: fix drm_gem_vram_helper.h kernel-doc<br />
a981da3a54e7 drm/lease: make drm_lease.h self-contained<br />
83e69ddc2609 drm: fix drm_format_helper.h kernel-doc warnings<br />
144744b35632 drm/encoder: silence drm_encoder_slave.h kernel-doc<br />
f67320f1e874 drm/crc: make drm_debugfs_crc.h self-contained and fix kernel-doc<br />
ab19506067b4 drm/dp_mst: fix drm_dp_mst_helper.h kernel-doc<br />
92300d1569e4 drm: bridge: samsung-dsim: make samsung-dsim.h self-contained<br />
c2fd46d7bab2 drm/amdgpu: make amd_asic_type.h self-contained<br />
f1b195153d5f drm/kunit: fix drm_kunit_helpers.h kernel-doc<br />
e86f18e9bdd6 drm: add missing header guards to drm_internal.h<br />
ce95506e53cb drm/crtc: make drm_crtc_internal.h self-contained</p>

</body>
</html>

--===============6941929535249547563==--
