Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACkHFkPNGWqNzAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 19:30:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF3C606793
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 19:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1F8112304;
	Fri, 29 May 2026 17:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 374E6112303;
 Fri, 29 May 2026 17:30:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4626619550396827178=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/gvt=3A_validate_?=
 =?utf-8?q?LRCA-derived_guest_context_range?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nikita Zhandarovich" <n.zhandarovich@fintech.ru>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 May 2026 17:30:39 -0000
Message-ID: <178007583921.23779.14778796923257533730@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260529132430.1636603-1-n.zhandarovich@fintech.ru>
In-Reply-To: <20260529132430.1636603-1-n.zhandarovich@fintech.ru>
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[131.252.210.177:from];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.985];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[unbind-rebind:email,01.org:url,lists.freedesktop.org:replyto,gitlab.freedesktop.org:url,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: 5AF3C606793
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============4626619550396827178==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: validate LRCA-derived guest context range
URL   : https://patchwork.freedesktop.org/series/167551/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18587 -> Patchwork_167551v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167551v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_167551v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-WARN][2] ([i915#16057])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18587/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167551v1/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html

  
  [i915#16057]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16057


Build changes
-------------

  * Linux: CI_DRM_18587 -> Patchwork_167551v1

  CI-20190529: 20190529
  CI_DRM_18587: e2e7ab743222926cd40363f52eacdeea74356f44 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8943: 8943
  Patchwork_167551v1: e2e7ab743222926cd40363f52eacdeea74356f44 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167551v1/index.html

--===============4626619550396827178==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: validate LRCA-derived guest context range</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/167551/">https://patchwork.freedesktop.org/series/167551/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167551v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167551v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18587 -&gt; Patchwork_167551v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167551v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_167551v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18587/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167551v1/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16057">i915#16057</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18587 -&gt; Patchwork_167551v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18587: e2e7ab743222926cd40363f52eacdeea74356f44 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8943: 8943<br />
  Patchwork_167551v1: e2e7ab743222926cd40363f52eacdeea74356f44 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4626619550396827178==--
