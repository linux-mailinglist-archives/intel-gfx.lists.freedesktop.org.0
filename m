Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F36CA5A3701
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Aug 2022 12:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5162910E66D;
	Sat, 27 Aug 2022 10:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74C0410E66D;
 Sat, 27 Aug 2022 10:29:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C485A7E03;
 Sat, 27 Aug 2022 10:29:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7796855758000045487=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
Date: Sat, 27 Aug 2022 10:29:03 -0000
Message-ID: <166159614341.5229.16718878551919171330@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220827171037.30297-1-kevin.tian@intel.com>
In-Reply-To: <20220827171037.30297-1-kevin.tian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVGlk?=
 =?utf-8?q?y_up_vfio=5Fdevice_life_cycle?=
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

--===============7796855758000045487==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Tidy up vfio_device life cycle
URL   : https://patchwork.freedesktop.org/series/107838/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12035 -> Patchwork_107838v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/index.html

Participating hosts (42 -> 35)
------------------------------

  Missing    (7): fi-hsw-4200u bat-dg1-5 bat-adlp-4 fi-ctg-p8600 bat-rplp-1 bat-dg2-10 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_107838v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-FAIL][2] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4] ([i915#4785])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-bsw-nick:        NOTRUN -> [SKIP][6] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#4312] / [i915#5594] / [i915#6246])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#2403] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][9] ([i915#5847]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][11] ([i915#6257] / [i915#6380]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/bat-rpls-1/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#5847]: https://gitlab.freedesktop.org/drm/intel/issues/5847
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12035 -> Patchwork_107838v1

  CI-20190529: 20190529
  CI_DRM_12035: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107838v1: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

78fb2d615054 vfio: Add struct device to vfio_device
858813ef322b vfio: Rename vfio_device_put() and vfio_device_try_get()
4294fc587fbe vfio/ccw: Use the new device life cycle helpers
4924b6942b99 vfio/amba: Use the new device life cycle helpers
67881d9c60dc vfio/platform: Use the new device life cycle helpers
13642eb06994 vfio/fsl-mc: Use the new device life cycle helpers
8fbecf180aaf vfio/ap: Use the new device life cycle helpers
a79738106fd3 drm/i915/gvt: Use the new device life cycle helpers
bd921692cef3 vfio/mbochs: Use the new device life cycle helpers
8d3ca95661f5 vfio/mtty: Use the new device life cycle helpers
92c20723fbc8 vfio/mdpy: Use the new device life cycle helpers
804a7ea21297 vfio/hisi_acc: Use the new device life cycle helpers
1b4fa96659e7 vfio/mlx5: Use the new device life cycle helpers
474eadea048f vfio/pci: Use the new device life cycle helpers
31a013fa0dda vfio: Add helpers for unifying vfio_device life cycle

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/index.html

--===============7796855758000045487==
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
<tr><td><b>Series:</b></td><td>Tidy up vfio_device life cycle</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107838/">https://patchwork.freedesktop.org/series/107838/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12035 -&gt; Patchwork_107838v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/index.html</p>
<h2>Participating hosts (42 -&gt; 35)</h2>
<p>Missing    (7): fi-hsw-4200u bat-dg1-5 bat-adlp-4 fi-ctg-p8600 bat-rplp-1 bat-dg2-10 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107838v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5847">i915#5847</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6380">i915#6380</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107838v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12035 -&gt; Patchwork_107838v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12035: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107838v1: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>78fb2d615054 vfio: Add struct device to vfio_device<br />
858813ef322b vfio: Rename vfio_device_put() and vfio_device_try_get()<br />
4294fc587fbe vfio/ccw: Use the new device life cycle helpers<br />
4924b6942b99 vfio/amba: Use the new device life cycle helpers<br />
67881d9c60dc vfio/platform: Use the new device life cycle helpers<br />
13642eb06994 vfio/fsl-mc: Use the new device life cycle helpers<br />
8fbecf180aaf vfio/ap: Use the new device life cycle helpers<br />
a79738106fd3 drm/i915/gvt: Use the new device life cycle helpers<br />
bd921692cef3 vfio/mbochs: Use the new device life cycle helpers<br />
8d3ca95661f5 vfio/mtty: Use the new device life cycle helpers<br />
92c20723fbc8 vfio/mdpy: Use the new device life cycle helpers<br />
804a7ea21297 vfio/hisi_acc: Use the new device life cycle helpers<br />
1b4fa96659e7 vfio/mlx5: Use the new device life cycle helpers<br />
474eadea048f vfio/pci: Use the new device life cycle helpers<br />
31a013fa0dda vfio: Add helpers for unifying vfio_device life cycle</p>

</body>
</html>

--===============7796855758000045487==--
