Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8430585CE90
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 04:08:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2403010E5EE;
	Wed, 21 Feb 2024 03:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D62C10E5EE;
 Wed, 21 Feb 2024 03:08:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0788891038544397634=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_VBT_read_cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 03:08:01 -0000
Message-ID: <170848488164.132386.9309103870227115120@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
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

--===============0788891038544397634==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: VBT read cleanup
URL   : https://patchwork.freedesktop.org/series/130158/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14305 -> Patchwork_130158v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_130158v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-rplp-1:         [PASS][1] -> [INCOMPLETE][2] ([i915#9413])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html

  
#### Possible fixes ####

  * igt@vgem_basic@create:
    - {bat-arls-2}:       [FAIL][3] -> [PASS][4] +4 other tests pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@vgem_basic@create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/bat-arls-2/igt@vgem_basic@create.html

  * igt@vgem_basic@dmabuf-mmap:
    - {bat-arls-2}:       [INCOMPLETE][5] -> [PASS][6] +6 other tests pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@vgem_basic@dmabuf-mmap.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/bat-arls-2/igt@vgem_basic@dmabuf-mmap.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10215]: https://gitlab.freedesktop.org/drm/intel/issues/10215
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413


Build changes
-------------

  * Linux: CI_DRM_14305 -> Patchwork_130158v1

  CI-20190529: 20190529
  CI_DRM_14305: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7718: 40e8b9122853f455c84afcfa56469a6bc9a0d564 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130158v1: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

019fa6ae6288 drm/i915: Show bios vbt when read from firmware/spi/oprom
53e0b8eef3f3 drm/i915: Move vbt read from firmware to intel_bios.c
2b287ce2f0a9 drm/i915: Pass size to spi_oprom_get_vbt
92df00f7dca1 drm/i915: Pass size to oprom_get_vbt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/index.html

--===============0788891038544397634==
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
<tr><td><b>Series:</b></td><td>VBT read cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130158/">https://patchwork.freedesktop.org/series/130158/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14305 -&gt; Patchwork_130158v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130158v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/bat-rplp-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9413">i915#9413</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@vgem_basic@create.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/bat-arls-2/igt@vgem_basic@create.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@vgem_basic@dmabuf-mmap.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130158v1/bat-arls-2/igt@vgem_basic@dmabuf-mmap.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14305 -&gt; Patchwork_130158v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14305: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7718: 40e8b9122853f455c84afcfa56469a6bc9a0d564 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130158v1: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>019fa6ae6288 drm/i915: Show bios vbt when read from firmware/spi/oprom<br />
53e0b8eef3f3 drm/i915: Move vbt read from firmware to intel_bios.c<br />
2b287ce2f0a9 drm/i915: Pass size to spi_oprom_get_vbt<br />
92df00f7dca1 drm/i915: Pass size to oprom_get_vbt</p>

</body>
</html>

--===============0788891038544397634==--
