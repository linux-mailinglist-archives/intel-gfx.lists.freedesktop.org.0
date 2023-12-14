Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C28F2813B05
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 20:51:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BCCF10E274;
	Thu, 14 Dec 2023 19:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73C1610E2ED;
 Thu, 14 Dec 2023 19:51:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60D6FAADD8;
 Thu, 14 Dec 2023 19:51:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2822286159799464725=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Replace_kmap=5F?=
 =?utf-8?q?atomic=28=29_with_kmap=5Flocal=5Fpage=28=29_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhao Liu" <zhao1.liu@linux.intel.com>
Date: Thu, 14 Dec 2023 19:51:31 -0000
Message-ID: <170258349139.19958.10036900996805762188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231203132947.2328805-1-zhao1.liu@linux.intel.com>
In-Reply-To: <20231203132947.2328805-1-zhao1.liu@linux.intel.com>
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

--===============2822286159799464725==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Replace kmap_atomic() with kmap_local_page() (rev3)
URL   : https://patchwork.freedesktop.org/series/115769/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14022 -> Patchwork_115769v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): bat-mtlp-8 bat-adlp-6 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_115769v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +28 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:
    - fi-bsw-n3050:       [DMESG-WARN][2] ([i915#1982]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Build changes
-------------

  * Linux: CI_DRM_14022 -> Patchwork_115769v3

  CI-20190529: 20190529
  CI_DRM_14022: 87fdea3fd86a02e2e7855e372c0d3fb32e53e4e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115769v3: 87fdea3fd86a02e2e7855e372c0d3fb32e53e4e6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e4eca37c6638 drm/i915: Use kmap_local_page() in gem/i915_gem_execbuffer.c
7a38f4fc02a3 drm/i915: Use kmap_local_page() in i915_cmd_parser.c
ea9067eed123 drm/i915: Use memcpy_from_page() in gt/uc/intel_uc_fw.c
6b0c09456114 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_context.c
7fc1e0e2c0e6 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_coherency.c
b3c77009b5a4 drm/i915: Use kmap_local_page() in gem/selftests/huge_pages.c
c07f4b45abea drm/i915: Use kmap_local_page() in gem/i915_gem_shmem.c
7d26dd6b5142 drm/i915: Use memcpy_[from/to]_page() in gem/i915_gem_pyhs.c
ca94dc81a037 drm/i915: Use kmap_local_page() in gem/i915_gem_object.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/index.html

--===============2822286159799464725==
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
<tr><td><b>Series:</b></td><td>drm/i915: Replace kmap_atomic() with kmap_local_page() (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115769/">https://patchwork.freedesktop.org/series/115769/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14022 -&gt; Patchwork_115769v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): bat-mtlp-8 bat-adlp-6 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115769v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@basic:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14022/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115769v3/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14022 -&gt; Patchwork_115769v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14022: 87fdea3fd86a02e2e7855e372c0d3fb32e53e4e6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115769v3: 87fdea3fd86a02e2e7855e372c0d3fb32e53e4e6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e4eca37c6638 drm/i915: Use kmap_local_page() in gem/i915_gem_execbuffer.c<br />
7a38f4fc02a3 drm/i915: Use kmap_local_page() in i915_cmd_parser.c<br />
ea9067eed123 drm/i915: Use memcpy_from_page() in gt/uc/intel_uc_fw.c<br />
6b0c09456114 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_context.c<br />
7fc1e0e2c0e6 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_coherency.c<br />
b3c77009b5a4 drm/i915: Use kmap_local_page() in gem/selftests/huge_pages.c<br />
c07f4b45abea drm/i915: Use kmap_local_page() in gem/i915_gem_shmem.c<br />
7d26dd6b5142 drm/i915: Use memcpy_[from/to]_page() in gem/i915_gem_pyhs.c<br />
ca94dc81a037 drm/i915: Use kmap_local_page() in gem/i915_gem_object.c</p>

</body>
</html>

--===============2822286159799464725==--
