Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF+eF/CTGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:26:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB14C602D64
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5F610FF21;
	Fri, 29 May 2026 13:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38A810FF21;
 Fri, 29 May 2026 13:26:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6432482532700577886=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_updat?=
 =?utf-8?q?e_BW_buddy_initialization_for_LPDDR4_and_LPDDR5?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 May 2026 13:26:04 -0000
Message-ID: <178006116479.23778.5769741430508629996@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260528182601.205595-1-vinod.govindapillai@intel.com>
In-Reply-To: <20260528182601.205595-1-vinod.govindapillai@intel.com>
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
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: BB14C602D64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============6432482532700577886==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: update BW buddy initialization for LPDDR4 and LPDDR5
URL   : https://patchwork.freedesktop.org/series/167481/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18571 -> Patchwork_167481v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_167481v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-6:         [PASS][1] -> [DMESG-FAIL][2] ([i915#16304]) +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18571/bat-arls-6/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/bat-arls-6/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-n3050:       [DMESG-WARN][3] ([i915#16057]) -> [PASS][4] +1 other test pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18571/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [FAIL][5] ([i915#16115]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18571/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
  [i915#16057]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16057
  [i915#16115]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16115
  [i915#16304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16304


Build changes
-------------

  * Linux: CI_DRM_18571 -> Patchwork_167481v1

  CI-20190529: 20190529
  CI_DRM_18571: 3561a5c5f9c0e19145a27624ada4f2866ec3a181 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8941: 0e365bfe5ccc6d1f7607db10bc21c72d30292cea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_167481v1: 3561a5c5f9c0e19145a27624ada4f2866ec3a181 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/index.html

--===============6432482532700577886==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: update BW buddy initialization for LPDDR4 and LPDDR5</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/167481/">https://patchwork.freedesktop.org/series/167481/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18571 -&gt; Patchwork_167481v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_167481v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18571/bat-arls-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/bat-arls-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16304">i915#16304</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18571/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16057">i915#16057</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18571/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16115">i915#16115</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167481v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18571 -&gt; Patchwork_167481v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18571: 3561a5c5f9c0e19145a27624ada4f2866ec3a181 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8941: 0e365bfe5ccc6d1f7607db10bc21c72d30292cea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_167481v1: 3561a5c5f9c0e19145a27624ada4f2866ec3a181 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6432482532700577886==--
