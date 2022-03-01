Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBD14C836D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 06:42:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3289810EC3B;
	Tue,  1 Mar 2022 05:42:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A02010EC3A;
 Tue,  1 Mar 2022 05:42:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14A41A7DFC;
 Tue,  1 Mar 2022 05:42:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4455754549031562856=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 01 Mar 2022 05:42:25 -0000
Message-ID: <164611334504.8602.14574412460695781127@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220301050141.12203-1-shawn.c.lee@intel.com>
In-Reply-To: <20220301050141.12203-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_more_TMDS_clock_rate_supported_by_HDMI_driver?=
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

--===============4455754549031562856==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: add more TMDS clock rate supported by HDMI driver
URL   : https://patchwork.freedesktop.org/series/100866/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11300 -> Patchwork_22444
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/index.html

Participating hosts (46 -> 32)
------------------------------

  Missing    (14): fi-kbl-soraka fi-bdw-samus shard-tglu bat-dg1-6 bat-dg1-5 shard-rkl bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-pnv-d510 bat-rpls-2 shard-dg1 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_22444 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-multi-fence:
    - fi-blb-e6850:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-blb-e6850/igt@amdgpu/amd_basic@cs-multi-fence.html

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#4983])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-dsi:         [DMESG-FAIL][5] ([i915#541]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][7] ([i915#3921]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][9] ([i915#5026]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#165]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-cfl-8109u/igt@kms_force_connector_basic@force-connector-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-cfl-8109u/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][13] ([i915#165] / [i915#295]) -> [PASS][14] +13 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11300 -> Patchwork_22444

  CI-20190529: 20190529
  CI_DRM_11300: 10eb9bc8729d3da3fe8f53c8e5b70b8a9a52b6e0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6361: 2372a4beb6a33c5f0799a4a8ccbb93794f52dbca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22444: e9b91b340e439b49a72b562c900b0b99eae24f2a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e9b91b340e43 drm/i915: add more TMDS clock rate supported by HDMI driver

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/index.html

--===============4455754549031562856==
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
<tr><td><b>Series:</b></td><td>drm/i915: add more TMDS clock rate supported by HDMI driver</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100866/">https://patchwork.freedesktop.org/series/100866/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11300 -&gt; Patchwork_22444</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/index.html</p>
<h2>Participating hosts (46 -&gt; 32)</h2>
<p>Missing    (14): fi-kbl-soraka fi-bdw-samus shard-tglu bat-dg1-6 bat-dg1-5 shard-rkl bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-pnv-d510 bat-rpls-2 shard-dg1 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22444 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-multi-fence:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-blb-e6850/igt@amdgpu/amd_basic@cs-multi-fence.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-cfl-8109u/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-cfl-8109u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11300/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22444/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +13 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11300 -&gt; Patchwork_22444</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11300: 10eb9bc8729d3da3fe8f53c8e5b70b8a9a52b6e0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6361: 2372a4beb6a33c5f0799a4a8ccbb93794f52dbca @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22444: e9b91b340e439b49a72b562c900b0b99eae24f2a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e9b91b340e43 drm/i915: add more TMDS clock rate supported by HDMI driver</p>

</body>
</html>

--===============4455754549031562856==--
