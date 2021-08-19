Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D84B3F21D7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 22:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88D66E9DA;
	Thu, 19 Aug 2021 20:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1359D6E9D9;
 Thu, 19 Aug 2021 20:49:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B2A3A47DB;
 Thu, 19 Aug 2021 20:49:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8629041397212844341=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Li, Juston" <juston.li@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Aug 2021 20:49:28 -0000
Message-ID: <162940616801.745.8793546765827449563@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210819184835.1181323-1-juston.li@intel.com>
In-Reply-To: <20210819184835.1181323-1-juston.li@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_HDCP2=2E2_MST_dock_fixes_=28rev7=29?=
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

--===============8629041397212844341==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: HDCP2.2 MST dock fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/93570/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10499 -> Patchwork_20856
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/index.html

Known issues
------------

  Here are the changes found in Patchwork_20856 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][3] ([i915#3718])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [INCOMPLETE][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-rkl-11600:       [SKIP][6] -> [PASS][7] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718


Participating hosts (42 -> 35)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10499 -> Patchwork_20856

  CI-20190529: 20190529
  CI_DRM_10499: 31a08664127ff61b69d9e540ebf153eb7493d2ae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6179: e41ebfddab3031b7765cc7cbcbf73b03c3c46bd1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20856: eed02538bb892fe7264d9986c851963a73d86474 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eed02538bb89 drm/i915/hdcp: reuse rx_info for mst stream type1 capability check
be9b370eeb61 drm/i915/hdcp: read RxInfo once when reading RepeaterAuth_Send_ReceiverID_List
e8e6771ed7e1 drm/i915/hdcp: update cp_irq_count_cached in intel_dp_hdcp2_read_msg()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/index.html

--===============8629041397212844341==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: HDCP2.2 MST dock fixes (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93570/">https://patchwork.freedesktop.org/series/93570/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10499 -&gt; Patchwork_20856</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20856 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10499/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20856/fi-rkl-11600/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 35)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10499 -&gt; Patchwork_20856</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10499: 31a08664127ff61b69d9e540ebf153eb7493d2ae @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6179: e41ebfddab3031b7765cc7cbcbf73b03c3c46bd1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20856: eed02538bb892fe7264d9986c851963a73d86474 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>eed02538bb89 drm/i915/hdcp: reuse rx_info for mst stream type1 capability check<br />
be9b370eeb61 drm/i915/hdcp: read RxInfo once when reading RepeaterAuth_Send_ReceiverID_List<br />
e8e6771ed7e1 drm/i915/hdcp: update cp_irq_count_cached in intel_dp_hdcp2_read_msg()</p>

</body>
</html>

--===============8629041397212844341==--
