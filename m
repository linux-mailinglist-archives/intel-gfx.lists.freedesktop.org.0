Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E77B43425CA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 20:08:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA846EA94;
	Fri, 19 Mar 2021 19:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4699A6EA93;
 Fri, 19 Mar 2021 19:08:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 702D6A73C7;
 Fri, 19 Mar 2021 19:08:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 19 Mar 2021 19:08:40 -0000
Message-ID: <161618092043.8631.320174419404607353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210319175720.5901-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210319175720.5901-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_TPS3/4_on_all_platforms_that_support_them?=
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
Content-Type: multipart/mixed; boundary="===============1546859995=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1546859995==
Content-Type: multipart/alternative;
 boundary="===============3220717749209293853=="

--===============3220717749209293853==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Enable TPS3/4 on all platforms that support them
URL   : https://patchwork.freedesktop.org/series/88186/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9877 -> Patchwork_19815
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19815/index.html

Known issues
------------

  Here are the changes found in Patchwork_19815 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][1] ([i915#3145]) -> [PASS][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19815/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9877 -> Patchwork_19815

  CI-20190529: 20190529
  CI_DRM_9877: c7c8b4a1b289d78a5ebf4381737e7babfdfb0f79 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6039: 8c4a2cda2a92bdd87797969ef299ad7f6e8e993b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19815: 93c5ceb64847fc1a269f895e7c920696d882f739 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

93c5ceb64847 drm/i915: Enable TPS3/4 on all platforms that support them

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19815/index.html

--===============3220717749209293853==
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
<tr><td><b>Series:</b></td><td>drm/i915: Enable TPS3/4 on all platforms that support them</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88186/">https://patchwork.freedesktop.org/series/88186/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19815/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19815/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9877 -&gt; Patchwork_19815</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19815/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19815 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19815/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9877 -&gt; Patchwork_19815</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9877: c7c8b4a1b289d78a5ebf4381737e7babfdfb0f79 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6039: 8c4a2cda2a92bdd87797969ef299ad7f6e8e993b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19815: 93c5ceb64847fc1a269f895e7c920696d882f739 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>93c5ceb64847 drm/i915: Enable TPS3/4 on all platforms that support them</p>

</body>
</html>

--===============3220717749209293853==--

--===============1546859995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1546859995==--
