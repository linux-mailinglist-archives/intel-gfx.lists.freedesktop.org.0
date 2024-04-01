Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF768939C5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 11:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CBD810F00B;
	Mon,  1 Apr 2024 09:50:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VroejmQK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713FF10F000
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 09:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711965022; x=1743501022;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Kknx6tpkY2LfoYL+7U1H+uffhXRALjx53lJEGtpA5rs=;
 b=VroejmQKfXwZW4ZLpetBqKf8NFdPu9RQk2H4lsOwvIV3cNnWObJ4/KLe
 sNaZMesWhjVQ+HzxIRzGUnXpi8er/N1p7/baJCa63o8AZFCA5XCqy7xX7
 Vsht2OhX3tYLf2tS6gMQz9MTgdYGYA7n/sD9NbjF59ZxV/j2sQVGeDp77
 fypcdgrKl5n3fCxYcZRfUiL4CIV1lP1s5eudW42h0v8QumJ3INJcWt0/4
 FAPU+/a1giSKAhm6PQLXrDdsobBNbS2aC5EIh+UBCJJWbybPhXjQbhR3r
 AXAMpc1gVipRh72okSkpBsu2yZ5hmhxyvEYCzvZYJ8XRQY6ax1OtHHS5X g==;
X-CSE-ConnectionGUID: DpTDwf12TGuwmKLthmC8zA==
X-CSE-MsgGUID: jTKC0wzdQBy0rgDUc3aJQw==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="10908245"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="10908245"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 02:50:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="22346540"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 02:50:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:50:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 02:50:20 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 02:50:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfOTbO+aOPKH7jweBMMJ3lDkQDyj2upCmAj/jS/H1oGogkTwi8OvlocP++iWVjQyWPpw/bzkzcqqM8fPi83OvwuwTGnYLXkNQeMWSRIWCyAgYQJNWF4vW0spsqapadl1jBZ3dKBSZbK5rC7nK+pJwMu/LIZd7IHpGRA47wM2bhkDLHYlpYT151iuV6pDOlwnLjvAQdOY64y6SP8XxKJ0Aykli0TCJNKvQWY/KUBeqsBdKaOH3nyRbl4uF/x8rM/XZF1tth87Kb4zEGLFbRFu2CkFTCnbF7i8cT3NQSMBWzNI5gvFEvJK3OnqqJaDI9BfPPdQF/6D45pT7NnTejrgbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6kaoaOJZDIV2po4lN+u2sfG+Lm8UimPekT5gtxrHLWY=;
 b=HIh8dGNnjvzv7zsCJZ42S0S9NZzU8cEThiga7UAB5r6hRsPjiTMw9qef6upZQ/DiLAhQrd+PKSc57j80B4gXFd5YR1u3tGjuH/vgjq5G+taJdWs6ic00KAohQaaYqqGiEg2Lok//+9idIrsGkfKT+tBvt5xToeVcrxVTLvE1DAAC2PR9+rM9y6x3NW/l6IJux9i3a4n5A94dXdVfXvygi/h/HGv0e8eOqzonYv4iQC3iy6w8isMOrQRUrgTA31gqtjpSAI94MiieKUXq94L0O9HZbw/78QF84ozvdpGSQ76tsxbJosAmEQuLA4QIi3oV2a8+6kS0xuYs+OomSZD7ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB8362.namprd11.prod.outlook.com (2603:10b6:610:175::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 1 Apr
 2024 09:50:18 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 09:50:18 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability function
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability
 function
Thread-Index: AQHag+Ez2SwggbmMnU26K2X4UkL/1LFS6wiAgABARVA=
Date: Mon, 1 Apr 2024 09:50:18 +0000
Message-ID: <SJ1PR11MB6129F560B40C79A6D3B3197BB93F2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240401030106.274787-3-suraj.kandpal@intel.com>
 <20240401055652.276785-2-suraj.kandpal@intel.com>
In-Reply-To: <20240401055652.276785-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB8362:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1JLnI9WP3NLwka1hbgJmmJXm7MimumT+O7bV5npiVrTxF0vWAoi3XeM/ZYPyxERAEi91/XxOaj8Td4Wt2+JpOOmFBG1gYp174c/gFrZj1jW1wWl/f19w/+s2FfPT++MwKxsTKhyoNTI6w7u5u8RBPMjnpZF26ecauZXWUPDUTxWmRQJEq4+Fs40H3hRCcuq/Xn44a/W7g8dypVTJC9jT1lZTkPvAykfXvd5Jy1sjCp8RdkGqVDBEsO+jEEiIGNr25kofCEJqk4538D7r2jJFvqTkeTOGmFyRT2xXnqSLgZQ0WsbUNPQzdsutyyx2p3cZpl4C0GU/J57i/et3GoRpKoMHUzPavime29o+2Ljf4Wmn6XvoxCQwFQcnLgWBEJH+uA4G2O6K7w8xFyUl/l5enjrFTNfXLz/l2oNS6YzJQp1Imw/jV9qbuF4WTwpTkCPKYp+VafmnA5y0pUA59VjjxGCjoH+IUKU8Qj2ELOXK+cuV8vAok2lQsQqFZMYCZHtPSLpwA2+M+zftwH+y1GYNNM9ReRml8UpMm6yhMDph4Z1n1sfhD+xlNLUmGn9WWADdFyvZAAmO+ZTiJpGd/qhevntrmVbP9RqH5hpLvIhEnjoHHAeBI9mZM2evAdZ8fNn4yUSuYT80aC7ZaoUFSs/6Nw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?54WSqcESnjcLy53OX8K1B8RC/H7/M0joUSwh2a6KzSBJ5HMTUv9Zi4YJZ7GC?=
 =?us-ascii?Q?/GfTDuDujDRYn4GmZfsUAOXkPwbtfL3NWNwDu390Zu5ibEqu66POGMMd8leX?=
 =?us-ascii?Q?SKdgxtZBi/VFHE9U8z2YgvUBooASZvvUb9svTnzH9Hj7JYXLapL33e7d8ZD6?=
 =?us-ascii?Q?Aacel8OkqvrouHOUlHjm/vlYFWdZDbj2TB0Lh7O07o0V1/Ien1BDygv9V3RM?=
 =?us-ascii?Q?xVfxbmUcU3kiYlOMsrrNUCsH0SlcqctXMvXh0/JfAim+48737JG+SvlpaDJ/?=
 =?us-ascii?Q?DirAJ5JglOgR4hGo3uAjGLz/32iUvDGEAUUdUu+RMr1zoq3G2r0/RX/+d5WQ?=
 =?us-ascii?Q?K9lQKxpb6E5VckH+Fs7s+Zx17JK/7Vc/autTmK07oo3akmyXuFm8EDfUahMd?=
 =?us-ascii?Q?/ltrUpEGDv24hVrDvv6XwXHuPt7TQrFPAqjkT3zJizRNTuAYxzhr6O1HySrm?=
 =?us-ascii?Q?aNC9bdky/T47rtcEY37aNRJ72wMF7iWrJhHRDtd7+45zqNUUW5eerKwWwzny?=
 =?us-ascii?Q?1J5o8Tyl+dX3nPqfRD+sA1fZP9i1cdNCDUUU/DW35XzmxT3uvvElbrsG8+cl?=
 =?us-ascii?Q?q1rk+Xn7OUKPh/T7eXG890WxVGiQGjVY0CVjhp30KIO6ds64lEZE/IYfQhsj?=
 =?us-ascii?Q?gSZP53eDba+XqSm5pkySpnnZMT12S5NWWEbGsYcV7iBZcz1P6+50w1rK4zgB?=
 =?us-ascii?Q?jp0eX2iNlBgAVchUtnokE7bwkdrXhxK6VnC4DwSff58ndg17IaSIlWBZ5G/Z?=
 =?us-ascii?Q?/g4f8YVsWUKr+p2T0/7Q+nBRYVg1RtARhMsQloqn5IZBJquEskOxFR0RJ54E?=
 =?us-ascii?Q?DqlQOFZkyktuixJtzNp1NPp7RqCXcEVJDZh1NnOsJw/p1w7T5EOMZwOElykM?=
 =?us-ascii?Q?dnACi2Uer3qRHvki+24BSFv7j4aN0yfyPblKzr8xHbzyr9S4+ajsrKUfEqbd?=
 =?us-ascii?Q?a/MrqBZxCW0pUYqoO1TH0V1qd581iQgUo7HLRWLUQEvU57cBf/7vXwL/33+3?=
 =?us-ascii?Q?eiAkS9EhrG8m4BLIvnI0xmm4i0SxhheJZgwyPTmAPicvWVD9CqtktsNabjqb?=
 =?us-ascii?Q?Amt/RNJRDWtnupXmZmYlI3cg+XKoX5ouR5Fq05/GhggJb7SCHPWx4ORPvEbR?=
 =?us-ascii?Q?StUXTYs44BTjYZhaPsP+jmpZoHOlb6SxT7XxQ8NfyhVaHBJ7Ik1+7GWFKViP?=
 =?us-ascii?Q?GD6QMv8BtEKaQAuWDbGXNor6+bClPt4aTOvkl5z4L4NG7x1F541ErjcpzWsL?=
 =?us-ascii?Q?amdLzmJcjhtxKj2VtSYpkvkEeRK4klSW0PU7r+W4WWsEPvmZm2lm0u5c9VSO?=
 =?us-ascii?Q?77QCor5NdUdUxuyKx/kIhi0ulDAwCZ7nW/mJBlCyyq9cr9+hpX19riLiJqfF?=
 =?us-ascii?Q?ZrW+tHCoJlq5L5pNBNPHzTtmbYi/ixQqUu2Ukdrb19Tg/i30mJpS3RrO/Ouz?=
 =?us-ascii?Q?ntN9HjP/MgC9T3ScyeZsJ4adMeWxycBxIVWqjmcMDNs+WW/hEfQLoh5gzP2z?=
 =?us-ascii?Q?Fn2IgNMtfk84W+M1sdVp645NQScmTCGJxepgrA5MK9UTtL80or+KW5z9FLLd?=
 =?us-ascii?Q?vDl7UzYqrlh+Z1e7/5I5SIFfD7u8CDmzu+Rcd17PchwYCiw4gOKo9HnRqlvW?=
 =?us-ascii?Q?uA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23a24b43-13be-4e73-c690-08dc52312385
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 09:50:18.2454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BNrLoBzwuAr9E7Jl7znPuiHKfOZltcbflQ+uHQDPIW3VZCT/K38XhQ9Sbxh8vnFcrKITc6Le+Hg/HdWYHJhRyxnFO1xCWHSipIqG+Ira6tY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8362
X-OriginatorOrg: intel.com
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, April 1, 2024 11:27 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability functi=
on
>=20
> HDCP 1.x capability needs to be checked even if setup is not HDCP 2.x cap=
able.
>=20
> --v2
> -Assign hdcp_capable and hdcp2_capable to false [Chaitanya]
>=20
> --v3
> -Fix variable assignment [Chaitanya]
>=20
> Fixes: 813cca96e4ac ("drm/i915/hdcp: Add new remote capability check shim
> function")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 179e754e5c30..92b03073acdd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -691,12 +691,15 @@ int intel_dp_hdcp_get_remote_capability(struct
> intel_connector *connector,
>  	u8 bcaps;
>  	int ret;
>=20
> +	*hdcp_capable =3D false;
> +	*hdcp2_capable =3D false;
>  	if (!intel_encoder_is_mst(connector->encoder))
>  		return -EINVAL;
>=20
>  	ret =3D  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
>  	if (ret)
> -		return ret;
> +		drm_dbg_kms(&i915->drm,
> +			    "HDCP2 DPCD capability read failed err: %d\n", ret);
>=20
>  	ret =3D intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
>  	if (ret)
> --
> 2.43.2

