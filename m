Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F76295DB1
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 13:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E53C36E0D4;
	Thu, 22 Oct 2020 11:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B4EC6E0D4;
 Thu, 22 Oct 2020 11:46:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73537A47E1;
 Thu, 22 Oct 2020 11:46:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 22 Oct 2020 11:46:02 -0000
Message-ID: <160336716246.7804.12457274582784338757@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201022085552.18353-1-anshuman.gupta@intel.com>
In-Reply-To: <20201022085552.18353-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_DP_MST_Support_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============1486840695=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1486840695==
Content-Type: multipart/alternative;
 boundary="===============7685113062636964060=="

--===============7685113062636964060==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 DP MST Support (rev5)
URL   : https://patchwork.freedesktop.org/series/81538/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9182 -> Patchwork_18764
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/index.html

Known issues
------------

  Here are the changes found in Patchwork_18764 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9182/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][3] ([i915#1982]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9182/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Participating hosts (45 -> 39)
------------------------------

  Additional (1): fi-apl-guc 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9182 -> Patchwork_18764

  CI-20190529: 20190529
  CI_DRM_9182: 5d76506480cdfef424b52f63a0d21093b2c78dc4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18764: 3f09be950b9e6adb84ba3105116cf84549c743dc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3f09be950b9e drm/i915/hdcp: Enable HDCP 2.2 MST support
7286d357f37e drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
844bace9a8bb drm/i915/hdcp: Add HDCP 2.2 stream register
fe282dce943b drm/i915/hdcp: Pass connector to check_2_2_link
14aea2bd217e drm/i915/hdcp: MST streams support in hdcp port_data
c62cbbaece50 drm/hdcp: Max MST content streams
587b272daea6 misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len
5524d56ad1d9 drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
d1d2ae46766e drm/i915/hdcp: Pass dig_port to intel_hdcp_init
c563af8ef24a drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
a3c2628d301d drm/i915/hdcp: HDCP stream encryption support
cd7dfdf4d705 drm/i915/hdcp: Move HDCP enc status timeout to header
ce083eb6afcb drm/i915/hdcp: DP MST transcoder for link and stream
e6ea1e5d0a69 drm/i915/hotplug: Handle CP_IRQ for DP-MST
ed3fec051c2e drm/i915/hdcp: Get conn while content_type changed
3c203819df03 drm/i915/hdcp: Update CP property in update_pipe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/index.html

--===============7685113062636964060==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 DP MST Support (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81538/">https://patchwork.freedesktop.org/series/81538/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9182 -&gt; Patchwork_18764</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18764 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9182/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9182/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18764/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Additional (1): fi-apl-guc <br />
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9182 -&gt; Patchwork_18764</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9182: 5d76506480cdfef424b52f63a0d21093b2c78dc4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18764: 3f09be950b9e6adb84ba3105116cf84549c743dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3f09be950b9e drm/i915/hdcp: Enable HDCP 2.2 MST support<br />
7286d357f37e drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks<br />
844bace9a8bb drm/i915/hdcp: Add HDCP 2.2 stream register<br />
fe282dce943b drm/i915/hdcp: Pass connector to check_2_2_link<br />
14aea2bd217e drm/i915/hdcp: MST streams support in hdcp port_data<br />
c62cbbaece50 drm/hdcp: Max MST content streams<br />
587b272daea6 misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len<br />
5524d56ad1d9 drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port<br />
d1d2ae46766e drm/i915/hdcp: Pass dig_port to intel_hdcp_init<br />
c563af8ef24a drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support<br />
a3c2628d301d drm/i915/hdcp: HDCP stream encryption support<br />
cd7dfdf4d705 drm/i915/hdcp: Move HDCP enc status timeout to header<br />
ce083eb6afcb drm/i915/hdcp: DP MST transcoder for link and stream<br />
e6ea1e5d0a69 drm/i915/hotplug: Handle CP_IRQ for DP-MST<br />
ed3fec051c2e drm/i915/hdcp: Get conn while content_type changed<br />
3c203819df03 drm/i915/hdcp: Update CP property in update_pipe</p>

</body>
</html>

--===============7685113062636964060==--

--===============1486840695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1486840695==--
