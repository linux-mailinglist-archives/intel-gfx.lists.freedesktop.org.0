Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UMXHCgRJPWo40wgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 17:28:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79ECF6C70D7
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 17:28:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7770310F30D;
	Thu, 25 Jun 2026 15:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7621110F30D;
 Thu, 25 Jun 2026 15:28:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0858531285453936151=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/vrr=3A_require_v?=
 =?utf-8?q?alid_min/max_vfreq_for_VRR?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jun 2026 15:28:00 -0000
Message-ID: <178240128047.118083.7865396651789922114@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260625131040.1051272-1-jani.nikula@intel.com>
In-Reply-To: <20260625131040.1051272-1-jani.nikula@intel.com>
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 79ECF6C70D7

--===============0858531285453936151==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vrr: require valid min/max vfreq for VRR
URL   : https://patchwork.freedesktop.org/series/169198/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18719 -> Patchwork_169198v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169198v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

New tests
---------

  New tests have been introduced between CI_DRM_18719 and Patchwork_169198v1:

### New IGT tests (15) ###

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [1.22, 1.41] s

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [1.23, 1.30] s

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [1.22, 1.30] s

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.64, 0.70] s

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.63, 0.64] s

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.64] s

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.62, 0.70] s

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.64, 0.66] s

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.63, 0.64] s

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.58, 0.63] s

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.57] s

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.56, 0.59] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.58, 0.63] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.57] s

  * igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.56, 0.59] s

  

Known issues
------------

  Here are the changes found in Patchwork_169198v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-7567u:       [SKIP][1] -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18719/fi-kbl-7567u/igt@kms_hdmi_inject@inject-audio.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169198v1/fi-kbl-7567u/igt@kms_hdmi_inject@inject-audio.html

  


Build changes
-------------

  * Linux: CI_DRM_18719 -> Patchwork_169198v1

  CI-20190529: 20190529
  CI_DRM_18719: adbc617250e16fb2db4a4c777b89440927cb8973 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8985: d5fe8732b8547454c38fdd220b55f6f0cc841a3b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_169198v1: adbc617250e16fb2db4a4c777b89440927cb8973 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169198v1/index.html

--===============0858531285453936151==
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
<tr><td><b>Series:</b></td><td>drm/i915/vrr: require valid min/max vfreq for VRR</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/169198/">https://patchwork.freedesktop.org/series/169198/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169198v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169198v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18719 -&gt; Patchwork_169198v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169198v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18719 and Patchwork_169198v1:</p>
<h3>New IGT tests (15)</h3>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.22, 1.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.23, 1.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.22, 1.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.64, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.63, 0.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.62, 0.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.64, 0.66] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.63, 0.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.58, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.56, 0.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.58, 0.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.56, 0.59] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_169198v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18719/fi-kbl-7567u/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169198v1/fi-kbl-7567u/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18719 -&gt; Patchwork_169198v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18719: adbc617250e16fb2db4a4c777b89440927cb8973 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8985: d5fe8732b8547454c38fdd220b55f6f0cc841a3b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_169198v1: adbc617250e16fb2db4a4c777b89440927cb8973 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0858531285453936151==--
