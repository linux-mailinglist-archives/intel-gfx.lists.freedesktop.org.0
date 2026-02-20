Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGaqJS/7l2nT+wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 07:11:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4245164E72
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 07:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B708A10E789;
	Fri, 20 Feb 2026 06:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00BE410E789;
 Fri, 20 Feb 2026 06:11:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1237322108892695802=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_Fixes_and_updates_when_us?=
 =?utf-8?q?ing_AUX_backlight_using_Luminance_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Feb 2026 06:11:54 -0000
Message-ID: <177156791496.269145.13576478610146846798@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
In-Reply-To: <20260220050217.2453681-1-suraj.kandpal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_SPAM(0.00)[0.390];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E4245164E72
X-Rspamd-Action: no action

--===============1237322108892695802==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes and updates when using AUX backlight using Luminance (rev2)
URL   : https://patchwork.freedesktop.org/series/161578/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18008 -> Patchwork_161578v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): bat-dg2-13 fi-glk-j4005 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_161578v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][1] ([i915#15249])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/fi-tgl-1115g4/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_selftest@live@workarounds:
    - bat-twl-2:          [PASS][2] -> [ABORT][3] ([i915#14365]) +1 other test abort
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18008/bat-twl-2/igt@i915_selftest@live@workarounds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/bat-twl-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [PASS][4] -> [FAIL][5] ([i915#14867])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18008/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-tgl-1115g4:      [ABORT][6] ([i915#15711]) -> [PASS][7] +1 other test pass
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18008/fi-tgl-1115g4/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/fi-tgl-1115g4/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][8] ([i915#12061]) -> [PASS][9] +1 other test pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18008/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
  [i915#15249]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249
  [i915#15711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15711


Build changes
-------------

  * Linux: CI_DRM_18008 -> Patchwork_161578v2

  CI-20190529: 20190529
  CI_DRM_18008: 157c1f59af33fb9acf6e0e055e7317b634711120 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8763: 8763
  Patchwork_161578v2: 157c1f59af33fb9acf6e0e055e7317b634711120 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/index.html

--===============1237322108892695802==
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
<tr><td><b>Series:</b></td><td>Fixes and updates when using AUX backlight using Luminance (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/161578/">https://patchwork.freedesktop.org/series/161578/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18008 -&gt; Patchwork_161578v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): bat-dg2-13 fi-glk-j4005 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_161578v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/fi-tgl-1115g4/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15249">i915#15249</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18008/bat-twl-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/bat-twl-2/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18008/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">i915#14867</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18008/fi-tgl-1115g4/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15711">i915#15711</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/fi-tgl-1115g4/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18008/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18008 -&gt; Patchwork_161578v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18008: 157c1f59af33fb9acf6e0e055e7317b634711120 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8763: 8763<br />
  Patchwork_161578v2: 157c1f59af33fb9acf6e0e055e7317b634711120 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1237322108892695802==--
