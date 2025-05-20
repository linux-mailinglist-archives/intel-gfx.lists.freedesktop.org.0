Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CA3ABE03A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 18:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF3110E54E;
	Tue, 20 May 2025 16:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E6C10E54E;
 Tue, 20 May 2025 16:14:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6040555722708232021=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Fix_the_en?=
 =?utf-8?q?abling/disabling_of_audio_SDP_splitting?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 20 May 2025 16:14:37 -0000
Message-ID: <174775767700.5472.4922882959322765141@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250520142219.1688401-1-imre.deak@intel.com>
In-Reply-To: <20250520142219.1688401-1-imre.deak@intel.com>
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

--===============6040555722708232021==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Fix the enabling/disabling of audio SDP splitting
URL   : https://patchwork.freedesktop.org/series/149255/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16572 -> Patchwork_149255v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_149255v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-rpls-4:         [PASS][1] -> [DMESG-WARN][2] ([i915#13400])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@fbdev@eof:
    - bat-adlp-6:         [PASS][5] -> [DMESG-WARN][6] ([i915#13890])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-adlp-6/igt@fbdev@eof.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-adlp-6/igt@fbdev@eof.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][7] -> [ABORT][8] ([i915#13723] / [i915#13949])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-arlh-3/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-arlh-3/igt@i915_selftest@live.html
    - bat-arlh-2:         [PASS][9] -> [INCOMPLETE][10] ([i915#14046]) +1 other test incomplete
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-arlh-2/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-arlh-3:         [PASS][11] -> [ABORT][12] ([i915#13949])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][13] -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         [PASS][15] -> [DMESG-FAIL][16] ([i915#12061]) +1 other test dmesg-fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - bat-adlp-6:         [DMESG-WARN][17] ([i915#13890]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-adlp-6/igt@core_auth@basic-auth.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-adlp-6/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][19] ([i915#12061]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-mtlp-8/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-mtlp-8/igt@i915_selftest@live.html
    - bat-dg2-8:          [DMESG-FAIL][21] ([i915#12061]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-dg2-8/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-dg2-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-twl-2:          [INCOMPLETE][23] ([i915#14096]) -> [PASS][24] +1 other test pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-twl-2/igt@i915_selftest@live@guc_multi_lrc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-twl-2/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [DMESG-FAIL][25] ([i915#12061]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#13949]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13949
  [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
  [i915#14096]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096


Build changes
-------------

  * Linux: CI_DRM_16572 -> Patchwork_149255v1

  CI-20190529: 20190529
  CI_DRM_16572: 45c2c8c74ab88c8fb741ea8349b051f5aec87320 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8370: 8370
  Patchwork_149255v1: 45c2c8c74ab88c8fb741ea8349b051f5aec87320 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/index.html

--===============6040555722708232021==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Fix the enabling/disabling of audio SDP splitting</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/149255/">https://patchwork.freedesktop.org/series/149255/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16572 -&gt; Patchwork_149255v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_149255v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>)</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-adlp-6/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-adlp-6/igt@fbdev@eof.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13949">i915#13949</a>)</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-arlh-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13949">i915#13949</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-adlp-6/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-adlp-6/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-twl-2/igt@i915_selftest@live@guc_multi_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096">i915#14096</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-twl-2/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16572/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149255v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16572 -&gt; Patchwork_149255v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16572: 45c2c8c74ab88c8fb741ea8349b051f5aec87320 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8370: 8370<br />
  Patchwork_149255v1: 45c2c8c74ab88c8fb741ea8349b051f5aec87320 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6040555722708232021==--
