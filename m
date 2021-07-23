Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C2B3D34F9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 09:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 228596F8C5;
	Fri, 23 Jul 2021 07:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A50CE6F8C5;
 Fri, 23 Jul 2021 07:01:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E5FDA9932;
 Fri, 23 Jul 2021 07:01:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 23 Jul 2021 07:01:53 -0000
Message-ID: <162702371362.3044.9200855691499945273@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723053401.1269829-1-matthew.d.roper@intel.com>
In-Reply-To: <20210723053401.1269829-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQURM?=
 =?utf-8?q?_DDI_translation_buffer_updates_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1563977314=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1563977314==
Content-Type: multipart/alternative;
 boundary="===============5327642157531817973=="

--===============5327642157531817973==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ADL DDI translation buffer updates (rev2)
URL   : https://patchwork.freedesktop.org/series/92921/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10376 -> Patchwork_20688
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20688/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20688:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_timelines:
    - {fi-tgl-dsi}:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10376/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20688/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_20688 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867


Participating hosts (38 -> 35)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10376 -> Patchwork_20688

  CI-20190529: 20190529
  CI_DRM_10376: 299bd09eafa6bf94ac922867ee0c797f8e569d3b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6147: f3994c2cd99a1acfe991a8cc838a387dcb36598a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20688: 43e59f118335f3b00de582e633bb5074319b1c58 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

43e59f118335 drm/i915/adl_p: Add ddi buf translation tables for combo PHY
faad50971bdd drm/i915/adl_s: Update ddi buf translation tables

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20688/index.html

--===============5327642157531817973==
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
<tr><td><b>Series:</b></td><td>ADL DDI translation buffer updates (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92921/">https://patchwork.freedesktop.org/series/92921/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20688/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20688/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10376 -&gt; Patchwork_20688</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20688/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20688:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_timelines:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10376/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20688/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20688 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10376 -&gt; Patchwork_20688</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10376: 299bd09eafa6bf94ac922867ee0c797f8e569d3b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6147: f3994c2cd99a1acfe991a8cc838a387dcb36598a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20688: 43e59f118335f3b00de582e633bb5074319b1c58 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>43e59f118335 drm/i915/adl_p: Add ddi buf translation tables for combo PHY<br />
faad50971bdd drm/i915/adl_s: Update ddi buf translation tables</p>

</body>
</html>

--===============5327642157531817973==--

--===============1563977314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1563977314==--
