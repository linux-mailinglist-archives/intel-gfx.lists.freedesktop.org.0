Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFF75A9267
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 10:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B627310E653;
	Thu,  1 Sep 2022 08:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9549B10E653;
 Thu,  1 Sep 2022 08:51:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CFCEAAA91;
 Thu,  1 Sep 2022 08:51:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8405805084050567503=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Date: Thu, 01 Sep 2022 08:51:36 -0000
Message-ID: <166202229654.11922.15463792528996841075@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220901143747.32858-1-kevin.tian@intel.com>
In-Reply-To: <20220901143747.32858-1-kevin.tian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVGlk?=
 =?utf-8?q?y_up_vfio=5Fdevice_life_cycle_=28rev4=29?=
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

--===============8405805084050567503==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Tidy up vfio_device life cycle (rev4)
URL   : https://patchwork.freedesktop.org/series/107838/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12058 -> Patchwork_107838v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/index.html

Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-adl-ddr5 bat-dg2-8 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_107838v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-j4005:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/fi-glk-j4005/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-glk-j4005/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][3] -> [DMESG-FAIL][4] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][5] -> [INCOMPLETE][6] ([i915#5982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#2403] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][8] ([i915#4312] / [i915#5257] / [i915#6599])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-glk-j4005/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][9] ([i915#2867]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][11] ([i915#6298]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12058 -> Patchwork_107838v4

  CI-20190529: 20190529
  CI_DRM_12058: 2ef8278465adc6572e0d22dffbaa332d56b4b40c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107838v4: 2ef8278465adc6572e0d22dffbaa332d56b4b40c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

809c834dc7e5 vfio: Add struct device to vfio_device
678dca794c6e vfio: Rename vfio_device_put() and vfio_device_try_get()
a0cef4d2149e vfio/ccw: Use the new device life cycle helpers
15fcd3bbc01c vfio/amba: Use the new device life cycle helpers
a75c8349bfa8 vfio/platform: Use the new device life cycle helpers
32da6bf3d769 vfio/fsl-mc: Use the new device life cycle helpers
47588d207c14 vfio/ap: Use the new device life cycle helpers
4b3a8721e893 drm/i915/gvt: Use the new device life cycle helpers
3e0ca39817e6 vfio/mbochs: Use the new device life cycle helpers
5c53d0b2aa06 vfio/mtty: Use the new device life cycle helpers
489c75df9424 vfio/mdpy: Use the new device life cycle helpers
70ba86bada57 vfio/hisi_acc: Use the new device life cycle helpers
6aba98fcfcfc vfio/mlx5: Use the new device life cycle helpers
0e24faf7c948 vfio/pci: Use the new device life cycle helpers
7546a8b9da28 vfio: Add helpers for unifying vfio_device life cycle

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/index.html

--===============8405805084050567503==
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
<tr><td><b>Series:</b></td><td>Tidy up vfio_device life cycle (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107838/">https://patchwork.freedesktop.org/series/107838/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12058 -&gt; Patchwork_107838v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-adl-ddr5 bat-dg2-8 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107838v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/fi-glk-j4005/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-glk-j4005/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12058/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12058 -&gt; Patchwork_107838v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12058: 2ef8278465adc6572e0d22dffbaa332d56b4b40c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107838v4: 2ef8278465adc6572e0d22dffbaa332d56b4b40c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>809c834dc7e5 vfio: Add struct device to vfio_device<br />
678dca794c6e vfio: Rename vfio_device_put() and vfio_device_try_get()<br />
a0cef4d2149e vfio/ccw: Use the new device life cycle helpers<br />
15fcd3bbc01c vfio/amba: Use the new device life cycle helpers<br />
a75c8349bfa8 vfio/platform: Use the new device life cycle helpers<br />
32da6bf3d769 vfio/fsl-mc: Use the new device life cycle helpers<br />
47588d207c14 vfio/ap: Use the new device life cycle helpers<br />
4b3a8721e893 drm/i915/gvt: Use the new device life cycle helpers<br />
3e0ca39817e6 vfio/mbochs: Use the new device life cycle helpers<br />
5c53d0b2aa06 vfio/mtty: Use the new device life cycle helpers<br />
489c75df9424 vfio/mdpy: Use the new device life cycle helpers<br />
70ba86bada57 vfio/hisi_acc: Use the new device life cycle helpers<br />
6aba98fcfcfc vfio/mlx5: Use the new device life cycle helpers<br />
0e24faf7c948 vfio/pci: Use the new device life cycle helpers<br />
7546a8b9da28 vfio: Add helpers for unifying vfio_device life cycle</p>

</body>
</html>

--===============8405805084050567503==--
