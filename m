Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E79A9D1D0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 21:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CA810E9B2;
	Fri, 25 Apr 2025 19:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DD8410E9B2;
 Fri, 25 Apr 2025 19:38:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6465001336987015955=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/gsc=3A_mei_inter?=
 =?utf-8?q?rupt_top_half_should_be_in_irq_disabled_context_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Junxiao Chang" <junxiao.chang@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Apr 2025 19:38:19 -0000
Message-ID: <174560989926.12532.16838986759437148514@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250424065609.624457-1-junxiao.chang@intel.com>
In-Reply-To: <20250424065609.624457-1-junxiao.chang@intel.com>
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

--===============6465001336987015955==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gsc: mei interrupt top half should be in irq disabled context (rev4)
URL   : https://patchwork.freedesktop.org/series/148172/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16464 -> Patchwork_148172v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-glk-j4005 

Known issues
------------

  Here are the changes found in Patchwork_148172v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#12904]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
    - fi-bsw-n3050:       [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_selftest@live@gem:
    - bat-arlh-2:         NOTRUN -> [ABORT][5] ([i915#13723])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-arlh-2/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][6] -> [DMESG-FAIL][7] ([i915#12061]) +1 other test dmesg-fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][8] ([i915#12904]) -> [PASS][9] +1 other test pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-apl-1/igt@dmabuf@all-tests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [INCOMPLETE][10] ([i915#14113]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-mtlp-8/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_pm:
    - bat-arlh-2:         [INCOMPLETE][12] ([i915#14046]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-arlh-2/igt@i915_selftest@live@gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-arlh-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-8:         [INCOMPLETE][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-mtlp-8/igt@i915_selftest@live@slpc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-mtlp-8/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [DMESG-FAIL][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-dg2-14/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-8:         [DMESG-FAIL][18] ([i915#12061]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][20] ([i915#14046]) -> [ABORT][21] ([i915#13723])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-arlh-2/igt@i915_selftest@live.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-arlh-2/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
  [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
  [i915#14113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14113


Build changes
-------------

  * Linux: CI_DRM_16464 -> Patchwork_148172v4

  CI-20190529: 20190529
  CI_DRM_16464: 5c29806460a155cbfb176d48bd707cdf17bf259b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8337: a5f980e11a5540c1c079cc6fceb2b2d889b5a460 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_148172v4: 5c29806460a155cbfb176d48bd707cdf17bf259b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/index.html

--===============6465001336987015955==
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
<tr><td><b>Series:</b></td><td>drm/i915/gsc: mei interrupt top half should be in irq disabled context (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148172/">https://patchwork.freedesktop.org/series/148172/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16464 -&gt; Patchwork_148172v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-glk-j4005 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148172v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-arlh-2/igt@i915_selftest@live@gem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-mtlp-8/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14113">i915#14113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-arlh-2/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-arlh-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-mtlp-8/igt@i915_selftest@live@slpc.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-mtlp-8/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16464/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148172v4/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16464 -&gt; Patchwork_148172v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16464: 5c29806460a155cbfb176d48bd707cdf17bf259b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8337: a5f980e11a5540c1c079cc6fceb2b2d889b5a460 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_148172v4: 5c29806460a155cbfb176d48bd707cdf17bf259b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6465001336987015955==--
