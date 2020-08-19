Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80AB24A340
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 17:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C19F56E46B;
	Wed, 19 Aug 2020 15:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE94C6E3B0;
 Wed, 19 Aug 2020 15:38:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C85DEA0BD0;
 Wed, 19 Aug 2020 15:38:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Wed, 19 Aug 2020 15:38:22 -0000
Message-ID: <159785150279.23595.15672290332001226012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200818153910.27894-1-sean@poorly.run>
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1241077378=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1241077378==
Content-Type: multipart/alternative;
 boundary="===============7700408884291690175=="

--===============7700408884291690175==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for HDCP 1.4 over MST (rev3)
URL   : https://patchwork.freedesktop.org/series/78749/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8908 -> Patchwork_18375
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/index.html

Known issues
------------

  Here are the changes found in Patchwork_18375 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2] ([i915#1993])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-icl-y/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-FAIL][4] ([i915#1233])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][10] ([i915#62] / [i915#92]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92]) -> [DMESG-WARN][12] ([i915#62] / [i915#92] / [i915#95]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (39 -> 34)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8908 -> Patchwork_18375

  CI-20190529: 20190529
  CI_DRM_8908: 03a59fdcea84502e199bf7fa55fd117dcd161dab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18375: 4e90cfaa37a596889db30ec5df8554617f6876c7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4e90cfaa37a5 drm/i915: Add HDCP 1.4 support for MST connectors
8b877b97b221 drm/i915: Print HDCP version info for all connectors
ee796c747bb0 drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
88ed54f45d4a drm/i915: Add connector to hdcp_shim->check_link()
cbf6864233d8 drm/i915: Plumb port through hdcp init
3c4ef5d3a2fa drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
ec3ad644d55f drm/i915: Use ddi_update_pipe in intel_dp_mst
2b6b206b775b drm/i915: Support DP MST in enc_to_dig_port() function
c9bf9bc90816 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
aae84a3d1e58 drm/i915: Clean up intel_hdcp_disable
f6bb1a3e3379 drm/i915: Protect workers against disappearing connectors
7659c82aec36 drm/i915: Factor out hdcp->value assignments
cd2828c49252 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
f61be32af4f4 drm/i915: Intercept Aksv writes in the aux hooks
f75a1292a09a drm/i915: WARN if HDCP signalling is enabled upon disable
2022ef4a6151 drm/i915: Clear the repeater bit on HDCP disable
75835fa85a82 drm/i915: Fix sha_text population code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/index.html

--===============7700408884291690175==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for HDCP 1.4 over MST (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/78749/">https://patchwork.freedesktop.org/series/78749/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8908 -&gt; Patchwork_18375</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18375 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-icl-y/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-tgl-u2/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1233">i915#1233</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8908/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18375/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8908 -&gt; Patchwork_18375</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8908: 03a59fdcea84502e199bf7fa55fd117dcd161dab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18375: 4e90cfaa37a596889db30ec5df8554617f6876c7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4e90cfaa37a5 drm/i915: Add HDCP 1.4 support for MST connectors<br />
8b877b97b221 drm/i915: Print HDCP version info for all connectors<br />
ee796c747bb0 drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message<br />
88ed54f45d4a drm/i915: Add connector to hdcp_shim-&gt;check_link()<br />
cbf6864233d8 drm/i915: Plumb port through hdcp init<br />
3c4ef5d3a2fa drm/i915: Factor out HDCP shim functions from dp for use by dp_mst<br />
ec3ad644d55f drm/i915: Use ddi_update_pipe in intel_dp_mst<br />
2b6b206b775b drm/i915: Support DP MST in enc_to_dig_port() function<br />
c9bf9bc90816 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it<br />
aae84a3d1e58 drm/i915: Clean up intel_hdcp_disable<br />
f6bb1a3e3379 drm/i915: Protect workers against disappearing connectors<br />
7659c82aec36 drm/i915: Factor out hdcp-&gt;value assignments<br />
cd2828c49252 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling<br />
f61be32af4f4 drm/i915: Intercept Aksv writes in the aux hooks<br />
f75a1292a09a drm/i915: WARN if HDCP signalling is enabled upon disable<br />
2022ef4a6151 drm/i915: Clear the repeater bit on HDCP disable<br />
75835fa85a82 drm/i915: Fix sha_text population code</p>

</body>
</html>

--===============7700408884291690175==--

--===============1241077378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1241077378==--
