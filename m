Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C5793B677
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 20:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200E110E78C;
	Wed, 24 Jul 2024 18:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIQtxMBT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D6110E78B;
 Wed, 24 Jul 2024 18:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721844482; x=1753380482;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VDj84t4lLuWm5TUyv7ES5r8wgorXpgDDICXp2hdrpn0=;
 b=LIQtxMBTL/QeVqy1sJMV+T4iOVMyHYPpqmvCN7G1AY5snN+Y9QnbglFN
 TtRDhrb+m/WxvJr7iIONVXYj0Vnr6K5LVOjMqJjx3pCuK17+aJC2GMALI
 cuEoQHLPdF1KKoj4FW837CzA/+FzqgoiKTjfo0wTplIjEOpOlyxkyFFCu
 8pUhs43ZZNnFMTrt9OtJie/fPRdpxBvvO/CmkxI+qYOvXobewB58xrhsh
 tTy34UTNfrLrL5aqoVXTuhePDTacNJo/KFkKDtC8SaNRzccZM+t7nc90B
 3rB2YyiwYz6rW6vF/1XL/U5A9NPQbw4nKiaFeNrcJCFT2+UrR6Xez20RN g==;
X-CSE-ConnectionGUID: dSdL/uicSheCQS9mWKMLqQ==
X-CSE-MsgGUID: QnK5waKPQSKz8UFHKBtccQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="22453295"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="22453295"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:08:01 -0700
X-CSE-ConnectionGUID: UVI38OgXT2mxuclDqqQjRQ==
X-CSE-MsgGUID: sTkjWinwQiWJW+FhgkqsZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="57472030"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 11:08:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 11:08:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 11:08:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 11:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OtR6q/BnQtb+oO/8ncnbHsXwl2HWA6QdPjQ8QGXdnVIrPRzlkLprqxq7cB8IzsuO/8eHKf41iubjQcgDQQIoE/ABmVNHZ2SE9K4d6jP1kcyteW45WQgwBEHafHtPsK93uVfk12JdxuGkceU+YU7PJgnxLdprGD+65fAm4Ts3iOHUjdRikhVg26Ufv+4zeZkcuaLF31DzZ4OD5YqJOEgpCR2ECu75ARFcnoxIdsDDnrySBmqq0ahwEVNtuVvbyuS90obJs7+2CK1sk74w9+p6ezx0O2rtZHy0Gq520zXxYKPGRprF0RZYatgjO/2W2fn44kcwbS7qZfGghfTC+s/Tag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8mZHZKC1tzenp1JSdcVCI0zG3vKGkN+nSnkayT6tWdw=;
 b=TzMNI07DLD805pePrCKsdVyYa1LKViPtaJVAyBdmNpz9X9gC+U/Qur4S8MNtnk4yH4o6LDtIB33WvudeE7FwydfBwZ6Au/TMGJWqnWX3bXCWcyfJLDraNTzf1ClF2TVZoxU8icZ1ExMbuM8QieImIxn45BWAvKGs20U9j8X3gWCJf8BBQsR5rfHVWtZfta5Xx+DDhltImDdTpbvFv4KJSBXLYRaZIRT32jPALumaNc4bG9YLr0B4LAsdy7SCpYnkriD4jCGDpHhsbhKL+gOMnitf5P5CP770kyi2Ol6rbqXGmcADwuYW8TE0uYZznQlIxwJPUY5vnqTSg1b18o/wAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 18:07:57 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 18:07:57 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/hdcp: Add encoder check in
 hdcp2_get_capability
Thread-Topic: [PATCH 2/3] drm/i915/hdcp: Add encoder check in
 hdcp2_get_capability
Thread-Index: AQHa3AMOpP2HUZpitkGT1NKw4GapNrIGMKJg
Date: Wed, 24 Jul 2024 18:07:57 +0000
Message-ID: <IA1PR11MB6266429FC90CFDD6904D4D60E2AA2@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240722064451.3610512-1-suraj.kandpal@intel.com>
 <20240722064451.3610512-3-suraj.kandpal@intel.com>
In-Reply-To: <20240722064451.3610512-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|BL3PR11MB6508:EE_
x-ms-office365-filtering-correlation-id: 384519a8-bb4f-44e6-adb4-08dcac0b8c32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Gceo3INzkMxfyTQS055YkHJ3plL4Xg/YTKGMQ61yNwibsIoLaHqAUgCVGecr?=
 =?us-ascii?Q?y1T0qj/3hDVSGKDTtKHOnl9Y5wEVh2LB7mWKT6Px10yFE/qRYuvmH4VWVyuL?=
 =?us-ascii?Q?CuALLXskCezR81/rG1GxuTQuuvZB7zxfLgWi8AdopLUlxpr67xH5XcSN0Byn?=
 =?us-ascii?Q?M17YsGA/alykqio30iXdvbTwp6msuDC8I3hSr+hxHNJZORge9DNkjZ4olUzb?=
 =?us-ascii?Q?RtusbOjhACamK6pxEOCAIQLAu81z6pScBbxkMq+H0WZ521wZIUIUumLvFsSm?=
 =?us-ascii?Q?SzUuuVLPaYzNantaEwwON065BjWim6wmDgbaNdi1eHLjY6x0IuGsv6RMwgAG?=
 =?us-ascii?Q?cp0rFjxUFL69OxD0f370cLPaOq2nh7QgTamMz9sXGDSGQ4eq9TiQrPmQnWlW?=
 =?us-ascii?Q?r8uOzjSqQ/F0SBaabqVH9jT/JbNeOLzhIpvj24bcLiDJ2QsyulO6mZR1XdPM?=
 =?us-ascii?Q?XHqSSpooHg1FiXEzZiCu3vuBrr6KsSmMpE9r40xdXFCsXmP9wR1vgi/ym5Sh?=
 =?us-ascii?Q?gGjuzXW+pREKfdKiEE3BaCH3N3pKKFrANLJPOgFYhDrAntRqrj91TmyHsXEI?=
 =?us-ascii?Q?LqK171IrKNrhkCT1EEAq3sMjfnsT31Zk66oYTQwJcP6ntyMzXUfrR+zUK5Gv?=
 =?us-ascii?Q?UnIhVy09P2/cSi2gaVOnO3+R9Ql7DYSuemaHWIWwdSV7UFwbyy3Y3XfApAGF?=
 =?us-ascii?Q?kacOGp5bNqePk9rz3+NZUKKyLW9Lot1TLkJ6UXZ0//D3zbR5+eNg9jcBlk1W?=
 =?us-ascii?Q?8g2fVzxyKo1r4M1YNrZdrKO+uEmPfAZCVIflV9WgGgHQOgMfdVchKfEOFkQL?=
 =?us-ascii?Q?jmCf7UnpYaJ9EWWDX5bzRfCH8AGZjT9WmJ5mRNLt20J1fxid7I+luIGMxHJo?=
 =?us-ascii?Q?6QFFKJVyrndmy7tQq2uj5FWkKm+lAcOLz0SsLvgSSchBQ1NmhCMe1PjDIxql?=
 =?us-ascii?Q?rA6Wa9Mk6xMXCoA+Vd7SDlNnThJOE5ruaYhPp+7hL0HRJ9XuJ3fmZEOiqLpn?=
 =?us-ascii?Q?MBO6c0K6uvLv6QdBpgMYOEr6to5RdGe8ZsR28cV9lP0C7QL/7JJ/dSZ9F/dB?=
 =?us-ascii?Q?5ACWu98tQ8/iTygYOnvsSY3bHPAWV3wtxnjt4DgaURTg/Kp5fVjzsU3BrA7I?=
 =?us-ascii?Q?jBeWlR5g650qEltBuGDrWKOylYxVBZveL0nYId0sle5FzJ1tnVw9xDzmij6Y?=
 =?us-ascii?Q?0q0de7jo0mGYx7UaAdz1X5g0tg6nRrXYWST3s+oUIyiXcm1kXJjWSDhxpA9u?=
 =?us-ascii?Q?V55MbTPiWHgJi+kgFyRlwg8rBCdmZx9nZkw/gSa236L5qEGf+6M0GR68lDqw?=
 =?us-ascii?Q?04e5GM0BQK1GmvpFNW8nFPL5fHJhtXguGyfwbNmUq2KxCQiqEWM5bSBjg5rb?=
 =?us-ascii?Q?s3Gktgd+mb0TIYG+UAz9kvu5ZxmG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HBzoW48p2SVQuZ3YHrHL6UjLaEl8IlqxoBKeCVS32hJkaFUzRdFJXepYD2oZ?=
 =?us-ascii?Q?at3qd+yuNkxLySoX5XoRekHLDcIusQ+0WfUoKlzwu5UpRwpDJxcVAaF+Arm+?=
 =?us-ascii?Q?lJ/SMqpMpJhTC2HVzJUO4kRwhpdwUlhN3Tri56Ka7PxOcj+tdXyIM3jZfaOp?=
 =?us-ascii?Q?8E3dmys7U06n0O7E9XPezuYSlmBT4lV9yBQgrECaC5rdtm248kUuoKRKjDQK?=
 =?us-ascii?Q?Ey4b4xb5v37LAw/pCunJ4pQpNzU8VWIe7TWUr6Mmz/xwlwWdbD9l002rn0yV?=
 =?us-ascii?Q?GJQ65GareQuU50euEzmybJgX6eak5ohwRmQK1HQ2K3UMe40T5NuEJqsFftOp?=
 =?us-ascii?Q?K8SbA4ZQteTW4xTjXMkY8Bjj8Fix2vheZJqxE+dREu6SkXwcNlVn2zD9H7ZU?=
 =?us-ascii?Q?DpCbCh7VKiuFZRo/r1WiwxHXkwH1NFk5tPhlsENqM0qIgPuGkpWTU2dAdMDH?=
 =?us-ascii?Q?7o4kLvCNtfrEYpGxZx+Is8zwluYK38RKFnyqIvZcGgk3A1xvyrAKHlTe5jG7?=
 =?us-ascii?Q?4WZVeVja4/XDLuNLXXbhTVa+sVt0hCg5CQyVbGytrrhv0VXy+vouIQIEbVq0?=
 =?us-ascii?Q?rHydHIjX1wx35h6FKR/N/JZoLHnKo4kfBD3wx8k469buV8iR097eAEJ2R6Dq?=
 =?us-ascii?Q?i2/j41G89eDiTh51fNTGgnaASvyaJ7YMzUKToZwPKVvs50irpXphTLIjSUs7?=
 =?us-ascii?Q?7TaecLHsa2quLrfvVmz+fWGRST0NgvGeK6t15FBbG0rqVW2NJmSq1n0VZP8H?=
 =?us-ascii?Q?CjJk9731WdNgkzRWievWEEJ2WtOLN0UAONQDUrZjNKmfFs0wiZv8ZTeaxhne?=
 =?us-ascii?Q?MSMt9DA6BxZvp8ABPXDif0P5QiMGik7um5ZvC63TQM7hSIhW1s4OExsb3Npz?=
 =?us-ascii?Q?yYH2mOKPzG2z2cpUDieSoErGAC8sAcCaWqpVBY2hYH73yA0xHxKhcOzj0ylE?=
 =?us-ascii?Q?xjKu2TTxWDw8IvUgBprQyQBMMoh1I9uos8D/MfKzY18SNnQMG+sRPPY/5Yak?=
 =?us-ascii?Q?XAZlJ+ll3xuH9KgqAP93ELpU6NI25/NytWNIOet0CrP1+4nF1X8BXbxuS3Y0?=
 =?us-ascii?Q?k7ljgBPgSWOfERdF7TP0jzMnTVyT+EAzbn6VU3kGwLGuRB7lkCiC51G8E0p0?=
 =?us-ascii?Q?7luuofdmStpXltw7SNReLvY8IG5nUoKkxlwd5MLNC6b+DxZKN6dr8sYDbX6e?=
 =?us-ascii?Q?AvP5kfIECb8JPNjxe7GjOPnmtDyEm+VAdOeC1Fqgsvucvmu8Dd8jqAYCb3DC?=
 =?us-ascii?Q?LzPkSUVhxDKyco5veN/XmOUbAktUovDSqrke1iwJYrl3Eqynwi5ynavm6HVS?=
 =?us-ascii?Q?9llVxxAumAlhbX/tI/j3JdBOeUBmWrzUfBhl2y15H0DWj/3tl1WLBEAgCSh0?=
 =?us-ascii?Q?bxM/KP9mj1jhpatP8VoO4YFkQUpOev2/sK3Bsyin29VdBRIIMLNo5anIRoa3?=
 =?us-ascii?Q?nhCUbDDJoAUElloGF3acfJw5MglfQ95A/Em3TX89O5o8DzbIqoACj25JxfTA?=
 =?us-ascii?Q?LZhrxdQggJt9vG10+RaR+pHGIsDpds0oqDDGK9YBPsEaJZhg5zzFMRPWg1Ce?=
 =?us-ascii?Q?IUI3htOwttONKdn48n63rkGe6BL4F9+xIkIdUJtIaKVuwipaYdhS2SKnck8z?=
 =?us-ascii?Q?Ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 384519a8-bb4f-44e6-adb4-08dcac0b8c32
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 18:07:57.6023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gzg6+ykptJ36O1hlU5TJYFOh/F6oj0Q5i5G5aXjXjORYT5LtRQJhnZf0E9ZAjvTYcl0Yh9B//7B+Iba7mcLmM73q46kkDd/0CZg5YAtHaS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6508
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Monday, July 22, 2024 12:15 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 2/3] drm/i915/hdcp: Add encoder check in
> hdcp2_get_capability
>=20
> Add encoder check in intel_hdcp2_get_capability to avoid null pointer err=
or.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM. Thanks.
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 2edffe62f360..47f51a5ab493 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -675,8 +675,15 @@ static
>  int intel_dp_hdcp2_get_capability(struct intel_connector *connector,
>  				  bool *capable)
>  {
> -	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> -	struct drm_dp_aux *aux =3D &dig_port->dp.aux;
> +	struct intel_digital_port *dig_port;
> +	struct drm_dp_aux *aux;
> +
> +	*capable =3D false;
> +	if (!intel_attached_encoder(connector))
> +		return -EINVAL;
> +
> +	dig_port =3D intel_attached_dig_port(connector);
> +	aux =3D &dig_port->dp.aux;
>=20
>  	return _intel_dp_hdcp2_get_capability(aux, capable);  }
> --
> 2.43.2

