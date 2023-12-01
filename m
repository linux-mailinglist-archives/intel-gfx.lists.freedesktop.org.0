Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3F7800BC8
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 14:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E65910E874;
	Fri,  1 Dec 2023 13:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37FF310E868
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 13:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701437080; x=1732973080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IWY1gZfUKLb+gxnIB80aTFYaCyNsnQiMMwN5xDufPXE=;
 b=UfHvnycF8bx5rRyd95tbzBEjgvKAjyIent8NmdlL1FcbmNFSudr2y9/V
 SaKK17SkZ//tHcBqaME4I4tB/ud8LAbBiWVWQv4ulmvPgbSfcQAKQkhUE
 SJUc3hbfTfjiyLj3c/jLTikA7BrKlaEFDDeMT/bQDOfPwqsFUtngoUBvl
 K283KyvJntMtemKmVfEHlXlDNMlMToUR+pogD4hhg8Kl2MNv4B/c3fsG8
 C8dDZpu5+nXXEJfhYwDsO0p4OvfLD/yO+rlx+xl76OaEl/9DqM7JDcEcr
 Jr2bviVYGIDDszAiLBAJnFPyUdYuhfMJPXB8krdXw1He5GoK6XNJFQO+W g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="383890739"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="383890739"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 05:24:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="769682735"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="769682735"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 05:24:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 05:24:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 05:24:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 05:24:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kGeZ38XKBu4FW3L1GRecH0epH9ZVzkLXHCgK1gUmRfwP1XDdxRCyvxgRwYeq8QYmg2i7hAcuzo6d35BKlMzH38enbRW+ntxydAwmwY9sgFHJoft2zmekarosT/hzi7Mps7b+8XO46fhXaS4tHfukGbqrX00C7SkZg7IEyJ4wPGiS0bcwN7RG3/GPfNQJZ+bLb9yZkOVdKpx5pvhLkSlbIrWP2mSXJtcfFtKnZD6caVAvuAEKUfAH9/sjkaz/tDLsDYhnFRczw/kran/xLYHvpaLMRclVoRUcKKATGd3gbBi4nh3DNiGjgvHVjq+JatbS8KqahLVU3VYO+AODNURlgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EUqt8Mbj2FAOhTLVK2FV4OOI4+BcqJ0mdju+Zc8DNi4=;
 b=Jd3UM3bJaUaEj2BA/dfP/xvOl+qbp5wth1E0PGbpb08xNi+iYFxMVhS+OmVW0J1g1PwyunGum1+2NSe67XD05NaJVPqcTCD76ZL1Xoh2baKf4Nt1ig6XSn9s+dlrBB2a+6jmr7wa8UhQ2mpvtgeR+8qg7EVSv67sTtOYzjcq1tvXQLhJ/4rNvApHEO1QIvRj2s5T3TMxHYygQeUIvG+9Bh3LA8drHECnR8gR22qoHaJfW/nZwtRVhghb16rFOaVh8q/31UZpy3Jqi09P//qsPPwaS/AMP9M2Tgsu/avJupJ8UHkj4fwIC/gzb22Vr/wToT/gD2XXzYpVad5C0pO5Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BN9PR11MB5435.namprd11.prod.outlook.com (2603:10b6:408:100::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 13:24:36 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::a226:f114:4de2:5762]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::a226:f114:4de2:5762%4]) with mapi id 15.20.7046.024; Fri, 1 Dec 2023
 13:24:36 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Poosa, Karthik" <karthik.poosa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hwmon: Fix static analysis tool errors in i915
 hwmon
Thread-Index: AQHaJBH3GDund5pAeECk8KHzB5cSTrCUaqZA
Date: Fri, 1 Dec 2023 13:24:36 +0000
Message-ID: <CY5PR11MB6211CC6DB5DB22A8E71E6C029581A@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20231201045803.1131795-1-karthik.poosa@intel.com>
In-Reply-To: <20231201045803.1131795-1-karthik.poosa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|BN9PR11MB5435:EE_
x-ms-office365-filtering-correlation-id: 54816a09-a2f8-42b3-313a-08dbf270dd01
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RMKSwVgGxac8R/omHm2XcbPMeznO4TkGGRTi9x3kK8629te8McFHWFUYb9ER6MqukEUG1JVeTV9y+iyCVyWw5A9qOzkIAA2Sr6p7TwLNDkNDrbVmQ4Wht5hPlP1E28pRowa3Kok1nRbNuAVf1HveJstaUXophF4RYbrQdWG5rKVXYf4UWCqlVmaf9pOUJRBeE/O6WWUIKmob7alu4FOcnNFxG+GG6ug15JPMQbnX1XZnkT4gW3G/OmjvRIDX1hJpnjnWVk9HISlGBSS4yHccVmJ1hvu5K1eP/L1lqGZi/BjfWX11agPcW9YJoxZdGmVg9igazwjeGQVHAmV7i6DQS91Dt5m56PRY316LWN79NmFtt4Z2R2suqQy93g/DCq7/Q++YQewW6gAxUI3dkZpcXTO0zptvzoOp7B4bAlfKUKLs8doru+VpP9qAdIpLzJTBk60ZTTMF0mnIOBFWO4+jonTKKMtH6rWRePNVe3z7hu8NIPd3Kh2whRcfTCtAns/3RSXZuTcPgWFZ8RlNrgLz3fR3TWb7h1mrDc5kuaJlP2cAsWHCnjulwmausuQxPY+OaHnYvKISCWAQCsOuqyVO/NcbvdXabKDBelkOM4092WHS/2wbCgZsA2Ul7cGRvM1U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(86362001)(26005)(83380400001)(6506007)(107886003)(53546011)(7696005)(9686003)(122000001)(71200400001)(8936002)(4326008)(8676002)(5660300002)(52536014)(41300700001)(2906002)(478600001)(316002)(110136005)(54906003)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(33656002)(38100700002)(82960400001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BZhnl2mQfXZ5rPT0qaLy9Gpbbo6yJnedBefAl1xDXCTLqZXJaVvhVITH27tO?=
 =?us-ascii?Q?eHA1OmkoEmhlCE5DoYGXH/5iwRnh/zIcJzznp1plnoJkVNuYPd70oQrNM/fa?=
 =?us-ascii?Q?uxEeSNlEqMCdu+semxP8itRSfAyMPHe/jrFYlx/WMjCYYOOt9p56Tf02mcfa?=
 =?us-ascii?Q?o3XZFJuq6w+mFkga5wGi0g8ZCCuFJOOM4qYFeStQaEv5PdGbkeG2Ne3HJl5H?=
 =?us-ascii?Q?BPBmLtBSUvrIQU/m/eVRbs/SO2p4W4mdPtwPVRdSjcpRL3FKZCKJlgoRlMD2?=
 =?us-ascii?Q?6xqExIHew08L7TO5fFoIvSW+h6DU2Jx83n3rAOMZVlogn0DLaWANvDGBPNaz?=
 =?us-ascii?Q?2uZpc6gSSN/wAhHkM1J3ikkZAu5vZetjagg8cbE+rYzkqdzrS/YMdmFoFO/h?=
 =?us-ascii?Q?A8imSr77zGjsKlLIpOaQjXhvKZsfMMh90U9SsffdVRS12OfD9B2CeNOyM6fa?=
 =?us-ascii?Q?BP1DT4c+Lj0pCUahRVAucHwacx+0+AiQAyYBCLaBliSRRpldr87BSPIdHQ3K?=
 =?us-ascii?Q?QGvVHMkmrL/r2IG+taUgs4yj30PqTwkhF4ZhDXO4UCYL6lx+u6HNv23IjYsw?=
 =?us-ascii?Q?c3Zr//jbavcpWe1PuGO0dtMVusQfSQkHLNTwiQDXZMYla4Q6QfDJAsyUgdvd?=
 =?us-ascii?Q?X27BcMnUORhDFVPb9+3mHKttwmU+BzHeEw3vBARAt1Y+cgcclYIp8TS0D+aS?=
 =?us-ascii?Q?8nFuvdMH4XdCYclMkSftDLiptjLJAsBTsKcphIyScx2VhURqd8R22QdOhvVI?=
 =?us-ascii?Q?aMwYDPUFib9RRQtiLjDcBuGebqEcJiv4iIs5caqiCAKpf3QNoa1H4TMbOomG?=
 =?us-ascii?Q?x81HIKsv4/YxrfRoLusxT+4w0Sre9BZk1z9sN6Yx47cqwi/xIZzrJAMUObUZ?=
 =?us-ascii?Q?yHKxvFgKnBfecE/a6biZILTFqrRYkyAxkb09N+Js1lWT9p/NSoXC0G8gtuKl?=
 =?us-ascii?Q?ESl19ZC+iBxikCy5JEH1i8iYnfWNIddz2a6QLoLzLcnf85NOGhSfm+IFxePx?=
 =?us-ascii?Q?WkDC6M3pRZ0zhkVN7DOe1mnnvcUhZalHPQp361LEZ0lvpwR4buN1rEWbOnDV?=
 =?us-ascii?Q?7Xrbrvg3u+lVqQR8Zr34LAgZEuM24JYO3VjFuQiy5UupCiN/8xjuEiemMBbB?=
 =?us-ascii?Q?a1fWcEyO1MypzyKnHXIxsCDBDfEZdjxcfHGYnQ5U70O8dB9TZZFcTaQ1vw3B?=
 =?us-ascii?Q?M1powQkFYkEJeeeHjUMoNceoqn1gjFlNEkbsaOdlClSPNWvyeycIXM8cJykU?=
 =?us-ascii?Q?bTvAhg4/pgCgsIKH3kYad2axSB/6aHqzb132l8DqROezCmObokL+n9zYoaFD?=
 =?us-ascii?Q?rFm0ESIUyRmMPu+GyiedSug0u2KAH6p+4qpj3Qoa3DmzZDI6nkZEv9VCjGny?=
 =?us-ascii?Q?YibGtUeKo0DTwxbhZRvoPoCZEFnntWnlDgWG3M2xLx+jxIxLd2v0KDdibQoC?=
 =?us-ascii?Q?g9hrVkk8N4pOkfTB03hz88AeEJkgkf0bzeoD6Y+wLdJ4CEnMXdcJojCI3TY5?=
 =?us-ascii?Q?DJGZ9BqFBcZhMTljt7OpF9Xx+QDd8LYm7nYMQrSx6mocIbzR8QhIZHTl1PtC?=
 =?us-ascii?Q?DA3Vza0gea/vw3DKc2l2R0jYZi9r8S6fSvlI2Vpk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54816a09-a2f8-42b3-313a-08dbf270dd01
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2023 13:24:36.1117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WXgUCv6x6Twr3QbnuR323deUQwfgtOC1PF3EgpMqzetwtJs7dwZRLEDLWTxtsDo3KwY2Hyp+4i79Fpci97YpjykyqLHa/BHqaiUe0PAVQNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5435
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix static analysis tool
 errors in i915 hwmon
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Poosa, Karthik <karthik.poosa@intel.com>
> Sent: Friday, December 1, 2023 10:28 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>; Poosa, Karthik <karthik.poosa@intel.com>
> Subject: [PATCH] drm/i915/hwmon: Fix static analysis tool errors in i915
> hwmon
>=20
> Updated i915 hwmon with fixes for issues reported by static analysis tool=
.
> Fixed unintentional buffer overflow (OVERFLOW_BEFORE_WIDEN) with
> upcasting.
>=20
> v2: Updated commit message with details of issue [Jani].
>=20
> Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> b/drivers/gpu/drm/i915/i915_hwmon.c
> index 975da8e7f2a9..8c3f443c8347 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -175,7 +175,7 @@ hwm_power1_max_interval_show(struct device
> *dev, struct device_attribute *attr,
>  	 *     tau4 =3D (4 | x) << y
>  	 * but add 2 when doing the final right shift to account for units
>  	 */
> -	tau4 =3D ((1 << x_w) | x) << y;
> +	tau4 =3D (u64)((1 << x_w) | x) << y;
>  	/* val in hwmon interface units (millisec) */
>  	out =3D mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time +
> x_w);
>=20
> @@ -211,7 +211,7 @@ hwm_power1_max_interval_store(struct device
> *dev,
>  	r =3D FIELD_PREP(PKG_MAX_WIN, PKG_MAX_WIN_DEFAULT);
>  	x =3D REG_FIELD_GET(PKG_MAX_WIN_X, r);
>  	y =3D REG_FIELD_GET(PKG_MAX_WIN_Y, r);
> -	tau4 =3D ((1 << x_w) | x) << y;
> +	tau4 =3D (u64)((1 << x_w) | x) << y;
>  	max_win =3D mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time
> + x_w);
>=20
>  	if (val > max_win)
> --
> 2.25.1

