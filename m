Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3583F0C86
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 22:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24186E8B8;
	Wed, 18 Aug 2021 20:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE6A56E94E;
 Wed, 18 Aug 2021 20:17:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5AF94A77A5;
 Wed, 18 Aug 2021 20:17:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2012025519236615694=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 20:17:19 -0000
Message-ID: <162931783934.16673.1490359792764581282@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818171457.536107-1-kai.heng.feng@canonical.com>
In-Reply-To: <20210818171457.536107-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Use_max_params_for_panels_=3C_eDP_1=2E4?=
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

--===============2012025519236615694==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Use max params for panels < eDP 1.4
URL   : https://patchwork.freedesktop.org/series/93794/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10497 -> Patchwork_20849
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20849 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20849, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20849:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html

  * igt@gem_ctx_create@basic-files:
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-tgl-1115g4/igt@gem_ctx_create@basic-files.html

  
Known issues
------------

  Here are the changes found in Patchwork_20849 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][3] ([fdo#109315]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271]) +13 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][5] ([i915#2722])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [DMESG-WARN][6] ([i915#3925]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10497/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925


Participating hosts (34 -> 33)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (2): fi-bsw-cyan fi-kbl-guc 


Build changes
-------------

  * Linux: CI_DRM_10497 -> Patchwork_20849

  CI-20190529: 20190529
  CI_DRM_10497: c50a8ea72915f1e3972d011690a423bafbee7a58 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20849: 33297386de4af8318a8c52f3684f130eb55823eb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

33297386de4a drm/i915/dp: Use max params for panels < eDP 1.4

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/index.html

--===============2012025519236615694==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Use max params for panels &lt; eDP 1.4</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93794/">https://patchwork.freedesktop.org/series/93794/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10497 -&gt; Patchwork_20849</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20849 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20849, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20849:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-tgl-1115g4/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20849 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10497/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20849/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (34 -&gt; 33)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (2): fi-bsw-cyan fi-kbl-guc </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10497 -&gt; Patchwork_20849</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10497: c50a8ea72915f1e3972d011690a423bafbee7a58 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20849: 33297386de4af8318a8c52f3684f130eb55823eb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>33297386de4a drm/i915/dp: Use max params for panels &lt; eDP 1.4</p>

</body>
</html>

--===============2012025519236615694==--
