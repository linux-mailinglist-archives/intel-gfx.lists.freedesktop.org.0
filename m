Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 207EE830F5B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 23:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 986B910E8B0;
	Wed, 17 Jan 2024 22:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F2D10E8B4;
 Wed, 17 Jan 2024 22:40:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2376672658669791669=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Enable_Wa=5F14019159160_and?=
 =?utf-8?q?_Wa=5F16019325821_for_MTL_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 17 Jan 2024 22:40:58 -0000
Message-ID: <170553125866.537693.2297041871787038047@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104180541.2966374-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240104180541.2966374-1-John.C.Harrison@Intel.com>
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

--===============2376672658669791669==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Wa_14019159160 and Wa_16019325821 for MTL (rev6)
URL   : https://patchwork.freedesktop.org/series/123813/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14134 -> Patchwork_123813v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123813v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123813v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/index.html

Participating hosts (36 -> 34)
------------------------------

  Missing    (2): bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123813v6:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14134/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_123813v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-atsm-1:         NOTRUN -> [SKIP][3] ([i915#6645])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][4] ([i915#1836])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_migrate:
    - bat-atsm-1:         [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14134/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html

  
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645


Build changes
-------------

  * Linux: CI_DRM_14134 -> Patchwork_123813v6

  CI-20190529: 20190529
  CI_DRM_14134: 6002d529f9fe420895d407e481d39b19b58ec001 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7678: 9f0b63bae98fa6164dd2262f8890a964fb1fc23d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123813v6: 6002d529f9fe420895d407e481d39b19b58ec001 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

48dbf071d516 drm/i915/guc: Enable Wa_14019159160
2517daba1fc2 drm/i915/guc: Add support for w/a KLVs
e382efc391b6 drm/i915: Enable Wa_16019325821

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/index.html

--===============2376672658669791669==
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
<tr><td><b>Series:</b></td><td>Enable Wa_14019159160 and Wa_16019325821 for MTL (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123813/">https://patchwork.freedesktop.org/series/123813/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14134 -&gt; Patchwork_123813v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123813v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123813v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123813v6:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14134/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123813v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gem_migrate:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14134/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123813v6/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14134 -&gt; Patchwork_123813v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14134: 6002d529f9fe420895d407e481d39b19b58ec001 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7678: 9f0b63bae98fa6164dd2262f8890a964fb1fc23d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123813v6: 6002d529f9fe420895d407e481d39b19b58ec001 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>48dbf071d516 drm/i915/guc: Enable Wa_14019159160<br />
2517daba1fc2 drm/i915/guc: Add support for w/a KLVs<br />
e382efc391b6 drm/i915: Enable Wa_16019325821</p>

</body>
</html>

--===============2376672658669791669==--
