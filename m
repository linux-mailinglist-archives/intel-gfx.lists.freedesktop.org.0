Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997F625DD63
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 17:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC95A6EC32;
	Fri,  4 Sep 2020 15:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A38796EC32;
 Fri,  4 Sep 2020 15:25:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C9BFA47E9;
 Fri,  4 Sep 2020 15:25:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 04 Sep 2020 15:25:51 -0000
Message-ID: <159923315162.8519.15708651523657449132@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fmanaged=2C_leftovers?=
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
Content-Type: multipart/mixed; boundary="===============1490120698=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1490120698==
Content-Type: multipart/alternative;
 boundary="===============0806858817743380601=="

--===============0806858817743380601==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm_managed, leftovers
URL   : https://patchwork.freedesktop.org/series/81371/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8965 -> Patchwork_18445
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/index.html

Known issues
------------

  Here are the changes found in Patchwork_18445 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-ilk-650:         [PASS][1] -> [DMESG-WARN][2] ([i915#164])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - {fi-kbl-7560u}:     [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][11] ([fdo#109271]) -> [DMESG-WARN][12] ([i915#2203])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203


Participating hosts (36 -> 33)
------------------------------

  Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_8965 -> Patchwork_18445

  CI-20190529: 20190529
  CI_DRM_8965: f4cbf17fababf80c1c67c6f1687fb8bf7e00a263 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5778: 9a9db93fd2f2f59eb37b79d4b9a623067a945bac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18445: 686a533fcde67cd302fe9f4a686468bfdc219704 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

686a533fcde6 drm/arc: Move to drm/tiny
e22fc3f4bb1b drm/arc: Initialize sim connector before display pipe
a561f0af936b drm/arc: Inline remaining files
8b0c4a52a621 drm/arc: Inline arcpgu_drm_hdmi_init
5e3a85368a5d drm/arc: Inline arcpgu_crtc.c
5bb83c222569 drm/arc: Drop crtc check in arc_pgu_update
2431d7d612ac drm/arc: Convert to drm_simple_kms_pipe_helper
d11e78dcb76b drm/arc: Align with simple pipe helpers
5c8bfba805ad drm/arc: Use drmm_mode_config_cleanup
ba16b70d40cc drm/arc: Drop surplus connector registration
a17149e448e8 drm/arc: Embedd a drm_connector for sim case
be543cb2845f drm/arc: Embedded a drm_simple_display_pipe
fe06aeaae2bd drm/arc: Delete arcpgu_priv->fb
746009dbe330 drm/arc: Stop using drm_device->dev_private
c15b464eaef1 drm/arc: Switch to devm_drm_dev_alloc
9fa6eafa5dc7 drm/dev: Remove drm_dev_init
124bff980d17 drm/i915/selftests: align more to real device lifetimes
796ee493a8a3 drm/i915/selftest: Create mock_destroy_device
d837a22748b5 drm/xlnx: Use devm_drm_dev_alloc
07047c4d2081 drm/vkms: Use devm_drm_dev_alloc
86684c96f0be drm/vgem: Use devm_drm_dev_alloc
987c9338ca7b drm/aspeed: Use managed drmm_mode_config_cleanup
26f00c197367 drm/armada: Don't use drm_device->dev_private
7e79337308df drm/armada: Use devm_drm_dev_alloc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/index.html

--===============0806858817743380601==
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
<tr><td><b>Series:</b></td><td>drm_managed, leftovers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81371/">https://patchwork.freedesktop.org/series/81371/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8965 -&gt; Patchwork_18445</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18445 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8965/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18445/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (36 -&gt; 33)</h2>
<p>Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8965 -&gt; Patchwork_18445</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8965: f4cbf17fababf80c1c67c6f1687fb8bf7e00a263 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5778: 9a9db93fd2f2f59eb37b79d4b9a623067a945bac @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18445: 686a533fcde67cd302fe9f4a686468bfdc219704 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>686a533fcde6 drm/arc: Move to drm/tiny<br />
e22fc3f4bb1b drm/arc: Initialize sim connector before display pipe<br />
a561f0af936b drm/arc: Inline remaining files<br />
8b0c4a52a621 drm/arc: Inline arcpgu_drm_hdmi_init<br />
5e3a85368a5d drm/arc: Inline arcpgu_crtc.c<br />
5bb83c222569 drm/arc: Drop crtc check in arc_pgu_update<br />
2431d7d612ac drm/arc: Convert to drm_simple_kms_pipe_helper<br />
d11e78dcb76b drm/arc: Align with simple pipe helpers<br />
5c8bfba805ad drm/arc: Use drmm_mode_config_cleanup<br />
ba16b70d40cc drm/arc: Drop surplus connector registration<br />
a17149e448e8 drm/arc: Embedd a drm_connector for sim case<br />
be543cb2845f drm/arc: Embedded a drm_simple_display_pipe<br />
fe06aeaae2bd drm/arc: Delete arcpgu_priv-&gt;fb<br />
746009dbe330 drm/arc: Stop using drm_device-&gt;dev_private<br />
c15b464eaef1 drm/arc: Switch to devm_drm_dev_alloc<br />
9fa6eafa5dc7 drm/dev: Remove drm_dev_init<br />
124bff980d17 drm/i915/selftests: align more to real device lifetimes<br />
796ee493a8a3 drm/i915/selftest: Create mock_destroy_device<br />
d837a22748b5 drm/xlnx: Use devm_drm_dev_alloc<br />
07047c4d2081 drm/vkms: Use devm_drm_dev_alloc<br />
86684c96f0be drm/vgem: Use devm_drm_dev_alloc<br />
987c9338ca7b drm/aspeed: Use managed drmm_mode_config_cleanup<br />
26f00c197367 drm/armada: Don't use drm_device-&gt;dev_private<br />
7e79337308df drm/armada: Use devm_drm_dev_alloc</p>

</body>
</html>

--===============0806858817743380601==--

--===============1490120698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1490120698==--
