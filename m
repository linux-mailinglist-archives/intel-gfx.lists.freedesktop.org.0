Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1266A18D1F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 08:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485B310E67D;
	Wed, 22 Jan 2025 07:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73DBA10E67C;
 Wed, 22 Jan 2025 07:53:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4256249442881387266=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_Extended_Wake_Timeout_=28?=
 =?utf-8?q?rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2025 07:53:15 -0000
Message-ID: <173753239546.2961807.13921912451329493578@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250122053358.1545039-1-suraj.kandpal@intel.com>
In-Reply-To: <20250122053358.1545039-1-suraj.kandpal@intel.com>
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

--===============4256249442881387266==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Extended Wake Timeout (rev4)
URL   : https://patchwork.freedesktop.org/series/142517/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15998 -> Patchwork_142517v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/index.html

Participating hosts (39 -> 40)
------------------------------

  Additional (1): fi-kbl-guc 

Known issues
------------

  Here are the changes found in Patchwork_142517v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - fi-kbl-guc:         NOTRUN -> [SKIP][1] ([i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/fi-kbl-guc/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-guc:         NOTRUN -> [SKIP][2] ([i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-guc:         NOTRUN -> [SKIP][3] ([i915#4613]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/fi-kbl-guc/igt@gem_lmem_swapping@basic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-kbl-guc:         NOTRUN -> [SKIP][4] +34 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][5] -> [SKIP][6] ([i915#9197]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15998/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15998 -> Patchwork_142517v4

  CI-20190529: 20190529
  CI_DRM_15998: a5efe95724accce6ccd3e0c840fdd3bf5d6f369b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8204: b8f853f36eed19149b36e5d70c63095c6da12ffe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_142517v4: a5efe95724accce6ccd3e0c840fdd3bf5d6f369b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/index.html

--===============4256249442881387266==
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
<tr><td><b>Series:</b></td><td>Extended Wake Timeout (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/142517/">https://patchwork.freedesktop.org/series/142517/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15998 -&gt; Patchwork_142517v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/index.html</p>
<h2>Participating hosts (39 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-guc </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_142517v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/fi-kbl-guc/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/fi-kbl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/fi-kbl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">SKIP</a> +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15998/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142517v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15998 -&gt; Patchwork_142517v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15998: a5efe95724accce6ccd3e0c840fdd3bf5d6f369b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8204: b8f853f36eed19149b36e5d70c63095c6da12ffe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_142517v4: a5efe95724accce6ccd3e0c840fdd3bf5d6f369b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4256249442881387266==--
