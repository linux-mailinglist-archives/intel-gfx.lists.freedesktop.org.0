Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMJWHMAW+mksJQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 18:11:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4114D0F70
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 18:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4511010E468;
	Tue,  5 May 2026 16:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5ab824fced77 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCDFB10E449;
 Tue,  5 May 2026 16:11:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0980944957073862569=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Fix_VSC_dy?=
 =?utf-8?q?namic_range_signaling_for_RGB_formats_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 May 2026 16:11:41 -0000
Message-ID: <177799750176.38316.8088222535413400849@5ab824fced77>
X-Patchwork-Hint: ignore
References: <20260505090920.2479112-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260505090920.2479112-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: CC4114D0F70
X-Rspamd-Action: no action
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
	NEURAL_HAM(-0.00)[-0.225];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,live:email,gitlab.freedesktop.org:url,01.org:url]

--===============0980944957073862569==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Fix VSC dynamic range signaling for RGB formats (rev3)
URL   : https://patchwork.freedesktop.org/series/164780/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18417 -> Patchwork_164780v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): bat-dg2-13 fi-cfl-guc fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_164780v3 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][1] ([i915#12061]) -> [PASS][2] +1 other test pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18417/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][3] ([i915#12061]) -> [PASS][4] +1 other test pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18417/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061


Build changes
-------------

  * Linux: CI_DRM_18417 -> Patchwork_164780v3

  CI-20190529: 20190529
  CI_DRM_18417: 835de80ce9b34b618442ba91483170201b50b553 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8886: 0c1d7a87341d565ed0dfb6ae37e6aa851fede9cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_164780v3: 835de80ce9b34b618442ba91483170201b50b553 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/index.html

--===============0980944957073862569==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Fix VSC dynamic range signaling for RGB formats (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/164780/">https://patchwork.freedesktop.org/series/164780/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18417 -&gt; Patchwork_164780v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): bat-dg2-13 fi-cfl-guc fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_164780v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18417/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18417/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164780v3/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18417 -&gt; Patchwork_164780v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18417: 835de80ce9b34b618442ba91483170201b50b553 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8886: 0c1d7a87341d565ed0dfb6ae37e6aa851fede9cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_164780v3: 835de80ce9b34b618442ba91483170201b50b553 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0980944957073862569==--
