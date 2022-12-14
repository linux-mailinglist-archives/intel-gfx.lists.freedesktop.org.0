Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772D164C2E1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 04:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D4410E212;
	Wed, 14 Dec 2022 03:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AEF910E212
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 03:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670989569; x=1702525569;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1C4gsIwBiZJIK17IFtw4dOn8OT07OUwNROdwovVck3U=;
 b=FvSvZ4B9Sja5vn8dO/vdhnQSu/WHPxRkVmgeTbH4G7wT40NzwIUs/tLl
 CfVmqlI5caCrE312r2Oc0DgSNhMkr5VOsfU0v0bjkXxv15E1BRUYpYDni
 3gESO8Mcapec3Y9mMZpNPg1lz19uFsJfKQznanYdAVWJA+8XCrRfE7DmB
 3K2b/NFyS6fW+k8SFEr+LXIYnFKo4foGh0Jqp9cpU/KABFSeFNnsESeJ6
 XRDa8ejWHs+kp32VrQL8dcx3o2jPL2M0EzpAaml3KTPUc0mVlwKbcDfv7
 5nU34D8ChERS2PKpXOUD3uK4wus7aA8tC8bZBeUeJQc2Hb04b+g048Xvz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="318345518"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="318345518"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 19:46:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="717461485"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="717461485"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 13 Dec 2022 19:46:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 19:46:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 19:46:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 19:46:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kCq5jGoBRt76bvF5zTwuWFJ6ofNn3F1/WF/512RGh4duWYqJMCPXM1sy3XU0+t1E6qRfhf53Qe1WzoLeRrSsAk7tLP/zeXeNnthbtRN9kYgAuWG+vtcjs6iqGivb/iRlPm5FAaEiIkiDEJ9yupVLfGd4gmwvQDLsrhAjPzDqnS0zraSQTr3hN4m1Kw2XyJ2UzUnCrNcTRvZvFCto8vilPdoG8c7gDlsbkRnUGuC2AcNKQqGfHh2Fwfeeoasg2vJB5PR2FAIfTaTg5EzNAn9m9nkHJviXGrQ4iUh88iCLixryfyrFrSoRUCQMCkzdqy+VFJy0gQJmmK/FtH31GM9o0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aYg9tf5l8+Q/KRM+Tdu07q5kLCx+LMZjVB0dvF2OJMc=;
 b=kqIeWrZElE21oc/8AJ9AZihk3zQGR0R3MX7yI9Ka7Jpd08hmKIk3rqn67O5UOl/EujPWoloiNgLoRMddW0Qvz32gIOJRihP2/n9/fSWp84nSdGqTdvyOAvsJ14fXfKWNiGivSVCB5EWsdvt2G+Grcbugiz1Zhbq380HlGS60ObA4yj0WvkigPiM4cpdyxZTYcP4JUOzSxc2qmRu7r1y23kRSZxTspvgdwGn3ipfNv7iDFBM4Yj2zcc0iPStQPBQrAW9nQLQyTD7BvH4fL4iGaxq9c6IN/CXLzdRlp3+mvR4+1X3JSYXEt8aWmjpLHcp8sA1FdoTX2bYfOrBQp6Wjnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by BL1PR11MB5384.namprd11.prod.outlook.com (2603:10b6:208:311::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 03:46:01 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 03:46:01 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
Thread-Index: AQHZDrbKxbIjEpoIdUuaRItoCyOqzq5svmLg
Date: Wed, 14 Dec 2022 03:46:01 +0000
Message-ID: <BL0PR11MB3170C9A62B892B5619D8D943BAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <20221213055106.2044535-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221213055106.2044535-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|BL1PR11MB5384:EE_
x-ms-office365-filtering-correlation-id: 31ac0512-4014-4e32-8dc6-08dadd85b7f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NSYiWuhGMGhgg8M1KmBh+aeqWZf+gP+Y6tCvcUldjBr2qaQCVgH2q+nH1sZme87h32daAoJ451UXYun8KUBmfQN2ENnxQT2QDSJUpcEmqVGtWEkaNlguqTBu4tp2Vxi5QTwtdznEh5IMRbmCGug64I4uIHRdHmB8GyOeQm/bALYs6iWg/gPEK9csTv4YdY8JvufKUaZwpyXzRfDhxWmJAey3SbONUMx1dgHixB8cb6q1sSrsXb1TC9ct1k8yZa0hgFpVVlmdqJSNB3G8Lv9vkup/jSPovqyQZuxAH7Bz5mdOq9TeraBRA7r0DY55gyA9Yda/ivd7q5lfJPaRTBK7oK9Mu23FxVCuUggMu53Ay1Jmg3+9C7PzIkLawXfehNhyfiePbMaEj+wgKxJMbF83v73+UcdISbr++2RM3RcVbwp9Jgmq+1XBtCHV9PETxVB08oQUxIPhR6Fcm0Tj2Rgxi35NTq7x+Qii5N/H2opuhpLxdzphkzIRSQXJJBIJXTwFlgbjjp5GRdD8I1Qf/Z3MEXbpU8ulELAb/cOgK75SzNc3Pf+esCfB72PKgF5SfnGQ+K89lK/l+YGT5MlPo5WpFftZbyhm4O8ne93mqRRD+BbpIDhvi6En8Rhw2zyET4OwVQKbLHnQotyUMRQGJcdSJhnqcNU0vtMv5SBKEuz/gGlAc0QPiwvY73ZsgLLf8up9Qjqw1BEXtgTWvRyt9ctfag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(346002)(396003)(136003)(451199015)(2906002)(53546011)(64756008)(52536014)(5660300002)(8936002)(33656002)(41300700001)(86362001)(83380400001)(66946007)(71200400001)(66476007)(7696005)(26005)(55236004)(8676002)(6506007)(186003)(9686003)(66556008)(66446008)(55016003)(122000001)(316002)(110136005)(76116006)(38070700005)(38100700002)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3x5UfUpSf3x95nsnD9L0gaKCjapmBk9rBc/GJcXc7CNUJb73P6fj0UMA95UU?=
 =?us-ascii?Q?V+MeTrr4URxOWe854LZh/ClzFB40/0qtl0tRvluQtiHTeCazeqjIJaQYZ0dT?=
 =?us-ascii?Q?uQzZObcgfUwOPmCP1jJvtF6exSskziC0/rB1Qiq7OvE7NffKIflNxexgUYwy?=
 =?us-ascii?Q?NEzUOvhuR5U0ZK1Hrv1wMe4JvnQEkmvT5U5Val7go4EVuVShx6cOdfQhlN1y?=
 =?us-ascii?Q?ddPJQdjGROj14uZBxd2aPXHTBgQEilmQYG0X1Y3U4DYR0eJz49ivbTyEcGOP?=
 =?us-ascii?Q?wkusDMRtpksCvSE3jHFPM+hgUDZb3BIHM/xyN1UAl8o93LJp9IZ4iqop06sr?=
 =?us-ascii?Q?4I53mUjDEM9+NoOYAQil+vVdUvT+bBYjiF/mPtwdY8jtwcHSGcS99aRQ7OKp?=
 =?us-ascii?Q?jjav33cIJ5DF8NrcQgUkRV6lRw0K1yBGS1iunKeRRCDM83KkyLNDGDhffcrw?=
 =?us-ascii?Q?jzwjTlpe4ihUKxgIWsPuyPU8jPuMgZ7INGYPjbOOVNTSdZUeLKfDF0wDy2Zi?=
 =?us-ascii?Q?K+0GI4NSaob9J1WvFJDF58baQE94c2tz6+ZtEN+M/jWAze5fIJIA+2g/mj7/?=
 =?us-ascii?Q?TsAxLL8lqFd9tIVXBESK4XY79l5Ia7rsgTSRBCwcJ65CPQAjL30GCIXDpxEn?=
 =?us-ascii?Q?BZxf26M4iGkoNssZcq5Lk07WENRE2eKWVVB+btlAGgQUnJYtz+2SylvMb6ji?=
 =?us-ascii?Q?UjFGfJbCX9Lj68gux/WEDuwZg+91/7VWk9sVpE02LGt/+CI/fXo9PgOa7CDV?=
 =?us-ascii?Q?wmojGdrCo/T7gh3x8QHB5ZtIipmvHhKM/ybDHb8ob9rV6mJpHrDwscmU5I+b?=
 =?us-ascii?Q?5+0HeLhAG4ykiEYhHLsgiMKHtMxA+FU4JjqHM/5MHFjdqdDt7NHFjAhU8n6O?=
 =?us-ascii?Q?5aZu01hbqlysZ8L+7uyeyNjrOdYaFCuQ8VH20Ve9QVkcseQlnEC+jY0GmURd?=
 =?us-ascii?Q?jp1XjO1yexJvU9GS4KgNvCxdmIS2LYktlHrJA+dKpSgNTGN+IIBQ3bUJ349m?=
 =?us-ascii?Q?Cpx2g1G8KtQD38PemRYfnWbKKVYf2oMevzPrXkhisP506XZfZ1GTlzFQIBO/?=
 =?us-ascii?Q?2GIFjDb7mZa5tQ1TshWEERpBlxh0I4woaEa9VZuerqIA5KsTbH5TqKQhw+Yz?=
 =?us-ascii?Q?cYPD7hRpex2d7x9XAUNQLDyzQUY/UYdwWOBxH+0f3TzsMR48cMf4nUKGl0wc?=
 =?us-ascii?Q?/ZJ6Jm8NU5pe0VxE8BizlUWICtvk5Ll2NySpxWDBMFjZYtlPtcbzDTpk2ZDI?=
 =?us-ascii?Q?2oVafd/vwBDfyjfp6M5JJomO56OKCGci19lmJkFt5Lq8RCc+WFdalKDrQkOi?=
 =?us-ascii?Q?w2i8zevBruEMP1kLJASp5b5Nc8y6Sg1D9Q8oBxG8shomVAfXFVw19IzwQg8o?=
 =?us-ascii?Q?a1z3XhBsyHDhPxhZfYJJuhy/agzghivcjcOLMmQC66AaRJeDPWJAxEjfRDB/?=
 =?us-ascii?Q?usTA857VxeXzrdBqAcpAdUJkEL5OcfD/E6kEWZg6ZyJwtj+vhOJ3mBqkwuw2?=
 =?us-ascii?Q?Sod9EQ8yQwQmXHqjT1eADjHMd9R5OP3nTjhAD+3ZrIVCL5fKl7Xrs2+0azJm?=
 =?us-ascii?Q?CGfVmVBmjSKzzmiDgiMvQBF08tmjRai+Hy/f10lY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31ac0512-4014-4e32-8dc6-08dadd85b7f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 03:46:01.2418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9/cpgI6ivP+Jxcii49nzHMMs2n4FSjsg8cCHInf8uVjgA6iP8C3DjKYd53f1FBsBw1uLtIi/rn2FMfC3SspKog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5384
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Go for scrambling only if
 platform supports TMDS clock > 340MHz
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Tuesday, December 13, 2022 11:21 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Go for scrambling only if
> platform supports TMDS clock > 340MHz
>=20
> There are cases, where devices have an HDMI1.4 retimer, and TMDS clock
> rate is capped to 340MHz via VBT. In such cases scrambling might be
> supported by the platform and an HDMI2.0 sink for lower TMDS rates, but
> not supported by the retimer, causing blankouts.
>=20
> So avoid enabling scrambling, if the TMDS clock is capped to <=3D 340MHz.
>=20
Doesn't this clash with scrambling with low rates?

Thanks and Regards,
Arun R Murthy
--------------------
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index efa2da080f62..c124fe667bc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2244,6 +2244,11 @@ static bool intel_hdmi_is_cloned(const struct
> intel_crtc_state *crtc_state)
>  		!is_power_of_2(crtc_state->uapi.encoder_mask);
>  }
>=20
> +static bool source_can_support_scrambling(struct intel_encoder
> +*encoder) {
> +	return intel_hdmi_source_max_tmds_clock(encoder) > 340000; }
> +
>  int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state) @@ -
> 2301,7 +2306,7 @@ int intel_hdmi_compute_config(struct intel_encoder
> *encoder,
>=20
>  	pipe_config->lane_count =3D 4;
>=20
> -	if (scdc->scrambling.supported && DISPLAY_VER(dev_priv) >=3D 10) {
> +	if (scdc->scrambling.supported &&
> +source_can_support_scrambling(encoder)) {
>  		if (scdc->scrambling.low_rates)
>  			pipe_config->hdmi_scrambling =3D true;
>=20
> --
> 2.25.1

