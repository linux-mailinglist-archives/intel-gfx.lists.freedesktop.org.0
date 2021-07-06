Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99A33BDB83
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 18:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DFD66E526;
	Tue,  6 Jul 2021 16:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53D566E524;
 Tue,  6 Jul 2021 16:41:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A9A2A41FB;
 Tue,  6 Jul 2021 16:41:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 06 Jul 2021 16:41:38 -0000
Message-ID: <162558969827.25116.17718632690438998757@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
In-Reply-To: <20210706152541.25021-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_return_proper_DPRX_link_training_result?=
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
Content-Type: multipart/mixed; boundary="===============0433194577=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0433194577==
Content-Type: multipart/alternative;
 boundary="===============8203815569549102637=="

--===============8203815569549102637==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: return proper DPRX link training result
URL   : https://patchwork.freedesktop.org/series/92245/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10306 -> Patchwork_20537
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20537/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20537:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_addfb_basic@too-wide:
    - {fi-tgl-1115g4}:    [PASS][1] -> [DMESG-WARN][2] +88 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10306/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20537/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html

  
Known issues
------------

  Here are the changes found in Patchwork_20537 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1385]: https://gitlab.freedesktop.org/drm/intel/issues/1385
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-kbl-7567u fi-ilk-m540 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10306 -> Patchwork_20537

  CI-20190529: 20190529
  CI_DRM_10306: 134ea1b1bddc580a8a246b05299291c9a7b0c7f5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6129: 687589e76f787d26ee2b539e551a9be06bd41ce3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20537: 20604bc02b52087dd40ce7964d5f67a018940a74 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

20604bc02b52 drm/i915/dp: return proper DPRX link training result

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20537/index.html

--===============8203815569549102637==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: return proper DPRX link training result</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92245/">https://patchwork.freedesktop.org/series/92245/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20537/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20537/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10306 -&gt; Patchwork_20537</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20537/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20537:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_addfb_basic@too-wide:<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10306/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20537/fi-tgl-1115g4/igt@kms_addfb_basic@too-wide.html">DMESG-WARN</a> +88 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20537 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-kbl-7567u fi-ilk-m540 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10306 -&gt; Patchwork_20537</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10306: 134ea1b1bddc580a8a246b05299291c9a7b0c7f5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6129: 687589e76f787d26ee2b539e551a9be06bd41ce3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20537: 20604bc02b52087dd40ce7964d5f67a018940a74 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>20604bc02b52 drm/i915/dp: return proper DPRX link training result</p>

</body>
</html>

--===============8203815569549102637==--

--===============0433194577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0433194577==--
