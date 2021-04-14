Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB7935F0DD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733EE6E909;
	Wed, 14 Apr 2021 09:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 822AB6E909;
 Wed, 14 Apr 2021 09:30:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6C05AAA91;
 Wed, 14 Apr 2021 09:30:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Wed, 14 Apr 2021 09:30:06 -0000
Message-ID: <161839260667.4305.11437251502342369207@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210414063011.996773-1-kai.heng.feng@canonical.com>
In-Reply-To: <20210414063011.996773-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Use_slow_and_wide_link_training_for_DPCP_rev_=3C_1?=
 =?utf-8?q?=2E4?=
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
Content-Type: multipart/mixed; boundary="===============0318503604=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0318503604==
Content-Type: multipart/alternative;
 boundary="===============5064196714940913732=="

--===============5064196714940913732==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Use slow and wide link training for DPCP rev < 1.4
URL   : https://patchwork.freedesktop.org/series/89055/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9967 -> Patchwork_19932
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19932/index.html

Known issues
------------

  Here are the changes found in Patchwork_19932 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][1] ([i915#3303]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9967/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19932/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-icl-y fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9967 -> Patchwork_19932

  CI-20190529: 20190529
  CI_DRM_9967: e9d6f14cc871b197c41abc1e781da8e364e27c21 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6064: 48d89e2c65c54883b0776930a884e6d3bcefb45b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19932: 127991a6808ba767cc91bb503979c07b5b2b5bc7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

127991a6808b drm/i915/dp: Use slow and wide link training for DPCP rev < 1.4

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19932/index.html

--===============5064196714940913732==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Use slow and wide link training for DPCP rev &lt; 1.4</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89055/">https://patchwork.freedesktop.org/series/89055/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19932/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19932/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9967 -&gt; Patchwork_19932</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19932/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19932 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9967/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19932/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-icl-y fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9967 -&gt; Patchwork_19932</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9967: e9d6f14cc871b197c41abc1e781da8e364e27c21 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6064: 48d89e2c65c54883b0776930a884e6d3bcefb45b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19932: 127991a6808ba767cc91bb503979c07b5b2b5bc7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>127991a6808b drm/i915/dp: Use slow and wide link training for DPCP rev &lt; 1.4</p>

</body>
</html>

--===============5064196714940913732==--

--===============0318503604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0318503604==--
