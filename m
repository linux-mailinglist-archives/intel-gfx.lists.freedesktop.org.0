Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D2B85E680
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8041E10E7AD;
	Wed, 21 Feb 2024 18:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D3810E7A4;
 Wed, 21 Feb 2024 18:40:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2120630003009873410=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display/debugfs=3A?=
 =?utf-8?q?_New_entry_=22DRRS_capable=22_to_i915=5Fdrrs=5Fstatus?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 18:40:45 -0000
Message-ID: <170854084502.178729.1611342607562713657@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
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

--===============2120630003009873410==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/debugfs: New entry "DRRS capable" to i915_drrs_status
URL   : https://patchwork.freedesktop.org/series/130197/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14310 -> Patchwork_130197v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): bat-arls-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130197v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_create@basic-files:
    - {bat-arls-2}:       [PASS][1] -> [TIMEOUT][2] +1 other test timeout
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14310/bat-arls-2/igt@gem_ctx_create@basic-files.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/bat-arls-2/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_fence@basic-busy:
    - {bat-arls-2}:       NOTRUN -> [TIMEOUT][3] +4 other tests timeout
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/bat-arls-2/igt@gem_exec_fence@basic-busy.html

  
Known issues
------------

  Here are the changes found in Patchwork_130197v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-jsl-1:          [PASS][4] -> [FAIL][5] ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14310/bat-jsl-1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/bat-jsl-1/boot.html

  

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][6] ([i915#7911]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14310/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14310 -> Patchwork_130197v1

  CI-20190529: 20190529
  CI_DRM_14310: 53c127ff2eda902ff59370f44526e5e8ae49dec0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7719: 7719
  Patchwork_130197v1: 53c127ff2eda902ff59370f44526e5e8ae49dec0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f7610b612b4a drm/i915/display/debugfs: New entry "DRRS capable" to i915_drrs_status

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/index.html

--===============2120630003009873410==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/debugfs: New entry &quot;DRRS capable&quot; to i915_drrs_status</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130197/">https://patchwork.freedesktop.org/series/130197/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14310 -&gt; Patchwork_130197v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): bat-arls-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130197v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14310/bat-arls-2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/bat-arls-2/igt@gem_ctx_create@basic-files.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy:</p>
<ul>
<li>{bat-arls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/bat-arls-2/igt@gem_exec_fence@basic-busy.html">TIMEOUT</a> +4 other tests timeout</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130197v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14310/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14310/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130197v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14310 -&gt; Patchwork_130197v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14310: 53c127ff2eda902ff59370f44526e5e8ae49dec0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7719: 7719<br />
  Patchwork_130197v1: 53c127ff2eda902ff59370f44526e5e8ae49dec0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f7610b612b4a drm/i915/display/debugfs: New entry "DRRS capable" to i915_drrs_status</p>

</body>
</html>

--===============2120630003009873410==--
