Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCD86C29EF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 06:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F6F10E031;
	Tue, 21 Mar 2023 05:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80BD510E031;
 Tue, 21 Mar 2023 05:36:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CCE8AADDC;
 Tue, 21 Mar 2023 05:36:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5849039029503486900=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 21 Mar 2023 05:36:54 -0000
Message-ID: <167937701450.18676.1481033045437861225@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
In-Reply-To: <20230320165945.3564891-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSGln?=
 =?utf-8?q?h_refresh_rate_PSR_fixes_=28rev3=29?=
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

--===============5849039029503486900==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: High refresh rate PSR fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/115109/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12884 -> Patchwork_115109v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/index.html

Participating hosts (35 -> 34)
------------------------------

  Missing    (1): bat-dg1-6 

Known issues
------------

  Here are the changes found in Patchwork_115109v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [PASS][1] -> [INCOMPLETE][2] ([i915#7609])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][3] -> [INCOMPLETE][4] ([i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/bat-atsm-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [PASS][5] -> [DMESG-FAIL][6] ([i915#7699])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/bat-adlp-9/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][7] -> [ABORT][8] ([i915#7911])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-rpls-1/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/bat-rpls-1/igt@i915_selftest@live@requests.html

  
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913


Build changes
-------------

  * Linux: CI_DRM_12884 -> Patchwork_115109v3

  CI-20190529: 20190529
  CI_DRM_12884: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7208: f327c5d77b6ea6adff1ef6d08f21f232dfe093e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115109v3: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

80e72ec7f1e1 drm/i915/psr: Implement Display WA #1136
278f96a25a07 drm/i915/psr: Check that vblank is long enough for psr2
1b026ad21bc9 drm/i915/psr: Fix Wa_16013835468 and Wa_14015648006
acd5086f3530 drm/i915/psr: Unify pre/post hooks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/index.html

--===============5849039029503486900==
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
<tr><td><b>Series:</b></td><td>High refresh rate PSR fixes (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115109/">https://patchwork.freedesktop.org/series/115109/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12884 -&gt; Patchwork_115109v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Missing    (1): bat-dg1-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115109v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12884/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115109v3/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12884 -&gt; Patchwork_115109v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12884: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7208: f327c5d77b6ea6adff1ef6d08f21f232dfe093e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115109v3: 1d4054731cfcb1cb9810d309b70535ae0b90ecf0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>80e72ec7f1e1 drm/i915/psr: Implement Display WA #1136<br />
278f96a25a07 drm/i915/psr: Check that vblank is long enough for psr2<br />
1b026ad21bc9 drm/i915/psr: Fix Wa_16013835468 and Wa_14015648006<br />
acd5086f3530 drm/i915/psr: Unify pre/post hooks</p>

</body>
</html>

--===============5849039029503486900==--
