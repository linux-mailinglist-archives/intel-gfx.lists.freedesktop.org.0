Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKVNOU1he2kdEQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 14:31:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD81B0680
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 14:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69BE810E869;
	Thu, 29 Jan 2026 13:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A5210E05A;
 Thu, 29 Jan 2026 13:31:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2834123699760647097=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/xe/guc=3A_Fix_kernel-?=
 =?utf-8?q?doc_warning_in_GuC_scheduler_ABI_header?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jan 2026 13:31:55 -0000
Message-ID: <176969351508.205652.16019188152325350052@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260129103730.2289942-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260129103730.2289942-1-chaitanya.kumar.borah@intel.com>
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
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,live:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,i915_selftest:email,workarounds:email]
X-Rspamd-Queue-Id: 4DD81B0680
X-Rspamd-Action: no action

--===============2834123699760647097==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe/guc: Fix kernel-doc warning in GuC scheduler ABI header
URL   : https://patchwork.freedesktop.org/series/160836/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17904 -> Patchwork_160836v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160836v1/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): bat-dg2-13 bat-jsl-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_160836v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [DMESG-FAIL][1] ([i915#12061]) -> [PASS][2] +1 other test pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17904/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160836v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061


Build changes
-------------

  * Linux: CI_DRM_17904 -> Patchwork_160836v1

  CI-20190529: 20190529
  CI_DRM_17904: 7d2c5f861ae9bbed1464e1a6aa39a9055139a4b0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8724: 6a10d1136a4e856cc4ceb5b899c32b03ed8ddc5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_160836v1: 7d2c5f861ae9bbed1464e1a6aa39a9055139a4b0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160836v1/index.html

--===============2834123699760647097==
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
<tr><td><b>Series:</b></td><td>drm/xe/guc: Fix kernel-doc warning in GuC scheduler ABI header</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/160836/">https://patchwork.freedesktop.org/series/160836/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160836v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160836v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17904 -&gt; Patchwork_160836v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160836v1/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): bat-dg2-13 bat-jsl-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_160836v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17904/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160836v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17904 -&gt; Patchwork_160836v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17904: 7d2c5f861ae9bbed1464e1a6aa39a9055139a4b0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8724: 6a10d1136a4e856cc4ceb5b899c32b03ed8ddc5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_160836v1: 7d2c5f861ae9bbed1464e1a6aa39a9055139a4b0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2834123699760647097==--
