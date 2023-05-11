Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DADFB6FE882
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 02:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8F210E57E;
	Thu, 11 May 2023 00:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35EBB10E57E;
 Thu, 11 May 2023 00:22:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F089AADD2;
 Thu, 11 May 2023 00:22:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5597181973684190161=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 11 May 2023 00:22:28 -0000
Message-ID: <168376454816.29010.8353738092629239876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230510205556.312999-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230510205556.312999-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i1915/guc=3A_Fix_probe_injection_CI_failures_after_recent_chan?=
 =?utf-8?q?ge?=
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

--===============5597181973684190161==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i1915/guc: Fix probe injection CI failures after recent change
URL   : https://patchwork.freedesktop.org/series/117600/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13131 -> Patchwork_117600v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/index.html

Participating hosts (40 -> 40)
------------------------------

  Additional (1): bat-mtlp-6 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_117600v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][1] ([i915#6367])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-kbl-7567u:       NOTRUN -> [ABORT][2] ([i915#8299])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-rpls-2:         NOTRUN -> [ABORT][3] ([i915#6687])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][4] -> [FAIL][5] ([i915#7932]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][6] ([i915#3546]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence:
    - fi-kbl-7567u:       [DMESG-FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-kbl-7567u/igt@dmabuf@all-tests@dma_fence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/fi-kbl-7567u/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - fi-kbl-7567u:       [ABORT][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-kbl-7567u/igt@dmabuf@all-tests@sanitycheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/fi-kbl-7567u/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_hangman@error-state-basic:
    - fi-kbl-soraka:      [INCOMPLETE][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][13] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/bat-rpls-2/igt@i915_selftest@live@reset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][15] ([i915#4983] / [i915#7461] / [i915#7953] / [i915#7981] / [i915#8347] / [i915#8384]) -> [ABORT][16] ([i915#4983] / [i915#7461] / [i915#7953] / [i915#8347] / [i915#8384])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/bat-rpls-1/igt@i915_selftest@live@reset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#8299]: https://gitlab.freedesktop.org/drm/intel/issues/8299
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8368]: https://gitlab.freedesktop.org/drm/intel/issues/8368
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384


Build changes
-------------

  * Linux: CI_DRM_13131 -> Patchwork_117600v1

  CI-20190529: 20190529
  CI_DRM_13131: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117600v1: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

19370eacfd02 drm/i1915/guc: Fix probe injection CI failures after recent change

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/index.html

--===============5597181973684190161==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i1915/guc: Fix probe injection CI failur=
es after recent change</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/117600/">https://patchwork.freedesktop.org/series/117600/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_117600v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_117600v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13131 -&gt; Patchwork_117600v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v=
1/index.html</p>
<h2>Participating hosts (40 -&gt; 40)</h2>
<p>Additional (1): bat-mtlp-6 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117600v1 that come from known is=
sues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_117600v1/bat-rpls-2/igt@i915_selftest@live@slpc.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_117600v1/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-=
without-i915.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8299">i915#8299</a>)</p>
</li>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_117600v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-wi=
thout-i915.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6687">i915#6687</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_117600v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp=
-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_117600v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc=
-frame-sequence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>fi-kbl-7567u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-kbl-7567u/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117=
600v1/fi-kbl-7567u/igt@dmabuf@all-tests@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-kbl-7567u/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600=
v1/fi-kbl-7567u/igt@dmabuf@all-tests@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-kbl-soraka:      <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html">INCOMP=
LETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_117600v1/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#746=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7913">i9=
15#7913</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/83=
47">i915#8347</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_117600v1/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a>=
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-rpls-1:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#746=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7953">i9=
15#7953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79=
81">i915#7981</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8347">i915#8347</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8384">i915#8384</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_117600v1/bat-rpls-1/igt@i915_selftest@live@reset.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
983">i915#4983</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7461">i915#7461</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7953">i915#7953</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/8347">i915#8347</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13131 -&gt; Patchwork_117600v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13131: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117600v1: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ git://anon=
git.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>19370eacfd02 drm/i1915/guc: Fix probe injection CI failures after recent=
 change</p>

</body>
</html>

--===============5597181973684190161==--
