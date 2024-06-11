Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEF7904563
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 21:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664A010E730;
	Tue, 11 Jun 2024 19:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C1710E721;
 Tue, 11 Jun 2024 19:57:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6427275713561432233=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Update_?=
 =?utf-8?q?vtotal_math_to_address_32b_build?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2024 19:57:01 -0000
Message-ID: <171813582106.67160.3085931297397086780@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240611183048.159826-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240611183048.159826-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============6427275713561432233==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Update vtotal math to address 32b build
URL   : https://patchwork.freedesktop.org/series/134737/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14921 -> Patchwork_134737v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/index.html

Participating hosts (44 -> 38)
------------------------------

  Missing    (6): bat-adlp-9 fi-snb-2520m fi-cfl-8109u fi-kbl-8809g bat-dg2-14 bat-dg2-11 

Known issues
------------

  Here are the changes found in Patchwork_134737v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [ABORT][2] ([i915#10800])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14921/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6:
    - {bat-mtlp-9}:       [DMESG-FAIL][3] ([i915#11009]) -> [PASS][4] +1 other test pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14921/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6:
    - {bat-mtlp-9}:       [FAIL][5] ([i915#10979]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14921/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10800]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10800
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14921 -> Patchwork_134737v1

  CI-20190529: 20190529
  CI_DRM_14921: a72dd4fc5dc05b35221d7e220a85e6fce7e414dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7882: 257418cba11c724111fe0e983649763c407e5bc9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134737v1: a72dd4fc5dc05b35221d7e220a85e6fce7e414dd @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/index.html

--===============6427275713561432233==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Update vtotal math to address 32b build</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134737/">https://patchwork.freedesktop.org/series/134737/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14921 -&gt; Patchwork_134737v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/index.html</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): bat-adlp-9 fi-snb-2520m fi-cfl-8109u fi-kbl-8809g bat-dg2-14 bat-dg2-11 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134737v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14921/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10800">i915#10800</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14921/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/bat-mtlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-6.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14921/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979">i915#10979</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134737v1/bat-mtlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-6.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14921 -&gt; Patchwork_134737v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14921: a72dd4fc5dc05b35221d7e220a85e6fce7e414dd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7882: 257418cba11c724111fe0e983649763c407e5bc9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134737v1: a72dd4fc5dc05b35221d7e220a85e6fce7e414dd @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6427275713561432233==--
