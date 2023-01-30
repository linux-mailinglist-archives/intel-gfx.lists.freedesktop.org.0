Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD0668180F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 18:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D5010E027;
	Mon, 30 Jan 2023 17:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB23910E027
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 17:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101442; x=1706637442;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/w4qCcNxuVrcvwRsHXAP/+XPRFwcXVaqEiufI3KR/Ts=;
 b=H08F8a5qYY8cAnEiIfqx/d7FT6OlZPWcAm7GYXZ6FtzS2kdZGF77mcl3
 b4jOOyV/6HXh3rJ4Duiwv82yON6EcF7dkXyVVDXH8HVAvOZPDH9fOsvoH
 0rtPJjIGh+7x+5UIAAez/ejftVzhMlxrxY74P08PJz5NvJRysYkwx1hC3
 enzBtSxgiQzxxcz/7OAIw7Rqic6yc6tLFy4Rr+3uRHwoB1zUn/Na34wkp
 fSpE61KpF4bn4RZFaI1U+jR+O8dulhU9L8cIlOjSbWaJkwA1RTv2m2HKb
 TobQKwOIz8OmKAL5+j+OVaUFcDC0UuQ1rcWLpHSuXnMM3WATFxzg1+pmh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="325323107"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="325323107"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 09:56:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="838050099"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="838050099"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 30 Jan 2023 09:56:58 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:56:58 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:56:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 09:56:57 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 09:56:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6c3+3xzlfZVpKZYrJNGCozBEMVfWzMJLiC6zAFKfwWnuXkLEr+APhZROyxVb2VND39XBmcs+/6tPGq1Xz5DXJzluYDJjM1RQftXHBabpjRnoPjmgD71mQp4OLJGcXanonofZJwmh0/YGAWegDwlbmJNDtP2SFF5ZdEMMwXR65LMezN4SqE3QryE8UIn5s1BrrQa691lRe73MaNldP4BhPTRkUCHDMmPqhmXWjR6q/h+xVr8wbDWjzaKzqZmj4Fss+xKDMibNWcNV572yeXcSLAkD88rcZX/ferHt0oE2xkEf6/dVC2NjQDN8liNrccPVjM6OUV969lYOe6X72kU9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qT/Ho2UbICT6DpakL9UNMiM7jKq2DRoJ2Cyejdsmd2s=;
 b=ZtEGTSbxQY1KQshUYZf3edK3uCrgwGVfPCKK0SSSCdFM9abPaVE4iNf5TE201ak4JbvWKlfR+Vm5aG2MQR+i/DE/VGgSMrGR6Up+S6F5MVXcGf/mTNo+IeOFIKzX4XpKZ6rh92TbPwawT3VrPbA6s9xVCtWMnr8qXzFkVVnjzaG6r32AlyHKJEOLk87yP303/OUqEcDCKkrxhIJbkl17guIhyeFuEV6av6i1Ejp3EUfYJBeAA4f4TS8TsRaQu/tkT9KlZF601JSkK5vXGrH39kJVj5ELyaYGCN/Z6jE/W9TkXvR3RV+lt/9f5FTgd/BBAJJTfE4/H2T4VMpKnvFEFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL3PR11MB5700.namprd11.prod.outlook.com (2603:10b6:208:33f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 17:56:51 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%8]) with mapi id 15.20.6043.033; Mon, 30 Jan 2023
 17:56:51 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
Thread-Index: AQHZJmoW+Yh70yP6m0e8tlXtjYwS066bDSSAgBvqa4CAAGPBoA==
Date: Mon, 30 Jan 2023 17:56:51 +0000
Message-ID: <SJ1PR11MB612949F953C67FE8CBCFE6E5B9D39@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
 <Y8BGF+6ygAV3vH3Z@mdroper-desk1.amr.corp.intel.com>
 <87h6w844jy.fsf@intel.com>
In-Reply-To: <87h6w844jy.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|BL3PR11MB5700:EE_
x-ms-office365-filtering-correlation-id: baab3b51-44f4-4741-e7f4-08db02eb5d82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AdWoQSbtLCg2GuEfd45PBmJK5WRLOaH98kaxNxgE6xmQl/dhy7gSo4vxMyuodpTsb2kHdmFd/LwVqxHr3rxIFuPkkOYREI1GA0Y0ujNkrMZsspOAqiCteDFHlPUsmgHIeVUB4ygooQBu924bF3QU6WEQcQ+QxiuRl0fvYUq39R2wvR67CIw5utOvai2iHcXkU531v/gZJlBRmDMAbufNk/pMREGTYVF34e1s7u9zFj3WhpV+WM94tlDtFP9Uc9LRVxTxYAaoJkLuZtNUz3BnR3Jo6HGLDcixWPnLFJEzVgftRvPcgQTUsBT29YBAwNv5JOuYoVpEFxKnrlDHdI8I0Ydodr6zOZZdgOsiaI5VStm28dSg0gsuUhvej2swvW9i8IQAu6zXJtELrlPZj+Tum5k35sDMF3wYemllvwXHh4K3YJnjffyMotbHNoBKnwK8NvVeZ9ME0yEYxKKTvQZxpNg9gRxjz5GlthWssSSWrKuSL+FmCuSrfNyndRDBeC5pmiUdxfP+IRu5iIHlERLQag4Bzzgc+7W13MQprZwhWozapXVmzpsqUBvGnTj41iOoogWNkOoiT6Kqk7WfEO4BRZz4B2X4Z7kk5A1zUo/SH25DabIaJh4dTePqFYIOm6XxfJusQ0DibrTawtYtmIIJWQgmqftaLUM7QDfgrCZJDX2ydpiVxmGHX3f7HOGr8CWDJqRP1XI39LEBvKXHF5EObw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199018)(83380400001)(38070700005)(86362001)(38100700002)(122000001)(33656002)(55016003)(82960400001)(110136005)(5660300002)(6636002)(2906002)(76116006)(4326008)(41300700001)(64756008)(66446008)(66476007)(8676002)(66946007)(52536014)(66556008)(8936002)(316002)(55236004)(26005)(186003)(9686003)(6506007)(53546011)(71200400001)(478600001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?psxS3IrxsMTg57vQsd9DFh14nvFRO60vFLXhd875vloQSYE0HZBgDw3zUxZP?=
 =?us-ascii?Q?T5hU+C1tJlxGNVpPJsajwIvZIxPUqP0pjTzMSFxtIyAgFwuJ//Hqk8MTiB3e?=
 =?us-ascii?Q?+/H9oWJSWadzrGaTEMvtRjGqC/ioRaNuQpRdn//DOBGUQ/hyVhQkROnsIoER?=
 =?us-ascii?Q?Y1XETqYgrC5z4574lpN1qCp/E4fAiAk6X9lmri59f2qwciRFyLWUv+VPp4xJ?=
 =?us-ascii?Q?Wlvn9dGtzy9E406LwGraifGTb3t6bnxsV1y95KRwBvSTXqwjul+pBgMFj3QB?=
 =?us-ascii?Q?Z1K4A+joKt/Imutu5C1zJ06H7X872mzcOrYRzG6OlTAihk80pB4yCqXzbGFF?=
 =?us-ascii?Q?HLKHpLZRDKZylYneX5THf63Y2ExjD2Dds0vPsoIYxdjSCXYyyW+hawkeEySg?=
 =?us-ascii?Q?Sb37OpIYjZuW+WDiYKpYpMiUBuZvYFwZFPwQea/BLkjiiqM1LqKMW9EkuP7o?=
 =?us-ascii?Q?ADVsGRhDNf48id1f9V5iJHqurbcWpVbik0dnwqanNzQOljLVufDCXZ1P5ky1?=
 =?us-ascii?Q?Bu5cJpVqxTkNkdiIQTcUnvbY/GwTaMmHr5Wtav69G+a0cVmZx1fOcacu7HE9?=
 =?us-ascii?Q?v38wgRybZt4Bxdv2Co/FT8IVJoLDpOgAF30Gu1OGgJFf06f2OzG1UB5bIylN?=
 =?us-ascii?Q?xECooUYIDbyBlI1EoXJWdCzdaC1jpSi4cub4ejkDX2KAc8kczrO6pCB1G0Kt?=
 =?us-ascii?Q?RUk+yO/jNF/6xihYakwx72/BOWUqIj8NMH6vYx8pvv5NWfZKTnfK6ByQ0/hP?=
 =?us-ascii?Q?Dh0dp8s421KwIwgmGhL3gZiY+VvTU4aXI2tcC5S2MLugNgyU9WLmRXI5poNG?=
 =?us-ascii?Q?RkYxkPgbT1F8+z3R2ArwepBhndDzgvds8Jz6o7bcEHJ6JwcVc0e0vGq+QXxV?=
 =?us-ascii?Q?upUkAbLahu5QnvJ+ts1sGytG1eK8vk9YEhW23giJaYMi2cgjoKu6pxNLo4PJ?=
 =?us-ascii?Q?0mglELlUFCuhEgwUCO1rfzKfLXWNP6WujvwK+XSnTIqe3eUI50LVumGIMkrP?=
 =?us-ascii?Q?uLcpiZCfq4R3hZ0Yi/my9adMqCPHCVyXJrjlJW5syi8XxhLFAloH2gfE7Van?=
 =?us-ascii?Q?p7UEUY2TSihWt+VUBa6e/8zOjVVAk1Lg6mq7dS4uifkUmsHG5VW+im9Coc1O?=
 =?us-ascii?Q?98iU8ezSmO52BdTFLhRECPjYrkBB7vKXow8XIoBU+4gvPKIxXerIA2wBBTSO?=
 =?us-ascii?Q?NBeMJ9CgzW7ndx++jQg2kk7cbPa6Ob//5l2G11E+bW+xeaMKNtnCZWk0S9Z2?=
 =?us-ascii?Q?JC9Tp/w4NtitHA1zgB6GoL7+MRl8Kx8UooS/nkqgynnEP5GBcbUVHKO/UHi9?=
 =?us-ascii?Q?FH1OpBO+RcTDjihIjqI9TeB8IswWPNr09XP0C6BWLrj6Pq0r+YUOTTw8+iEk?=
 =?us-ascii?Q?gYSQnIJIues5tK18PJUbu8928/OwpHWI3H9s6YYSOAFHDcIXEZo9Fd2GgjGw?=
 =?us-ascii?Q?aR0LH3DOmjvAdhU+6ayHfg0/gbkOA+3Sv0lVhfojBQ6n8Kp2VP+GYyKfTZXE?=
 =?us-ascii?Q?r+tBM+abZdvNfTmYPv8MPt7i5zNa2iAcGEabtcEfyvwWnQfDiHLezBQWWJKL?=
 =?us-ascii?Q?nCohKeUcXFrJQoosH+ZaRR77Hpb4GDeRzj+TJBsVj5QrpvYaqhirjx+kUGHU?=
 =?us-ascii?Q?EA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baab3b51-44f4-4741-e7f4-08db02eb5d82
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 17:56:51.2018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7l7R95RYjPPtlGfzwqzei4RnMLCScYTofimrfjurX2UWmr9ou38NusKcChDWILmvNSe31QK2U+Iqd/WycrxVSE/1OpuZEwCPXwiMmpBHouc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5700
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, January 30, 2023 5:29 PM
> To: Roper, Matthew D <matthew.d.roper@intel.com>; Borah, Chaitanya
> Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
> clock
>=20
> On Thu, 12 Jan 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> > On Thu, Jan 12, 2023 at 03:11:31PM +0530, Chaitanya Kumar Borah wrote:
> >> Fix typo for reference clock from 24400 to 24000
> >>
> >> Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> >
> > Fixes: 626426ff9ce4 ("drm/i915/adl_p: Add cdclk support for ADL-P")
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>=20
> Pushed to drm-intel-next, thanks for the patch and review.
>=20

Thank you Jani.

Regards

Chaitanya

> BR,
> Jani.
>=20
> >
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> index 0c107a38f9d0..7e16b655c833 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> @@ -1319,7 +1319,7 @@ static const struct intel_cdclk_vals
> adlp_cdclk_table[] =3D {
> >>  	{ .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 1=
6 },
> >>  	{ .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .ratio =3D 2=
6 },
> >>  	{ .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .ratio =3D 4=
6 },
> >> -	{ .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 5=
4 },
> >> +	{ .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 5=
4 },
> >>
> >>  	{ .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .ratio =3D 1=
4 },
> >>  	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 1=
0 },
> >> --
> >> 2.25.1
> >>
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
