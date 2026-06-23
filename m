Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mxVZM4r8OmpENwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 23:37:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F986BA474
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 23:37:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2660510ECD2;
	Tue, 23 Jun 2026 21:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F6010E744;
 Tue, 23 Jun 2026 21:37:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7386222636259227772=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Refactor_gene?=
 =?utf-8?q?ric=5Fhandle=5Firq=5Fsafe=28=29_error_messages?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2026 21:37:11 -0000
Message-ID: <178225063187.108058.13922524133981499260@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260623202310.1023770-1-jonathan.cavitt@intel.com>
In-Reply-To: <20260623202310.1023770-1-jonathan.cavitt@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:replyto,lists.freedesktop.org:from_smtp,6beec6c84f66:mid,emeril.freedesktop.org:from_mime,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19F986BA474

--===============7386222636259227772==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Refactor generic_handle_irq_safe() error messages
URL   : https://patchwork.freedesktop.org/series/169051/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18711 -> Patchwork_169051v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_169051v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - fi-glk-j4005:       [PASS][1] -> [DMESG-FAIL][2] ([i915#14808]) +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18711/fi-glk-j4005/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/fi-glk-j4005/igt@i915_selftest@live.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@client:
    - fi-kbl-7567u:       [DMESG-WARN][3] ([i915#13735]) -> [PASS][4] +13 other tests pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18711/fi-kbl-7567u/igt@i915_selftest@live@client.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/fi-kbl-7567u/igt@i915_selftest@live@client.html

  
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#14808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808


Build changes
-------------

  * Linux: CI_DRM_18711 -> Patchwork_169051v1

  CI-20190529: 20190529
  CI_DRM_18711: e2a6e04d045a56c6dc61e1eb9e2a6d7cf86512cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8981: 28416da6681a1afa167bdd73cdc934cb36d13133 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_169051v1: e2a6e04d045a56c6dc61e1eb9e2a6d7cf86512cd @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/index.html

--===============7386222636259227772==
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
<tr><td><b>Series:</b></td><td>drm/i915: Refactor generic_handle_irq_safe() error messages</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/169051/">https://patchwork.freedesktop.org/series/169051/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18711 -&gt; Patchwork_169051v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_169051v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18711/fi-glk-j4005/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/fi-glk-j4005/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@client:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18711/fi-kbl-7567u/igt@i915_selftest@live@client.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169051v1/fi-kbl-7567u/igt@i915_selftest@live@client.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18711 -&gt; Patchwork_169051v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18711: e2a6e04d045a56c6dc61e1eb9e2a6d7cf86512cd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8981: 28416da6681a1afa167bdd73cdc934cb36d13133 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_169051v1: e2a6e04d045a56c6dc61e1eb9e2a6d7cf86512cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7386222636259227772==--
