Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FA1ADCBB3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 14:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD6E10E4A9;
	Tue, 17 Jun 2025 12:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C386710E3C5;
 Tue, 17 Jun 2025 12:38:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6521351381195302307=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_dma-fence=3A_Fix_sparse_w?=
 =?utf-8?q?arnings_due_=5F=5Frcu_annotations?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jun 2025 12:38:38 -0000
Message-ID: <175016391879.86800.13785978721289718875@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250616155952.24259-1-tvrtko.ursulin@igalia.com>
In-Reply-To: <20250616155952.24259-1-tvrtko.ursulin@igalia.com>
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

--===============6521351381195302307==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dma-fence: Fix sparse warnings due __rcu annotations
URL   : https://patchwork.freedesktop.org/series/150341/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16707 -> Patchwork_150341v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150341v1/index.html

Participating hosts (39 -> 39)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_150341v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][1] ([i915#12061]) -> [PASS][2] +1 other test pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16707/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150341v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061


Build changes
-------------

  * Linux: CI_DRM_16707 -> Patchwork_150341v1

  CI-20190529: 20190529
  CI_DRM_16707: 43ac07d088f280cfb9eeda0c4caf11b0b7b56e96 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8412: 8412
  Patchwork_150341v1: 43ac07d088f280cfb9eeda0c4caf11b0b7b56e96 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150341v1/index.html

--===============6521351381195302307==
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
<tr><td><b>Series:</b></td><td>dma-fence: Fix sparse warnings due __rcu annotations</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/150341/">https://patchwork.freedesktop.org/series/150341/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150341v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150341v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16707 -&gt; Patchwork_150341v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150341v1/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_150341v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16707/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150341v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16707 -&gt; Patchwork_150341v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16707: 43ac07d088f280cfb9eeda0c4caf11b0b7b56e96 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8412: 8412<br />
  Patchwork_150341v1: 43ac07d088f280cfb9eeda0c4caf11b0b7b56e96 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6521351381195302307==--
