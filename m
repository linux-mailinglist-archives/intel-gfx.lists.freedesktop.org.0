Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8187F49F358
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 07:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C51710F521;
	Fri, 28 Jan 2022 06:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6EFC10F521
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 06:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643350286; x=1674886286;
 h=message-id:subject:from:to:in-reply-to:references:
 mime-version:date;
 bh=Ypv9Nnwql8qptqmfumB4U2poNkyKaO6tI0ExmWu+Sfs=;
 b=eEjEwW/Vrh6eTR7cbq2XweYigW2NuAn1T+i7KCy+DKS3q7QjOnab1325
 dRU2eVo9wgwU9pS90S2i5lbZIlNbs0Tq/E5IenL3bIlH7gRRucM+7NcRa
 lgUL3F/A/i2GuK69NuOY/I/8JSDW/OoAJ1gT3eZAKGfQStu3eXDvfkVJc
 OFajF1GwBdVvw5C98of2S1FY6/V164SZ3JtQNkDvdybwGpIH96Lhgdt92
 +FPAScPMK9YVRZjJg9JvtHpmMOEk3cytVl2XIpFr1n4jm6HOjcbAAJkKu
 q/IeAywfcKKUMkj8iYSAII0G23yuMZFDcdvDtpaqFWbjQRvSiTHqHTxUX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="234432534"
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; 
 d="scan'208,217";a="234432534"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 22:11:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,322,1635231600"; 
 d="scan'208,217";a="478172784"
Received: from mmazarel-mobl.ger.corp.intel.com (HELO [10.249.254.191])
 ([10.249.254.191])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 22:11:24 -0800
Message-ID: <6184458250f49c3a4267bbe5b02a25b684263bad.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <164330652489.23658.10539260224928466156@emeril.freedesktop.org>
References: <20220127115622.302970-1-thomas.hellstrom@linux.intel.com>
 <164330652489.23658.10539260224928466156@emeril.freedesktop.org>
Content-Type: multipart/alternative; boundary="=-e4vc0oiF6UKsMqEdR5Xp"
MIME-Version: 1.0
Date: Fri, 28 Jan 2022 07:10:25 +0100
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_a_race_between_vma_/_object_destruction_and_unbind?=
 =?utf-8?q?ing?=
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


--=-e4vc0oiF6UKsMqEdR5Xp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2022-01-27 at 18:02 +0000, Patchwork wrote:
> Patch Details
> Series:drm/i915: Fix a race between vma / object destruction and
> unbindingURL:
> https://patchwork.freedesktop.org/series/99418/State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/index.html
> CI Bug Log - changes from CI_DRM_11150_full -> Patchwork_22125_fullSummaryFAILURE
> Serious unknown changes coming with Patchwork_22125_full absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22125_full, please notify your bug team to
> allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (10 -> 10)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introduced in
> Patchwork_22125_full:
> IGT changesPossible regressions * igt@kms_frontbuffer_tracking@psr-slowdraw:
>     - shard-tglb: PASS -> INCOMPLETE
Unrelated failure.

/Thomas



--=-e4vc0oiF6UKsMqEdR5Xp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>On Thu, 2022-01-27 at 18:02 +0000, Patchwork wrote:</div><blockq=
uote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf soli=
d;padding-left:1ex"><div><b>Patch Details</b></div><div><table><tbody><tr><=
td><b>Series:</b></td><td>drm/i915: Fix a race between vma / object destruc=
tion and unbinding</td></tr><tr><td><b>URL:</b></td><td><a href=3D"https://=
patchwork.freedesktop.org/series/99418/">https://patchwork.freedesktop.org/=
series/99418/</a></td></tr><tr><td><b>State:</b></td><td>failure</td></tr> =
<tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22125/index.html">https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22125/index.html</a></td></tr></tbody></table> </div><h1>CI Bu=
g Log - changes from CI_DRM_11150_full -&gt; Patchwork_22125_full</h1><h2>S=
ummary</h2><p><strong>FAILURE</strong></p><p>Serious unknown changes coming=
 with Patchwork_22125_full absolutely need to be<br> verified manually.</p>=
<p>If you think the reported changes have nothing to do with the changes<br=
> introduced in Patchwork_22125_full, please notify your bug team to allow =
them<br> to document this new failure mode, which will reduce false positiv=
es in CI.</p><h2>Participating hosts (10 -&gt; 10)</h2><p>No changes in par=
ticipating hosts</p><h2>Possible new issues</h2><p>Here are the unknown cha=
nges that may have been introduced in Patchwork_22125_full:</p><h3>IGT chan=
ges</h3><h4>Possible regressions</h4><ul><li>igt@kms_frontbuffer_tracking@p=
sr-slowdraw:</li><ul><li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11150/shard-tglb8/igt@kms_frontbuffer_tracking@psr-slo=
wdraw.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22125/shard-tglb6/igt@kms_frontbuffer_tracking@psr-slowdraw.h=
tml">INCOMPLETE</a></li></ul></ul><div><span style=3D"font-size: 22px;"></s=
pan></div></blockquote><div>Unrelated failure.</div><div><br></div><div>/Th=
omas</div><div><br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8=
ex; border-left:2px #729fcf solid;padding-left:1ex"></blockquote><div><br><=
/div><div><span></span></div></body></html>

--=-e4vc0oiF6UKsMqEdR5Xp--

