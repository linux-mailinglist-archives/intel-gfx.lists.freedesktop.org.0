Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF8032BA14
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 20:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02873899D5;
	Wed,  3 Mar 2021 19:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D47B1899D5;
 Wed,  3 Mar 2021 19:02:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE8C6A73C9;
 Wed,  3 Mar 2021 19:02:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 03 Mar 2021 19:02:00 -0000
Message-ID: <161479812081.23597.6364976300620973052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1614682842.git.jani.nikula@intel.com>
In-Reply-To: <cover.1614682842.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_complete_eDP_MSO_support_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0891008480=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0891008480==
Content-Type: multipart/alternative;
 boundary="===============8939701876302544143=="

--===============8939701876302544143==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: complete eDP MSO support (rev2)
URL   : https://patchwork.freedesktop.org/series/87536/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9824 -> Patchwork_19750
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19750 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19750, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19750:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-bsw-nick/igt@gem_wait@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-bsw-nick/igt@gem_wait@busy@all.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_19750 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][5] -> [TIMEOUT][6] ([i915#2502])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [PASS][7] -> [TIMEOUT][8] ([i915#3145])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][9] -> [INCOMPLETE][10] ([i915#2940])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][11] ([i915#1372]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9824 -> Patchwork_19750

  CI-20190529: 20190529
  CI_DRM_9824: 6b21aa2a30637b56282297d09a9fbfd1954cc7b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6020: 8382d9e87bba39ecc6fa879b2491e28c7fb2e3c7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19750: 4d64ccac62fcb346a2c95f3d4107bda594aab152 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4d64ccac62fc drm/i915/edp: enable eDP MSO during link training
afcc9be941d9 drm/i915/edp: modify fixed and downclock modes for MSO
0c87c026257f drm/i915/mso: add splitter state check
c22551e7f141 drm/i915/mso: add splitter state readout for platforms that support it

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/index.html

--===============8939701876302544143==
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
<tr><td><b>Series:</b></td><td>drm/i915: complete eDP MSO support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87536/">https://patchwork.freedesktop.org/series/87536/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9824 -&gt; Patchwork_19750</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19750 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19750, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19750:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_wait@busy@all:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19750 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@dp-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9824/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19750/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9824 -&gt; Patchwork_19750</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9824: 6b21aa2a30637b56282297d09a9fbfd1954cc7b0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6020: 8382d9e87bba39ecc6fa879b2491e28c7fb2e3c7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19750: 4d64ccac62fcb346a2c95f3d4107bda594aab152 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4d64ccac62fc drm/i915/edp: enable eDP MSO during link training<br />
afcc9be941d9 drm/i915/edp: modify fixed and downclock modes for MSO<br />
0c87c026257f drm/i915/mso: add splitter state check<br />
c22551e7f141 drm/i915/mso: add splitter state readout for platforms that support it</p>

</body>
</html>

--===============8939701876302544143==--

--===============0891008480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0891008480==--
