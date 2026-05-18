Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABuvKyvWCmqc8gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 11:04:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CB85694D9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 11:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C0010E2EB;
	Mon, 18 May 2026 09:04:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CJe0eIxu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695B510E4AE;
 Mon, 18 May 2026 09:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779095081; x=1810631081;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version;
 bh=Q8y1xmawNknLrVhnbajwNi+uK6dP+bpaYApYCT3K8ik=;
 b=CJe0eIxu2KzDqouFCX31WtYwr2B2fMIS/vC7E4HkkXONsrYMVWegpod+
 UgqGIUHBuhYTSxWO6+ty5rIa/mJwsORugajGir+eYfyOCr5RNygBbLdXT
 l0WIbJXJh5GpmLgK7LDuJGnauYZIPM7cjcSXgCHi7tGwi6/GFyjZI29gZ
 vT3+28MlvFuu14+mMGecxONTjvndvSM+IJ/yPCrtdccONBOo6QMYCwkfS
 YrxbdF3PGT/I6V0SW1m04yzo/i9D8Mij+yd8YiWhOdITDcfMICknEwX4R
 TzzDFp4Z704Py0YvX8A0K6kd837kiZCn8+rl4VV0LGc1km04gj8s2ob0w A==;
X-CSE-ConnectionGUID: bfqrHJCZQlKhyVQ109hqLw==
X-CSE-MsgGUID: 6UXB4AsBT76WjJ3i6FlHzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="90251982"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208,217";a="90251982"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 02:04:41 -0700
X-CSE-ConnectionGUID: HngN/o/rRTeCvFR9GYpXRg==
X-CSE-MsgGUID: M0nNaOOtRX2c08xt/+9aZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; 
 d="scan'208,217";a="235136200"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.244.48])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 02:04:38 -0700
Message-ID: <b3423eafba0cc107dc007494e2b3e9becd2a3e3b.camel@linux.intel.com>
Subject: Re: =?UTF-8?Q?=E2=9C=97?= i915.CI.Full: failure for drm/i915: Skip
 deprecated selftest
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2026 11:04:36 +0200
In-Reply-To: <177891063962.75062.8940973535712402004@5ab824fced77>
References: <20260515133052.1628281-2-janusz.krzysztofik@linux.intel.com>
 <177891063962.75062.8940973535712402004@5ab824fced77>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Type: multipart/alternative; boundary="=-QuBofT9LT+XBAJPnydCG"
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 05CB85694D9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_SPAM(0.00)[0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,01.org:url,linux.intel.com:mid,query-topology-known-pci-ids:email,gem_mmap_offset:email,patchwork.freedesktop.org:url]
X-Rspamd-Action: no action

--=-QuBofT9LT+XBAJPnydCG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi=C2=A0I915-ci-infra@lists.freedesktop.org,

On Sat, 2026-05-16 at 05:50 +0000, Patchwork wrote:
> Patch Details
>=20
> Series:drm/i915: Skip deprecated selftest
>=20
> URL:https://patchwork.freedesktop.org/series/166658/
>=20
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/index.html
> CI Bug Log - changes from CI_DRM_18494_full -> Patchwork_166658v1_fullSum=
maryFAILURE
> Serious unknown changes coming with Patchwork_166658v1_full absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_166658v1_full, please notify your bug team (I915-
> ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in
> CI.
> Participating hosts (10 -> 10)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_166658v1_full:
> IGT changesPossible regressions *=20
>    igt@gem_mmap_offset@clear@smem0:shard-tglu-1: NOTRUN -> INCOMPLETE [2]
>    +1 other test incomplete
>  *=20
>    igt@i915_query@query-topology-known-pci-ids:
>     - shard-dg2:          NOTRUN -> SKIP [1]

The change only disables a part of a selftest on selected platforms, then
the above failures are not related.
Please update CBL filters and re-report.

Thanks,
Janusz

> Known issuesHere are the changes found in Patchwork_166658v1_full that co=
me from
> known issues:
...

[1] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/shard-dg2-3=
/igt@i915_query@query-topology-known-pci-ids.html
[2] INCOMPLETE
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/shard-tglu-=
1/igt@gem_mmap_offset@clear@smem0.html

--=-QuBofT9LT+XBAJPnydCG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
<style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head>
<body><div>Hi&nbsp;<a href=3D"mailto:I915-ci-infra@lists.freedesktop.org">I=
915-ci-infra@lists.freedesktop.org,</a></div><div><br></div><div>On Sat, 20=
26-05-16 at 05:50 +0000, Patchwork wrote:</div><blockquote type=3D"cite" st=
yle=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><=
div><b>Patch Details</b></div>
<div><table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915: Skip deprecated selftest</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/166658/">https://patchwork.freedesktop.org/series/166658/</a></td></tr=
>
<tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>Details:</b></td=
><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1=
/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/in=
dex.html</a></td></tr></tbody></table> </div><h1>CI Bug Log - changes from =
CI_DRM_18494_full -&gt; Patchwork_166658v1_full</h1><h2>Summary</h2><p><str=
ong>FAILURE</strong></p><p>Serious unknown changes coming with Patchwork_16=
6658v1_full absolutely need to be<br> verified manually.</p><p>If you think=
 the reported changes have nothing to do with the changes<br> introduced in=
 Patchwork_166658v1_full, please notify your bug team (I915-ci-infra@lists.=
freedesktop.org) to allow them<br> to document this new failure mode, which=
 will reduce false positives in CI.</p><h2>Participating hosts (10 -&gt; 10=
)</h2><p>No changes in participating hosts</p><h2>Possible new issues</h2><=
p>Here are the unknown changes that may have been introduced in Patchwork_1=
66658v1_full:</p><h3>IGT changes</h3><h4>Possible regressions</h4><ul>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166658v1/shard-tglu-1/igt@gem_mmap_offset@clear@sme=
m0.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul></li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p></li><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166658v1/shard-dg2-3/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a></li>
</ul>
</ul></blockquote><div><br></div><div style=3D"caret-color: rgb(0, 0, 0); c=
olor: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;; font-style: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit=
-text-stroke-width: 0px; text-decoration: none;">The change only disables a=
 part of a selftest on selected platforms, then the above failures are not =
related.</div><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);=
 font-family: &quot;Noto Sans&quot;; font-style: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width:=
 0px; text-decoration: none;">Please update CBL filters and re-report.</div=
><div style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family:=
 &quot;Noto Sans&quot;; font-style: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; -webkit-tap-h=
ighlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-de=
coration: none;"><br></div><div style=3D"caret-color: rgb(0, 0, 0); color: =
rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;; font-style: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; word-s=
pacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-=
stroke-width: 0px; text-decoration: none;">Thanks,<br>Janusz</div><div styl=
e=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Not=
o Sans&quot;; font-style: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; text-align: start; text-transform: none; white-=
space: normal; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0=
, 0.4); -webkit-text-stroke-width: 0px; text-decoration: none;"><br></div><=
blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fc=
f solid;padding-left:1ex"><h2>Known issues</h2><p>Here are the changes foun=
d in Patchwork_166658v1_full that come from known issues:</p></blockquote><=
div>...</div><div><span></span></div></body></html>

--=-QuBofT9LT+XBAJPnydCG--
