Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB7141CD59
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 22:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2CF6E213;
	Wed, 29 Sep 2021 20:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64CDD6E212;
 Wed, 29 Sep 2021 20:24:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A69AA363C;
 Wed, 29 Sep 2021 20:24:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3703898294261070097=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 20:24:27 -0000
Message-ID: <163294706733.27098.2461591309400071494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210929194052.469-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20210929194052.469-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_memory_bandwidth_formulae_=28rev3=29?=
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

--===============3703898294261070097==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Update memory bandwidth formulae (rev3)
URL   : https://patchwork.freedesktop.org/series/95138/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10660 -> Patchwork_21195
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21195:

### CI changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * boot:
    - {fi-jsl-1}:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-jsl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/fi-jsl-1/boot.html
    - {fi-ehl-2}:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-ehl-2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/fi-ehl-2/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_21195 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-icl-y:           [PASS][5] -> [FAIL][6] ([i915#3521])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-icl-y/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/fi-icl-y/boot.html
    - fi-icl-u2:          [PASS][7] -> [FAIL][8] ([i915#3521])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-icl-u2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/fi-icl-u2/boot.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3521]: https://gitlab.freedesktop.org/drm/intel/issues/3521


Participating hosts (33 -> 29)
------------------------------

  Missing    (4): fi-bsw-cyan bat-jsl-1 bat-dg1-6 bat-adlp-4 


Build changes
-------------

  * Linux: CI_DRM_10660 -> Patchwork_21195

  CI-20190529: 20190529
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21195: 326a2a72e268238642d6885d421b9139166b32ff @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

326a2a72e268 drm/i915: Update memory bandwidth formulae

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/index.html

--===============3703898294261070097==
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
<tr><td><b>Series:</b></td><td>drm/i915: Update memory bandwidth formulae (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95138/">https://patchwork.freedesktop.org/series/95138/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10660 -&gt; Patchwork_21195</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21195:</p>
<h3>CI changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/fi-jsl-1/boot.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-ehl-2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/fi-ehl-2/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21195 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-icl-y/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/fi-icl-y/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/fi-icl-u2/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21195/fi-icl-u2/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3521">i915#3521</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 29)</h2>
<p>Missing    (4): fi-bsw-cyan bat-jsl-1 bat-dg1-6 bat-adlp-4 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10660 -&gt; Patchwork_21195</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10660: 05888a7b7b4aec560d6692e5e9173adc7e76c0df @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6227: 6ac2da7fd6b13f04f9aa0ec10f86b831d2756946 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21195: 326a2a72e268238642d6885d421b9139166b32ff @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>326a2a72e268 drm/i915: Update memory bandwidth formulae</p>

</body>
</html>

--===============3703898294261070097==--
