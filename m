Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F235076E8F6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 15:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812C710E1C3;
	Thu,  3 Aug 2023 13:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD1310E1B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 13:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691067643; x=1722603643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q4bBzeTVnsJ+XDlt8cFtDmAAJQFTzlptmTlZB4PtvRY=;
 b=Ms0RwgpJMvAWJz9547oS3cx5wE4Ds3EH6LZXraaGNlIFu7uzbXJzw14a
 Ozr+G/9ruJLp4ynVBdCHdOyktGD5GydCsXa7fhMd0GFYJeTNdJkBMiDUm
 pBM+2qjjkck4etcgXGDUEZ53E/nZg8Ul3McC69Cl6SeCPIqD2kQNCKBfM
 9nTtfSZd1ELYNit979ANhJ3mTKGIJ6ZE+eJv4gYzmLpkIohumXwZGA/Zr
 /f7BdWdoFrlwU+iUcYkG04eJuwricn3YWwO2hbDgPcd9YsmDsVax/BYbN
 J1lMwwz/dCRynHIVjazxMHDzszwuIfj8EO39oI+acfDB6VjGSwI7aGFa0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="372602499"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="372602499"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 06:00:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="903366801"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="903366801"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 03 Aug 2023 06:00:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 06:00:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 06:00:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 3 Aug 2023 06:00:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 3 Aug 2023 06:00:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c1yIyaY2loMvBwFucQU9ieKUwEv9CKYQwvab+3F7LB1d7CGqjXvDY+RMUHmzLhfarD12Nw4f2hcDmV+AawquNv5boPnbsyGa4XcWEU+QNIxsQ9ulfifNScKGTuLrCUQLbqislmk/MVB9trYube11WAT7qbzFVJ0hpw0Jc0/5FK7IZ9PL+IZLyxVVx6/GZYA2/K1QO2LIu5S5ly2GGRQpT5ccVxMyWyTlgOmYcLfBPYGaiAKf8cgjJRonNsOMuesC1gSNyMSpogCZouJh8pd3NfmAaCTPz54PGrBDAiS9RavA3pN34Cc3POSWHEaNywm3PaSQYHNa6kzEpQF+NQaiBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F3ViPqzgRADzCFM7csh0q9NhlEso0WyN4oMzdtCedl8=;
 b=fZJI0yMr1+rzPvF58g/x/hxoMsINS4f5w7WCLneRnbSUmeHkjrW1C6kYmCJaelTijQyuCGSLaHFjnxIwUKXAuWyn3kVobnK5q7yU6EqY4dtMOcqUOVwq9mWq5jrnNpH7OCC+pHEiQYtT/TE+HzqbjMCQ6kbJf9xy83HjM+TnF4PPv8iZutBHEJvYhPd2d2ouGNFzy3GjDNwAfd82VbLsFma53nZLmWEcpJFD1UZ2tZmXAWnLmfpi9OGf9QlWnDC2ZlhC9t/SIS9NfIyvpDN0Ab/PGCJuXI/osFLr/2PixjGTqvmVk88x0W4H679bp4EP3jhb7mSQSWLhMNZy8pSAww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB7088.namprd11.prod.outlook.com (2603:10b6:806:2b7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Thu, 3 Aug
 2023 13:00:12 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5793:4b53:8813:e10e]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5793:4b53:8813:e10e%7]) with mapi id 15.20.6631.045; Thu, 3 Aug 2023
 13:00:12 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/xelpd: Calculate first_line_bpg_offset for
 DSC 1.1
Thread-Index: AQHZxgjzYlH6nXtybk6puBNjjT/kDa/YhhQg
Date: Thu, 3 Aug 2023 13:00:11 +0000
Message-ID: <SN7PR11MB67505F63552B774136BC3225E308A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
 <20230803124913.210370-1-william.tseng@intel.com>
In-Reply-To: <20230803124913.210370-1-william.tseng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB7088:EE_
x-ms-office365-filtering-correlation-id: dbeb2769-26f2-4185-05a0-08db942192b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S2wSFk+AThIz7eHaMIkEkq2zcwNi5rC3q9RlDq4Xc/8dSLGid1I0JQHAKEeOzY/nCSUSD3K9yL503QK07yjrEm/Nf7fnT8w09l1GsPLklE/GQQBvUvyvfwfV9hXVQjjlF6031ckT6AFFLfFdoLTsXP7uQKgc1eBWsELs2mIpwJ444/qhkSZgmbpBwUo5Nuk+2UTuP6YmJXBxsCxQTgu3UDUdWrZ3cKsKwnDSqzgkUyJNPaWUeckbKPQrqqiCMj+ZntbhpUD1bjSTXn7ZkCtUZmSx2GKIsLBAFCuxLS3TgSnuMmHbSzx5IExbDeiv0YtOtMjtveoCNua7y1F8DSib1+8Ia4RfVFPySBcxmMolbppmrN89om7JCu+cbiBjPOs/0MNHUPbWyipZXVqpMtPyyp3q2Fp7p3hEHfUwtL4FBqbZZI3ebrVo3ZQEsM5+s72ADX7FvdVcxvwOwScvTIkRGO+FoljDEI7G1kaBnfyqPFqtXdtzZBrQGvxoUAcBlX9NFhfwi2O0K+3o1IDYKupqdW2zwCLZg2Hc3UKesq6sfhZYgW3Dd4oS9+cE5Pt54X7ZsVCWzBXxpDFpo7n7BudkTSYNgtmYOH3YTlxTSTtwELzaiyK73R1Cu/U71QVNI+R1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199021)(71200400001)(55016003)(7696005)(9686003)(38100700002)(82960400001)(66946007)(66556008)(66476007)(66446008)(64756008)(4326008)(76116006)(316002)(5660300002)(41300700001)(54906003)(478600001)(110136005)(38070700005)(26005)(83380400001)(186003)(107886003)(6506007)(52536014)(122000001)(2906002)(33656002)(8936002)(8676002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?koi8-r?Q?j+wY7Pye0QT9JXjgpg+mpnNruLTiRcm1Sz++zQQC0SDe4xuNN3ORE9SXyi1p+u?=
 =?koi8-r?Q?NYM3uBDHldqsTD7M8klO3/0xADBuANIlWhOVBNdoXx+PfOZo4aK2AwWr7umPXL?=
 =?koi8-r?Q?X+IGIrnFmErzMsMafmvYy5pHqvlDkX9W5y8rgGujLQ3JlXnn/znG+WfMAocZwn?=
 =?koi8-r?Q?7AdvlRHFkf2ASDOLRFsNNeZPDyxV3nkZRLD1qG+7gESTI/lscwW6yphl3hzkrF?=
 =?koi8-r?Q?l1GOiJwTKlmMvyybXUJ5b0OASWdq3kVhd38CDS4DUblw6dnO0SuIBZogQGTZwj?=
 =?koi8-r?Q?YJ0+6Fh2ZJFDQgAUO62pw8mbIIgwTb04Kz56a4uvbOKM9U4qwGwJsHNbfgKf3f?=
 =?koi8-r?Q?xh0ABYtiCXIcEJmMLnFQyJl6J+QTmdxE9SSTG3c5APxB3ugxIYIFro5/vSylje?=
 =?koi8-r?Q?h3GkEv87Z0v/oiDXuvYH+qQz+kuGVepRX48Jq8pljELfIKVqUrSe64ONsqqjvI?=
 =?koi8-r?Q?6P5EJASDbwqTnA10mK4g2REKMNE0ivfpPzwU4BQVNVmDVFNz8asgCAMlg6ybz0?=
 =?koi8-r?Q?FlGEHfD9fx3g/EV0eq2FFaXeAP3sOuqDVwOfm55/+ioi2GUg7Lp6yEh8GdSUZO?=
 =?koi8-r?Q?9iM872n01+ZL1cKYghT3qZSb9C1+lFQ7a4E+U4iBqSAzx/VAD10lbW0PZqk7UK?=
 =?koi8-r?Q?3z4KDAMIYetQPUpfZj+isM7ZsdIPpYpwJ1x20f57OWGvF2yeKghFdQXzjtTZdw?=
 =?koi8-r?Q?QAFcR9qR4efrBEDefiN79TvmBmjzupkkcy2h5mrwdOFlgUsYhRim0JXRqVQmHP?=
 =?koi8-r?Q?wFVHGfwQaOeMy9qNUcP7d5yLu+CrJ+7yJ81i+H9Qqdw5pct35Z9Z3gQ0NQhT5k?=
 =?koi8-r?Q?3ZVSw4M+7o8WaI3SdClbQLuvtJm0rndbvFqX8Qypq72aY+xy+zWZqb/pqHCPXE?=
 =?koi8-r?Q?fEP/DoKRzaibeHOhJ5lmPMeT5wkd2Ql8frj355xsy2KJtvGN91caWQMMyPiW0a?=
 =?koi8-r?Q?Z897F4B/gSua7mg9bXuHwgKBBu8NxrTkcfh/ymyjP2wvNf/JKMvG9H4Ec3Y/3p?=
 =?koi8-r?Q?2km5fiG32OQC0pcQHOS6ZxnpVFLcqrQ8AcyLmRnQ+so20Um8oBGZfUlZswulqW?=
 =?koi8-r?Q?ZR3hGf5RKev1JJHJ1da9xJwx/iHKUgL/MyylEz53X4TWfOUJcILAG0mhFCx5yc?=
 =?koi8-r?Q?9Lndm3qaJtyFpwE5AMYT9SBfIuRCDB2JOhMkN69QYMa3u73tFIfgyf3jIlU8Jt?=
 =?koi8-r?Q?Tl7eaViaJgXVgP0K4ZynSqoJQCZYkFBs1kRC1c4LLeb23IsyNgzpZukZupPDgE?=
 =?koi8-r?Q?JrUiJQMl1jckAoQuGkkLgtWNH7ZoebpBQNHE5SqtWBpEHIhVbhx2YREcn3qCBp?=
 =?koi8-r?Q?IxDnfzHaVUAJqGTh9p9a0//c+wkOE+7/dElkPhWsgZ1BjN+BcJf9JQqFeJfgTt?=
 =?koi8-r?Q?wgKSwIXxnzMP3qHkcLVYJfEegiek7qVMUJzJIuFFzKkaVvYSv46nVc9PZQhrij?=
 =?koi8-r?Q?GoDJCPDwTOynXnILf5oporhlY6LRbi3riTTrMnj5q0R5JbK7f7e9shOkg+O7du?=
 =?koi8-r?Q?RCEyaPQ+crnCbGkqYQ5m0JorSMo3tlo2r20Gra7Sck7ANxjp/P?=
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbeb2769-26f2-4185-05a0-08db942192b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2023 13:00:11.9472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EWL+7aEDsGc/tiug9KNRJffLE9su+RY/NCjqoeBq9XyEpIa+vk2l5UVL0BIv6ofYD3trulErx5KKczXBbE0ZDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7088
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> This change is required for DSC 1.1 because the current calculation is fo=
r DSC
> 1.2 and may get a calculated value which is not recommended by DSC 1.1, f=
or
> example, the calculated value at 8bpp becomes 15, not the value of 12
> recommened by DSC 1.1.
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
> +	}=20

This code block wont be needed check comment below

else {
> +		if (vdsc_cfg->slice_height >=3D 8)
> +			vdsc_cfg->first_line_bpg_offset =3D
> +				12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
> >slice_height - 8)), 100);

I think you missed the comment from Ankit but if you check the Errata of DS=
C 1.1 they remove the ask for using 12 as
first_line_bpg_offset when bpp is 8 and use the formula=20
first_line_bpg_offset =3D 12 + floor(0.09 * MIN (34, slice_height - 8))for =
slice_height =99 8
which currently is incorrect as we are using DIV_ROUND_UP.
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

