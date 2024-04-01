Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8AB89381E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 07:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FFFF89358;
	Mon,  1 Apr 2024 05:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QtvtsDC+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3110789358
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 05:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711950160; x=1743486160;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JF/BmjpAH6uVuDAUbEr9gCMkP6ZaTrs/IWElgQ4vQZ4=;
 b=QtvtsDC+GZUR56Hh/q8kWylE9mk4NOKEu3cQFTs6AV/SbgVQQIOrDvJQ
 HBw1hLjFhJ9AZCvu1ZWQ1RtMiFjrtfAHUCw6dgT+w6D8ufHkdXZ1JNuYc
 lfcSZZBDkHySFTSXNbgogtBC1rlRJEG8oNZZW/Fj3jUvBMaKDExe1yWjP
 TwYl7IVFqHamuW7xT9ro8ohQ9PV2P9djlp4LFACKfZL0RDsNrzdqDB08j
 aVYIk4GW4M3CJBx265SDFtb6HlVqdR/6JDxtbf77vzIDILHHG2dk9LAME
 rB8Si9foLMxR8Ny05ctKw/6+9uJwWczyV6wueBObsoLo+EY/T/4LjbVl8 g==;
X-CSE-ConnectionGUID: n2weKQ1rT0yFdlGPeqANHA==
X-CSE-MsgGUID: +aO9EGfPTzW7V6KBJWBI7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="29544194"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="29544194"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 22:42:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="22053661"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2024 22:42:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 22:42:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 22:42:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Mar 2024 22:42:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Mar 2024 22:42:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQwihAW2h0wUGX0p90kBDEJ8EODhBHW71QV8qfnQbmBbRrNMweu4yrAzSd9yBmFEytkCwknk5QPZHRyRU3YfVqWXTJmIMR6pyC6ZhHS3AwAD1IN9KJxcXeGfTLQqAgOfJ5+y59eag9jqbhqBXsGu92S/4liDtij9hFutAmP0a3n141G1iOhQ7CDkN3DUNQBkVtlKImBc7aFvB+MZwxQN3N1ntMi1l8DX4wNDDFOptP94LE19l73dPwrJOqEeVclREz+rCvheKsw4+KEVVEvLEmnwj87lml8I9CfoPQ5Nqvm/bWHwRcaabT9lfw1OTryNc4QSgRIKTKv6k+Qcg4QOyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GKBP0xSzJWIo69jpBV+ukLA4wSAjeqYhQ5W+2yvp9cY=;
 b=fihmW603Vctxl9ZzJZyIMM5ZRDgK6HeacYXKHDSCwUnZlE66I0pGVkdYLXfSbCOJ9AFn9V5tgf9YF5UKryKSexWPd5z7yS7QiYoOEG1greYe6Da5YAEvW/bvXfhhpn5bjDciT81PeTCSzcwf2TX2sJXDe+x0dRxsCxMYQRTt/KX+Juj3yvMK6L1sh32da1JI861ngJULli8wbSqoadC7P2uBdO3B340otkoEGrVUyMY3n8/FyRLHX1OcB1bQdb/9dyHJN2smhblh0+8pN5vDs9cEwU1xcVgrI9A1JSKSOhR5I+c8Hi+CAn7HUJXhXcW31Q16fV/prxTAghj+SspFHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 1 Apr
 2024 05:42:36 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 05:42:36 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability function
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability
 function
Thread-Index: AQHag+Ez2SwggbmMnU26K2X4UkL/1LFS3kqw
Date: Mon, 1 Apr 2024 05:42:36 +0000
Message-ID: <SJ1PR11MB6129A13BBEB64FC309D95BD1B93F2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240401030106.274787-1-suraj.kandpal@intel.com>
 <20240401030106.274787-3-suraj.kandpal@intel.com>
In-Reply-To: <20240401030106.274787-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB5796:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: asUdC+BaB8qFryN29i2+0pSwemNyDB/l44x7pSMwJ6m3gQ+6X7NDfzkMVk4fI2/sRVDhWuFe2ZQEjGo+FVsovd/d9Px3v4dkoFQqrro7BuPzFwHD1EhdkrS1O4ydj2U9ynVm1sis2aOmGAzFgbkAeoG86uFnJLUt51tVG7SsEmPLwzXUD5m301Z9Ttm+miL9ByugkCtIFdnQT0JD5UU2wDFSO3Dw+LSh7eWL1KINNmkont/xZIpwGIUrv1izyMe4sb1lbbv1SqStHPyiZdsrlgtnQggQ+9D27UpfG4RyNoB7+mbTjcfj4XP9h0aMOrZ4KkfTlevZZaUB89FgEj8O2DVR9bxxvxiacYLAxNPzScTLX3mRkeQ88zZuP9ZW7ETTJ/vRxlkJgbrDglDRqhhUJbuUwJ/oxTWwuTfjnIfZ/alXx+7+rjhsGEMmJd0ySU0g+u3QSmT5WudFW2GLCm5VS3demyBM37GrRGsx08LUC9DvftWntqVgIrEnMn9NgiMoYbT7p32mfwuu/+fNFNO31GHcaT+aSYkZaOWUO6KuL+pkQhow9WyqBTWC/j+pWHJIIz6XmPjAUyipQBRTy/Y1j3HaFmFihyIaYp1XmsBN/KN5qDHJdWFX51oJHrUpOvBeNeCyqx3bev6RLcDZEdW9x6amI09pe9lVeZ2kiAJ5VfY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0xJdLQTC3tDRLK8d2Z+PZPS8x8KtC7CgUwOE7R12Q0tZKhpsn+jjXxQ9UtWs?=
 =?us-ascii?Q?VBsxUVmTJXAtj9e9pfVxSe89BelO+zOXTJzB7NQCX67wXOtCZLj0rPNNW7Lb?=
 =?us-ascii?Q?rzG+qTEOs1bbOtiAnb7m6aLWOIc1JHuxJjmiXOW+blL4OMXqtybpnEZnMkjJ?=
 =?us-ascii?Q?J1arJgjsp9DLiy8KZeZufFkG/IYqUdaIb/bHnUojcWIt+XulPqH37e14Bk6f?=
 =?us-ascii?Q?NCEqZXkJwi8nV9hJ+4bbCcrg+J+sX/UEhMlEYlKYsGpolQ7Gh/BmxKrzvN+H?=
 =?us-ascii?Q?OJumB/nlg85Dt3WvPxiJPmtsymKrUfD6af+etmnxmAD56HoxFRCs+RFUty/h?=
 =?us-ascii?Q?bmPH7CUecG0kfmVafzdS4AfYyCQJZgMqkjRfLpHbsEgA2+y6MQVJyFDhp2K5?=
 =?us-ascii?Q?cppDN/jhxOxt+EpFgaj4Qj8k+TwUhuABJMSfnfxu5V7amDTbyj0TNYuf6XWJ?=
 =?us-ascii?Q?/7pCT/k9qQxtumV2/OMfG4cwsiNJu1mm1G+NJ81PLtqcqq4o3oQsyHV+aCug?=
 =?us-ascii?Q?b4iCcf63K3/XGXwZJy9D2WVvo4DML0P3ixbDfqe+2mg68vkv1Tz+Q4NueOQl?=
 =?us-ascii?Q?erzacIK2O+JWWhsI7NWnjLVPmFWtM60MUyXXrd9JpagxUXVFpst6hIfVi5Mq?=
 =?us-ascii?Q?PkNMk/pP++bQUXOsY4qBkO59FsaRYsU73TBPXFnR9j4OwrkRYLIMUaUSnscd?=
 =?us-ascii?Q?I38EIo8AGQOnjuWVbbQc9QKTrh7OTSNJRCIPLEjkus5uW/Ukot5mPSY1LJH3?=
 =?us-ascii?Q?bWWTmeEVBWhUzgjmgEma0WklRrh2pFxchyaMiQQsRTlS9ukMNMYrFnnbrPOG?=
 =?us-ascii?Q?5cB5tmdKEy6L2IGLx/h5gKFY01q/p6t5J58Uh95gBKQNOfy77j3ss4n/T0BF?=
 =?us-ascii?Q?N24P7xFowBuAn2QUEbacNHu8VT9KEU9ezhghfTJTvGnTCloBY+krVP/Hq08q?=
 =?us-ascii?Q?ILUJpuSVgtHXFyUJIErO/Ijztl5BlHD1MAgS44+2mEx+yjjfS68EDMzLThgV?=
 =?us-ascii?Q?7tcocd0SvcXyXQMVH2R925nqWZMHqIEaqdSgzilZYjwkQ1GUR6CGjR6qD5o+?=
 =?us-ascii?Q?UPEQip47s1riFTKkve3ewI98eQYj0zaPYyHIDSyE/u0m+QpRwNREuvGnsuGf?=
 =?us-ascii?Q?nJGJ12Ef+h+qe1CGsrDASE0yaEVDvTtVYdBs96Ub+jBoyJKcJ7m6/HQp2bm0?=
 =?us-ascii?Q?hRVahLFK4pDqXOYQq8GJ7KUxYls1wHVpymF0LYVsSI9pFElQX4I7SY3Dtakh?=
 =?us-ascii?Q?gZQSZbKslgWZD56apQgiUOywQB7SOJyhvmnzzp3Hj57Tr/5o8U3++6Taz99X?=
 =?us-ascii?Q?7pW86kY35tPPK7kjpV1vO5m8wNpa/rO0GodsugSLp6t9/QiNi6m9Wm8b31pP?=
 =?us-ascii?Q?Lg4YQBIh7NNWkM4gvcUB3mvLqnkpHDg5vzV9GySMFTYMr6ZnbXQrltcPi7Xe?=
 =?us-ascii?Q?8V3OK1gVlInBi+u3T+T/BcIqgw1Pm+H11821Xt5u1AtmRTYJGMO3pkdGhGhf?=
 =?us-ascii?Q?vI9BxY0gXwwGbzGaRl4DvOg+ulV15pZ+eJckyRWRTjYZ1GJsa35ayJuPgLoc?=
 =?us-ascii?Q?FReFgmyiiLi0IFMpA6P/N0wHe4zsYPWpTvsEjhrJVWf5+oFVl/v7OCTETQr5?=
 =?us-ascii?Q?2w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 744349e8-2693-4a70-1605-08dc520e894f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 05:42:36.5832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t/1DBut4r3gQ95oiM3zJBiQ0mIRiuA04T0hwllxq5Nem2v1qoWiFm7FtGhRMdPwHAHeBO8+YKjAd5VyRGLKHtraonThTpqFDFHuGX+LAa+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
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

Hello Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, April 1, 2024 8:31 AM
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
> Fixes: 813cca96e4ac ("drm/i915/hdcp: Add new remote capability check shim
> function")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 179e754e5c30..bd2cd7417136 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -694,9 +694,12 @@ int intel_dp_hdcp_get_remote_capability(struct
> intel_connector *connector,
>  	if (!intel_encoder_is_mst(connector->encoder))
>  		return -EINVAL;
>=20
> +	hdcp_capable =3D false;
> +	hdcp2_capable =3D false;

Here pointers are being overwritten.
Anywhere we try to write to them will lead to crash.

You can also move them above the EINVAL check for the sake of readability. =
Anyway the caller of this function should not rely on the values if there i=
s error code returned.
(even though no one is doing that right now)

Regards

Chaitanya


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

