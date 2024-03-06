Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFE6872F1F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 07:58:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771F310E13C;
	Wed,  6 Mar 2024 06:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4235D10E13C;
 Wed,  6 Mar 2024 06:58:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3248922743288076058=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/guc=3A_Use_context?=
 =?utf-8?q?_hints_for_GT_frequency_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 06:58:37 -0000
Message-ID: <170970831727.524851.7505201264621564527@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306012759.204938-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20240306012759.204938-1-vinay.belgaumkar@intel.com>
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

--===============3248922743288076058==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Use context hints for GT frequency (rev2)
URL   : https://patchwork.freedesktop.org/series/130698/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14395 -> Patchwork_130698v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-mtlp-8 fi-glk-j4005 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_130698v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][1] -> [FAIL][2] ([i915#10234])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-3/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/bat-arls-3/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][3] -> [ABORT][4] ([i915#9662])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][5] -> [ABORT][6] ([i915#10366])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/bat-atsm-1/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-arls-2:         [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-2/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/bat-arls-2/igt@i915_selftest@live@migrate.html

  
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#9662]: https://gitlab.freedesktop.org/drm/intel/issues/9662


Build changes
-------------

  * Linux: CI_DRM_14395 -> Patchwork_130698v2

  CI-20190529: 20190529
  CI_DRM_14395: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7746: 7746
  Patchwork_130698v2: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

830deae54cb3 drm/i915/guc: Use context hints for GT frequency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/index.html

--===============3248922743288076058==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Use context hints for GT frequency (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130698/">https://patchwork.freedesktop.org/series/130698/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14395 -&gt; Patchwork_130698v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-mtlp-8 fi-glk-j4005 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130698v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9662">i915#9662</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-2/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130698v2/bat-arls-2/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14395 -&gt; Patchwork_130698v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14395: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7746: 7746<br />
  Patchwork_130698v2: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>830deae54cb3 drm/i915/guc: Use context hints for GT frequency</p>

</body>
</html>

--===============3248922743288076058==--
