Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5l90O3yVPWq34QgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 22:54:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366356C8A18
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 22:54:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3E810F364;
	Thu, 25 Jun 2026 20:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D54110E29C;
 Thu, 25 Jun 2026 20:54:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7421481889585016781=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/hdcp=3A_check_st?=
 =?utf-8?q?reams=5B=5D_bounds_before_overflow?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jun 2026 20:54:17 -0000
Message-ID: <178242085763.118588.5994158104858548508@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260625170304.1104723-1-jani.nikula@intel.com>
In-Reply-To: <20260625170304.1104723-1-jani.nikula@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [5.89 / 15.00];
	URL_MULTIPLE_AT_SIGNS(6.00)[3];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,emeril.freedesktop.org:from_mime,01.org:url,6beec6c84f66:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 366356C8A18

--===============7421481889585016781==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: check streams[] bounds before overflow
URL   : https://patchwork.freedesktop.org/series/169211/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18722 -> Patchwork_169211v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_169211v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][1] ([i915#15931])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/fi-tgl-1115g4/igt@dmabuf@all-tests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-tgl-1115g4:      [ABORT][2] ([i915#16485]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18722/fi-tgl-1115g4/igt@i915_selftest@live.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/fi-tgl-1115g4/igt@i915_selftest@live.html
    - bat-adlp-6:         [DMESG-WARN][4] ([i915#16404]) -> [PASS][5] +1 other test pass
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18722/bat-adlp-6/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-1115g4:      [ABORT][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18722/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html

  
  [i915#15931]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931
  [i915#16404]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16404
  [i915#16485]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16485


Build changes
-------------

  * Linux: CI_DRM_18722 -> Patchwork_169211v1

  CI-20190529: 20190529
  CI_DRM_18722: 18cd20781ea0de17268c35faf4a2b53b593915c2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8986: 8986
  Patchwork_169211v1: 18cd20781ea0de17268c35faf4a2b53b593915c2 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/index.html

--===============7421481889585016781==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: check streams[] bounds before overflow</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/169211/">https://patchwork.freedesktop.org/series/169211/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18722 -&gt; Patchwork_169211v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_169211v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@dmabuf@all-tests:<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/fi-tgl-1115g4/igt@dmabuf@all-tests.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931">i915#15931</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18722/fi-tgl-1115g4/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16485">i915#16485</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/fi-tgl-1115g4/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18722/bat-adlp-6/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16404">i915#16404</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18722/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169211v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18722 -&gt; Patchwork_169211v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18722: 18cd20781ea0de17268c35faf4a2b53b593915c2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8986: 8986<br />
  Patchwork_169211v1: 18cd20781ea0de17268c35faf4a2b53b593915c2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7421481889585016781==--
