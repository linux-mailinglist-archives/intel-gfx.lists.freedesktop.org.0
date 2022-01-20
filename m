Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F43494752
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 07:32:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5EB610E600;
	Thu, 20 Jan 2022 06:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0A310E600
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 06:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642660348; x=1674196348;
 h=message-id:subject:from:to:date:in-reply-to:references:
 mime-version; bh=FuTxJjDatYHfj8gYkJ6MZQd6EFwQKKWw5XL+f8bCZU8=;
 b=MKaRqNanhHOlm8GtLMcG+Dki1X3Ps1CcyXJphbPI7Rr3zhywp8l7zgj9
 hw7hLtkj86E8zIPZ27cJH+rUdSG6ymLB8ZIgw0S9vPll3dwyaqKRIlR/+
 G8ch2sjNxWL5+t0x8nO6mIxN7/zmbysGeu3p6Oj2LbnquD8Gc2EvnE03p
 iECslKfzugFVvSF8f/1YKammbmPbx+vcSRLmwyuxlQiMydTfW6Lg76EGV
 BSZRd/X/DRhLw4wj91oSXJODT5CulUo130FL38Pw+tyzLEZS0DX6youxQ
 8V0mBpkEQ9y9w0nR4Q09RiUYOG6wOvruNO/fe0/FFogtzMv+fzU9vG57g w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="242844922"
X-IronPort-AV: E=Sophos;i="5.88,301,1635231600"; 
 d="scan'208,217";a="242844922"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 22:32:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,301,1635231600"; 
 d="scan'208,217";a="672439660"
Received: from cmathias-mobl1.ger.corp.intel.com (HELO [10.249.254.225])
 ([10.249.254.225])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 22:32:04 -0800
Message-ID: <667ba27fbe28de9e5632a7617a1e37a260f0d356.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jan 2022 07:32:01 +0100
In-Reply-To: <164264298299.22531.1826661941114637392@emeril.freedesktop.org>
References: <20220119174734.213552-1-thomas.hellstrom@linux.intel.com>
 <164264298299.22531.1826661941114637392@emeril.freedesktop.org>
Content-Type: multipart/alternative; boundary="=-/4e+FtV2WWQz/AxJoZ/3"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_vma_resource_freeing_=28rev2=29?=
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


--=-/4e+FtV2WWQz/AxJoZ/3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2022-01-20 at 01:43 +0000, Patchwork wrote:
> Patch Details
> Series:drm/i915: Fix vma resource freeing
> (rev2)URL:https://patchwork.freedesktop.org/series/99055/State:failur
> e
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22029/index.html
> CI Bug Log - changes from CI_DRM_11110_full -> Patchwork_22029_fullSummaryFAILURE
> Serious unknown changes coming with Patchwork_22029_full absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22029_full, please notify your bug team to
> allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (10 -> 10)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introduced in
> Patchwork_22029_full:
> IGT changesPossible regressions * igt@gem_ctx_isolation@preservation-s3@vecs0:shard-skl: PASS ->
>    INCOMPLETE
> Known issues

Unrelated failure.

/Thomas



--=-/4e+FtV2WWQz/AxJoZ/3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>On Thu, 2022-01-20 at 01:43 +0000, Patchwork wrote:</div><blockq=
uote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf soli=
d;padding-left:1ex"><div><b>Patch Details</b></div><div><table><tbody><tr><=
td><b>Series:</b></td><td>drm/i915: Fix vma resource freeing (rev2)</td></t=
r><tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/=
series/99055/">https://patchwork.freedesktop.org/series/99055/</a></td></tr=
><tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>Details:</b></t=
d><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22029/i=
ndex.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22029/index.h=
tml</a></td></tr></tbody></table> </div><h1>CI Bug Log - changes from CI_DR=
M_11110_full -&gt; Patchwork_22029_full</h1><h2>Summary</h2><p><strong>FAIL=
URE</strong></p><p>Serious unknown changes coming with Patchwork_22029_full=
 absolutely need to be<br> verified manually.</p><p>If you think the report=
ed changes have nothing to do with the changes<br> introduced in Patchwork_=
22029_full, please notify your bug team to allow them<br> to document this =
new failure mode, which will reduce false positives in CI.</p><h2>Participa=
ting hosts (10 -&gt; 10)</h2><p>No changes in participating hosts</p><h2>Po=
ssible new issues</h2><p>Here are the unknown changes that may have been in=
troduced in Patchwork_22029_full:</p><h3>IGT changes</h3><h4>Possible regre=
ssions</h4><ul><li>igt@gem_ctx_isolation@preservation-s3@vecs0:<ul><li>shar=
d-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11110/sha=
rd-skl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22029/shard-skl=
6/igt@gem_ctx_isolation@preservation-s3@vecs0.html">INCOMPLETE</a></li></ul=
></li></ul><h2>Known issues</h2></blockquote><div><br></div><div>Unrelated =
failure.</div><div><br></div><div>/Thomas</div><div><br></div><blockquote t=
ype=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padd=
ing-left:1ex"></blockquote><div><br></div><div><span></span></div></body></=
html>

--=-/4e+FtV2WWQz/AxJoZ/3--

