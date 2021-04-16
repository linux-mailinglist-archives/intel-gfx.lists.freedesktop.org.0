Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C67362738
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 19:51:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845FB6ECA5;
	Fri, 16 Apr 2021 17:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3273F6ECA5;
 Fri, 16 Apr 2021 17:51:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29355A8832;
 Fri, 16 Apr 2021 17:51:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 16 Apr 2021 17:51:45 -0000
Message-ID: <161859550514.27645.7732765111417140092@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_dbuf_cleanups?=
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
Content-Type: multipart/mixed; boundary="===============1504930864=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1504930864==
Content-Type: multipart/alternative;
 boundary="===============4173484971537313480=="

--===============4173484971537313480==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: dbuf cleanups
URL   : https://patchwork.freedesktop.org/series/89171/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9978 -> Patchwork_19944
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/index.html

Known issues
------------

  Here are the changes found in Patchwork_19944 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [FAIL][1] ([i915#3194]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9978/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6600u:       [DMESG-WARN][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9978/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283


Participating hosts (44 -> 41)
------------------------------

  Missing    (3): fi-icl-y fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9978 -> Patchwork_19944

  CI-20190529: 20190529
  CI_DRM_9978: 732dea807fffac8bed7696a335973c95f810e4b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6067: 14317b92a672d9a20cd04fc3b0c80e2fb12d51d5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19944: bb42f353dfe4f00c428649ce0ac736b6975bd237 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bb42f353dfe4 drm/i915: Say "enable foo" instead of "set foo to enabled"
b571b996abd4 drm/i915: Add enabledisable()
bbfbba08f9aa drm/i915: Polish for_each_dbuf_slice()
407ca0202e11 drm/i915: Use intel_de_rmw() for DBUF_POWER_REQUEST
4bec22613175 drm/i915: Use intel_dbuf_slice_size()
6182af680aea drm/i915: Store dbuf slice mask in device info
3bcf75a562a4 drm/i915: Handle dbuf bypass path allocation earlier
c4e158b6022a drm/i915: Collect dbuf device info into a sub-struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/index.html

--===============4173484971537313480==
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
<tr><td><b>Series:</b></td><td>drm/i915: dbuf cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89171/">https://patchwork.freedesktop.org/series/89171/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9978 -&gt; Patchwork_19944</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19944 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9978/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9978/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19944/fi-skl-6600u/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 41)</h2>
<p>Missing    (3): fi-icl-y fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9978 -&gt; Patchwork_19944</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9978: 732dea807fffac8bed7696a335973c95f810e4b1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6067: 14317b92a672d9a20cd04fc3b0c80e2fb12d51d5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19944: bb42f353dfe4f00c428649ce0ac736b6975bd237 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bb42f353dfe4 drm/i915: Say "enable foo" instead of "set foo to enabled"<br />
b571b996abd4 drm/i915: Add enabledisable()<br />
bbfbba08f9aa drm/i915: Polish for_each_dbuf_slice()<br />
407ca0202e11 drm/i915: Use intel_de_rmw() for DBUF_POWER_REQUEST<br />
4bec22613175 drm/i915: Use intel_dbuf_slice_size()<br />
6182af680aea drm/i915: Store dbuf slice mask in device info<br />
3bcf75a562a4 drm/i915: Handle dbuf bypass path allocation earlier<br />
c4e158b6022a drm/i915: Collect dbuf device info into a sub-struct</p>

</body>
</html>

--===============4173484971537313480==--

--===============1504930864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1504930864==--
