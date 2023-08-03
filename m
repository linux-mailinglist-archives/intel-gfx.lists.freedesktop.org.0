Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A490976EC74
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 16:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0389D10E1CC;
	Thu,  3 Aug 2023 14:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F3DC10E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 14:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691072738; x=1722608738;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=eKwFo56f1A/3gtepdyzjLgbgoeWTBqgrHpIhLUNTvRY=;
 b=GSm3n9H02SjDlgQLmTn4cZuLQ/x9Xh94NvfYFaCa1aSGIgZ/00JpZHqf
 8R9SDHI0/U5gNFPXEMKf7rvijspADKubywPSwhA0zpdc+LfXtPgn67FMz
 CbHxJianoEZqq7mCEQgr7qoCIfOtww7QloN9HbD73wtBKfuqU8zylpJqa
 noujFwdJIcSdGUlE5HKVEWUSqGORPemjTHmkgHhQ8a0Xw3ZAERI/Ng+sx
 nZxsppWUSHzDTPkvYqeEQ+Eu9W460WG/tuEKcAVLS1PsGMLG7FVakUkcZ
 gHdvCegvSTrEZzz6dy7pgsx2jgb/qvAXwAr5Oym6MTk/9UVgDt5aTssEo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="373522093"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="373522093"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 06:58:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="843598913"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="843598913"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2023 06:57:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 06:57:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 06:57:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 3 Aug 2023 06:57:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 3 Aug 2023 06:57:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHpeqy3KShezcq31DKEr+LWgqtqpMIVMj8HODRNbNY95q56069kjSD9VkA8gX5fWyxEzbd9zdYdHeMJrReM3Th4diHCBnyF4RfJh/BD1IhGsu/ZcSawxQ9bJf7N3tOX1ECtHt6dxPzUUmphbFoiV+J1fO8YeC2iqS/NyG6ZqgzMikw1F6lQRgYpxrsSBlRpHSlgq5PrVp3tiQMky8a4C6A3xIwKKWCNgcvQ8Zyzz+kMkVaSWO5oMrnFB2UpetAc672wyOP2RFCgkMLtu2mZ5uE8HHRcXvQd0w6sgc3JYyS+y47G7s8BcG4aLSZiextLMFcjXdppaubVJBH3x8av7sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1MTKViNabvo+l4lNuHfCLQ5/Rgx0YoUNWUb1uewJhuU=;
 b=IZkuCadkAvzqsyQ1T4SnlTK6NrSS9TurHlqL9S1ll/YLLCwl/iKW+ghi2n8rwEIkTrhhoHwWMDSjaoK733kxv6JMKOMqUG9EjALy3eKLpwVKwa+SGCKGFPumaKyIkIHjpTp+PBLg9kQovOr8vI0qYKiz/0vTNKUw1rEJGIG7dhmF2KNj0dx0I3BXwSO10KOIwZwkG5LlHXZGBlA0jHlmTtA4DogyzelH5UWNmiWMMbgp4iN4+CXrp0+CkhBIR22dQ6sE7p3ZmNp9LCHkzWJZmG7QW5sYr9feUcdEbSZKNNQHD9nNAbGPq7V406X3k4NbPPNmCQR1QpnrDQJfGTT7Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by CH3PR11MB8240.namprd11.prod.outlook.com (2603:10b6:610:139::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Thu, 3 Aug
 2023 13:57:29 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f%2]) with mapi id 15.20.6631.046; Thu, 3 Aug 2023
 13:57:28 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/xelpd: Calculate first_line_bpg_offset for
 DSC 1.1
Thread-Index: AQHZxgjzESFgUqXVVkCHESXh8lFqnK/YiM2AgAANx5A=
Date: Thu, 3 Aug 2023 13:57:28 +0000
Message-ID: <SJ0PR11MB5894063721A19913AE17195CF108A@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
 <20230803124913.210370-1-william.tseng@intel.com>
 <SN7PR11MB67505F63552B774136BC3225E308A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67505F63552B774136BC3225E308A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|CH3PR11MB8240:EE_
x-ms-office365-filtering-correlation-id: 817e300c-3ee6-4aec-8142-08db942992ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gSnbRnil4dsBrlRpAjgxU9FyAL1/Z71TpSG0DICvDPFn+13um5nmcnEzN815DVPBVv9iHKmdpJ1M2N4OOKY/1cQLTL3eG0ro7/krpxJ8qrt5ONOjVMgFU1//nyEOSi1G5b/omv7RZp+U+jQUu/RqpRDzskrtWnY+s+fJzFEIy2gaN5qaa9elpesEnlyYxFaP+hfpJQqWA23rbvT31DRknH548D2fnykrks+Rq5/KDssgRA+v5/vez1WYczGmtaHLfwSRcSzVNBaiIBvEbKwyvaN+9PR2lWhW4/VVnDOvHgMXqfNYNyOQMP2Sk4ZjcGqwJD1N0eTDY/BRp5elrQ/945ZZTMY6yQOot8VNHw5k+f47I8ZRuq4tFp2tm7M8r/vzPfEXhgCRTlAXZvpzlyDvZlF5b9u+dLypAXH3hBjvR2tYcZWi5FRPdhamATjfs+QCt42/++NeYJZktkurJ8irc+BTpMcZUkYRUQ/WIpBC9UFZFNhd+H6BdscDu3KUhePjnPE6E2Q0H2bZOzGqVd5jk6+mYc0TfhLI/l7hbQpDEosoD3vxfakTT6r1r1zbirlHpGHuQp3/3VA0bhffRH77l3Lh1rQlXZsFUvTRd7ApOtPGLLH/HZqwibH+IfLOnOEn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(396003)(366004)(376002)(451199021)(107886003)(53546011)(83380400001)(6506007)(26005)(186003)(41300700001)(52536014)(2906002)(66946007)(76116006)(4326008)(64756008)(66446008)(66476007)(66556008)(5660300002)(316002)(8676002)(8796002)(8936002)(7696005)(71200400001)(9686003)(478600001)(54906003)(110136005)(55016003)(38100700002)(122000001)(82960400001)(33656002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?koi8-r?Q?MBWeKgqI5pThGR/T+1JQMh5i10mYQJ1dKuWlXB9R+2lwMw9A92BUl15fFYjc6S?=
 =?koi8-r?Q?HyYnORc6sPMztLtZoCWU7++loUOUObfr9SbmKasxaK+W+N+qjo74okTg0eh3yd?=
 =?koi8-r?Q?LSmqPIRbJll8BAqGZ9t9xLwJGPNBnbIR2saPrywOQVnzqz33GKNqyktKjG3IIM?=
 =?koi8-r?Q?83BS6hX66+MuXLy5N2ZW510YCNjiNMIK3rGf+gvpW0rmX4NHf5E/hqlO9B7KRw?=
 =?koi8-r?Q?R36/G4wNDKjKciYWoY2XokIS+Vee3R8Tdd/LWjK1B4DykpVUmuciC7qR51PFCy?=
 =?koi8-r?Q?NL1HJBrR+zq/kNEwu3BbCikQIm1FyhrBWui3eTf6a3L+6lC3k2NOcEyTymYlba?=
 =?koi8-r?Q?Npridto4V7Qr3T9ow49OLqtX1ZX4DBiIu2SVPBNtdsxpgT7uIzYOmT5NjhQQYt?=
 =?koi8-r?Q?ekxNkY6pKqhhOSgDMWx6X5YuyYSMng0JNtPvKJ57Jd8hpw52Qalc8Dw90Sm5H3?=
 =?koi8-r?Q?1yCMv6g6S7qjwy6T3t2+BMcBH1Vv57CYbv1chRt3RsBWaoEGa9ESsoXNZ5Wfnl?=
 =?koi8-r?Q?oiUWfbjb8M2Sf8r7n4C2gx6lTSSSQtphR8Z1h9aOmRGxV4y1A1R11hVn6cj6JV?=
 =?koi8-r?Q?LOxONnWoZAvHbZBXFyXlQ2zd2YAbce+Kdvz/UrA/iAaH8sSsOh+Oi2XmSQjobt?=
 =?koi8-r?Q?iUX0gCQ65rYL8PBYtGnarRff/y5iGSQTw1Uq7/nNwDPJpsLY/cmXPmRrbPL42c?=
 =?koi8-r?Q?S6LcRn8BHPEm4UAGCmIrkw7pJluGiRjUX1Du7dpAsI+8EqSewEvi5IAvG3+5iY?=
 =?koi8-r?Q?eFnINp9TP4Z1hK41QUuLTD5SSf5AG82HqB0COnyY0jcGEb34HGzCoUanagh0k2?=
 =?koi8-r?Q?evM2QehOwgVWAfLbcMRFXHV1vCrCTVwA2pEZJdOC1g1Vy1vg5ZJKQEhcNFmzXT?=
 =?koi8-r?Q?6k2gzy8XDieEGXb3OjNg8CASYTkhrskDpe/8yLDx7kXHPoR693rZ7VivkTHt0W?=
 =?koi8-r?Q?lmeov9stdjMFws63CYKjHFLCpPQUVcTux1h/AvMtRYCDQBpNiPa72YYBCGgYY7?=
 =?koi8-r?Q?+HzRmAkKkpqiGxbTqYGIY27IewbpM53qFfl0YLlqOq6fmEDu9k76LIoAbuJnt2?=
 =?koi8-r?Q?MpL00saxrh3RdCHrE1z9V3Qzyh2M0Zz3yDN6enmhGAZmDU0YUHrQRa4P7pZeBD?=
 =?koi8-r?Q?7X0n9yhcyskPittbSHlh8OLfHu4kQsJGMfkakKtZMm7eg2d/ZmESaJ9rtZ1oF2?=
 =?koi8-r?Q?iwbezmrlrXWKsN4tWO72K2fe/L4a3wbV8qxJAPvd5HgeCfkBiZkYFUm4RmiSLN?=
 =?koi8-r?Q?M/JFW7Uq7ntJdcer+hH7YsefDCc63LUdXTc0Qa6qBrmVuo4PaIBD1eNY8Gp2sj?=
 =?koi8-r?Q?w3VOtSDHnxwYsH5kRHAPX8N0L1yPeu5BcwlPD5g+404bdmjYIXXsUMjBlt0ahV?=
 =?koi8-r?Q?IRoEMEonRKkhc4Suo/b6tgDRBxmGJz6wsQ0uXl8SJ4XwVqwwLvHy6dwn3SH+nY?=
 =?koi8-r?Q?kCoC7Qllukqk1cMVj8qv1GLJ+3vw34zZTqDJSf+3rnimRj95S+L1M0PumdRqjh?=
 =?koi8-r?Q?8QVUNZLAWYV6e0gnx2oLkqIrG4x9b1qvmiY2+dt9cHyKnzkjtA?=
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 817e300c-3ee6-4aec-8142-08db942992ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2023 13:57:28.2444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p5uU7nPCZdG0s6z41hP4Zgk5B59uqTUKkKYfGqAZpV0fxEG1u1kc4xZ/wSwdpe7FF5CXqfdRA/UaYbkYwOrxYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8240
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
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
Reply-To: "20230803124913.210370-1-william.tseng@intel.com"
 <20230803124913.210370-1-william.tseng@intel.com>
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the comment.  I am not aware of the Errata of DSC 1.1.  Then =
this patch does not seem applicable to the revised calculation of the param=
eter first_line_bpg_offset.
Maybe a new patch should be created for the correction, in order to fix the=
 problem which is not found on the SOC with display in the version older th=
an 13.

-----Original Message-----
From: Kandpal, Suraj <suraj.kandpal@intel.com>=20
Sent: Thursday, August 3, 2023 9:00 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Heikkila, Juha-pekka <j=
uha-pekka.heikkila@intel.com>
Subject: RE: [PATCH v3] drm/i915/xelpd: Calculate first_line_bpg_offset for=
 DSC 1.1

> This change is required for DSC 1.1 because the current calculation is=20
> for DSC
> 1.2 and may get a calculated value which is not recommended by DSC=20
> 1.1, for example, the calculated value at 8bpp becomes 15, not the=20
> value of 12 recommened by DSC 1.1.
>=20

Hi Tseng,
Please find the comments below

> v2:
> - change the if-condition from minor version 2 to 1.
> - add comment about first_line_bpg_offset for DSC 1.1.
> v3:
> - change variable name from rc to vdsc_cfg.
> - add Cc
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bd9116d2cd76..c7db3bc94246 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -72,11 +72,19 @@ calculate_rc_params(struct drm_dsc_config
> *vdsc_cfg)
>  	int qp_bpc_modifier =3D (bpc - 8) * 2;
>  	u32 res, buf_i, bpp_i;
>=20
> -	if (vdsc_cfg->slice_height >=3D 8)
> -		vdsc_cfg->first_line_bpg_offset =3D
> -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
> >slice_height - 8)), 100);
> -	else
> -		vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg->slice_height -
> 1);
> +	if (vdsc_cfg->dsc_version_minor =3D=3D 1) {
> +		/* The recommended and required Values from Table E-2 for
> DSC1.1 */
> +		if (bpp =3D=3D 8)
> +			vdsc_cfg->first_line_bpg_offset =3D 12;
> +		else
> +			vdsc_cfg->first_line_bpg_offset =3D 15;
> +	}

This code block wont be needed check comment below

else {
> +		if (vdsc_cfg->slice_height >=3D 8)
> +			vdsc_cfg->first_line_bpg_offset =3D
> +				12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
> >slice_height - 8)), 100);

I think you missed the comment from Ankit but if you check the Errata of DS=
C 1.1 they remove the ask for using 12 as first_line_bpg_offset when bpp is=
 8 and use the formula first_line_bpg_offset =3D 12 + floor(0.09 * MIN (34,=
 slice_height - 8))for slice_height =99 8 which currently is incorrect as w=
e are using DIV_ROUND_UP.
Your issue should be solved if you replace DIV_ROUND_UP with floor or a sim=
ple typecast.

Regards,
Suraj Kandpal

> +		else
> +			vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg-
> >slice_height - 1);
> +	}
>=20
>  	/* Our hw supports only 444 modes as of today */
>  	if (bpp >=3D 12)
> --
> 2.34.1

