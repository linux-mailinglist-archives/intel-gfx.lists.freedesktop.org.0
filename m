Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C2776EBBC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 16:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22FCB10E1A5;
	Thu,  3 Aug 2023 14:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D748610E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 14:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691071534; x=1722607534;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=849EVIRaaoXjzyEs1dHlRjBiKqk0uTEmpw2ezSWeEJY=;
 b=GX9nBzSUUl0s04Cg5BeQyjsW5YaltBdIt/86VUj/tQSDHVz9cGUhQAAU
 W54Pt6Ed4fd5DI+KP+EBVmLrNRcf6EtD1V/y4IRL0QVO6hV0RLFfNVykA
 AaT5/Bnb1gjaZAYohDCbtPNHUhx7WPDCcOtl0n6IZOdJdArRWVPhX2mWi
 oeMNQZR2a4hZ55k/ww2QNvjm/a/SlQxHH4cL7hDNi4hv2ROK4OAgRXErL
 anXRI7veTS1d9oYg2J+kGEJoRuZr4OkJGqr5m+3IS9ax6MlOplqxMZ9lj
 RaSYyMCKsXM0kuzROECDymHKNNZhLFRupZJ3FCLwD3I0IVYW8mgktyXkY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="436195978"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="436195978"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 06:47:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="853264594"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="853264594"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 03 Aug 2023 06:47:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 06:47:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 3 Aug 2023 06:47:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 3 Aug 2023 06:47:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmhEpK4Qb+TJ+l5ufFp/gM5YLMv2VLhyWOthydYJohMyqX8EN9L/KId6XW3ISWIWU9dp+8IIVfEoXlbLZotj4aId3CaO+MJkBPDOehzPVo2euThy/Vokp2QfLaJhBAUOPPYXPPJ6LafdrTXk9EqdLG14CzxR20r/lj0A/6ENgKhi4aKY5ujc0knjlxyA88HXOZV3LIBgBch/2m9sttDedDoMhAW/Hq0AsghXL7aQvs1CsM03RM8H6vwgR1eA4v4lh0LWII98gx/jtgoirNbdcf/xmrtFihULdYZhtpsVppifgH5Ye5AFFngimwaFcjUxii6ohm9YaWegnPV6MBe5Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UuoRiO8zBp0oFNxcWoGnCaLT/wFDuidBS0MnYWJ9gRU=;
 b=TIJX67SV0+KPww61sO3abQhJTp98T3MFqgioBl7FPVMdFmOK1egcvpxzskJm4xh9339Ai/zX5Z/l2USm2wCASfCecobLm0hPNYSaKpjsIW6nFB67LKrlNjgvweZ7H2o+p4PQsuyLayHt07VxzU6UMnQRkqgeUI28HfaKdYg5wd+F5tUjwYgbWdlivtDEg850BIevCoAO+oesHL6V2P9ONSnDlAx34RAw8KXtDz/5qDbOLHhN7rpnCKMMi6Ti0gIcG5y19iFbdP4dIgs5NcWMtQi1jTefQKiMfM97uwtbXf6b1j3rsO2DYDyt9Y4e5vpQVZbQSGO8aFs3fEVocEtWWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by CYYPR11MB8387.namprd11.prod.outlook.com (2603:10b6:930:c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Thu, 3 Aug
 2023 13:47:22 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f%2]) with mapi id 15.20.6631.046; Thu, 3 Aug 2023
 13:47:22 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
Thread-Index: AQHZxSpQdN7g+XFjD02kjZew+FId7a/W2umAgAAGjQCAAajDMA==
Date: Thu, 3 Aug 2023 13:47:22 +0000
Message-ID: <SJ0PR11MB5894A7C14B9AE624665B36C1F108A@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
 <SN7PR11MB6750B10DB5BDBE772C71ADE8E30BA@SN7PR11MB6750.namprd11.prod.outlook.com>
 <b376d7be-b1b6-e23a-aca9-22ea33f39e15@intel.com>
In-Reply-To: <b376d7be-b1b6-e23a-aca9-22ea33f39e15@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|CYYPR11MB8387:EE_
x-ms-office365-filtering-correlation-id: b48bb305-11c9-4111-8d72-08db942829b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kSAKSyX7OVovjGDYtlr5wTSX1yRM7VSZBPm6Y//Ag2fEALK3BE5OjW9ZDDKin5DD+h1VpokYScg6LJDTMQdFYPLCXnO9A7xeBV/KIhsdF5/h2+yIxqrXg/ZC2iBpHNAwA3PZaxIZKhn1jLJewlQzNlqDQ3G5mXWjf/BK/XvjPGvwQyPcU4OVvVFCDvFDzpfw6CrrKt/GXvsUpw4Va+mhN0pz1wFGGB1jc+CKOHXCBV88t0N8Cukx8lTULwJO3eMnUOrktrPZofPRhxJ64yIni/tIo/S/8Uz7jHE0FKGV2Z1kMQLS1DIrDLjkAM8KOvyPVq2NLDXiZVmEP9UrIbKtPbbkZ0ehg4gCDUeb6yiYomvPWsJ/xLT7CN3Gg/i9/9pZI5VRregxp58E1LFp8JqBInxe8ANauwKx6vmtELa2Cp0h/zGKRzccZqdmzNzQAQ6iD9umoMnwMfAaxCRtITOt3LElMt7i4kmaO8FAXbrOIdVTUqYtBnhaTOBqsNAFGKdJ5TMBWvE5WMBGwsEPHpI4JUFIv84gcDNn9cvfr0m7/kDiirR3INiNzwxRWQihzBxhB7eBRiU/sR3UUjACzaZyhRyrBBQXSgt/leYvAiEwBDrvmbB8Q+d4uLFhpGQhInQg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199021)(107886003)(53546011)(83380400001)(6506007)(26005)(186003)(41300700001)(52536014)(2906002)(66946007)(76116006)(4326008)(64756008)(66446008)(66476007)(66556008)(5660300002)(316002)(8676002)(8796002)(8936002)(7696005)(71200400001)(9686003)(478600001)(110136005)(55016003)(38100700002)(82960400001)(122000001)(86362001)(33656002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?koi8-r?Q?5b01wGdDFtamZemFJPwOxc0DZhXFfBp4GleaarRdgSVRP2sxrNrv7eNQXyfdk0?=
 =?koi8-r?Q?F4o86ReD6s9Luz07fA7Kjt8DlCxKzB68kqZ9KcrCBrArHRElwi3jEPZD7P7x7z?=
 =?koi8-r?Q?vaSwGTmQEagB6YuLgMPlix4FvOhcBqYNFvflmOe9avkhmRayucQdurOj41Okzt?=
 =?koi8-r?Q?csW02Pb6/XzO/+I4atebN3OQyzKVXVGkXxIhJna/nA3KcVkpR692ej2Gmr+OC2?=
 =?koi8-r?Q?+FmL9BNaDDWXsHZkZ/Z2aea65fcLol6gOnTSsD2USrLCchY7ruQcH5qJVbcBVp?=
 =?koi8-r?Q?lkBoOxatSv82uUZvSOXg5ks6CMbrWqMmFdiH+fyd4cjTQ1lbIW0b/8+S2DHkei?=
 =?koi8-r?Q?1gBNL9GNHon/n1Qs5lRzohqyvi3oc3x/buMquj3hbpanYFEFG9xvHu+F18Re7V?=
 =?koi8-r?Q?+L+WZCEKDtzh1HuYl6mGwOIvwoBMBwCV7IXsnQlLuB3x1nc8S4xYx9PoyCfBbS?=
 =?koi8-r?Q?y6bPxpCCYb2MwCZUcK/fngESzyWCHVEa2uv9xIVZ/ZmRl/M0x5xs3lk5zJ7n/U?=
 =?koi8-r?Q?s+Y8SQPI/nA4rDAzvSokvQwQSKc9V6+4t7uwpCpTPitBRRLTw+5UqjpEnq9CgR?=
 =?koi8-r?Q?PFhdcpppHcahXIgKRka7eIlPVZv/KwIk1vkgXD/nskz2B+xRmvkT29hPL+t4rb?=
 =?koi8-r?Q?ocXtlgDCsGXx8FCFvmTfvLCWdxhP8G4ixe/7wxzhYnKJJn7NKSid89qyxqxGGY?=
 =?koi8-r?Q?tm6VFTRdq2SjFF75SXtGxZmebAz5bmwQ2Dp8NZRcoHJBStusIiOcTKrTIg7m6p?=
 =?koi8-r?Q?FlTuDcQFh8mPw/uRnFrp+5in4IZgNtIqefQriqrKuAG/VEsFxEckIfE6iHQrUx?=
 =?koi8-r?Q?4IsJc6jdKrTyfxi8LmN0pDcWVWw7WR7+u3mPsfItChQ7P3jmVwhDdosLHNJ2EO?=
 =?koi8-r?Q?JjWja+Cp8H/BEfYMBLEbCSVoZ2p6YP0ULev6y6ubme3pgTPB8IvDLX7NwLLKAQ?=
 =?koi8-r?Q?NSAdJGRmD15mR2UPZnaifzDgWU03GMVRaNsh7u0Kv+Xuw2RDvcOv0Bh+yql7ZR?=
 =?koi8-r?Q?DbaB6s2K9mynjs9v6+Ldqm5l3z63tWF7sxlqveWf/SM8ea6FZ6EtH5+Sod6lue?=
 =?koi8-r?Q?JRxHG4y8aSSODNqP6aVuLrkyfD5TRtkBKFL1EVYWFAC7Vz7lA3nKWZtX/ubD0R?=
 =?koi8-r?Q?uTLXJoE60xo3a7dME1pDgGwTWOs1hBmQbfFxSG5tQNf6EJvIUyM3ePLzYfZ09d?=
 =?koi8-r?Q?Hlvf+3YFofbd4e3MoBDojXF+59RvSv33ILorEncg1qMaQP8ACCohPX/ILNIMW9?=
 =?koi8-r?Q?4Dszat9DSvFfmjkrGJgKzBazw+Xcv1FFrPrdfvwGIi7Uk/JUKybSGF9tmuIDOM?=
 =?koi8-r?Q?iUPZmHau+7HLm7rAbq1Qoz7Fmg6YMMsjoAw/TeCELDUi5wLs23NLleE5VzkZ9f?=
 =?koi8-r?Q?CBfWqRnfWet66uCjsFfIVTAXI1ULo1lRmSU3+bMN4plfTFR652JZuWXC+utaML?=
 =?koi8-r?Q?+Lhhve911iPeVnNRFdfVvl+9RBoWuWkJFGA8ln98v0iBwCYVPJ0RZoNIE2LVbH?=
 =?koi8-r?Q?y1SBGGdb+wdunYJA2BNHk2ZSoV+FQSjn91E7BxmNE4KnZ7HKnU?=
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b48bb305-11c9-4111-8d72-08db942829b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2023 13:47:22.1971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e8RYi/FLrpOAs0FQn1EL32q+u4Wb/riUfziMonarRw5vVIz5LjQtfCAQaL+DXxNprSDkd7mZUDLrAKJ1eeXKPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8387
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
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
Reply-To: "20230802101541.10045-1-william.tseng@intel.com"
 <20230802101541.10045-1-william.tseng@intel.com>
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the comments.  It seems the correction is for DSC 1.1 and DSC=
 1.2 at the same time.
Can you submit a patch for the correction?  Because the original patch is s=
pecifically for the original specification DSC 1.1.

-----Original Message-----
From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=20
Sent: Wednesday, August 2, 2023 7:39 PM
To: Kandpal, Suraj <suraj.kandpal@intel.com>; Tseng, William <william.tseng=
@intel.com>; intel-gfx@lists.freedesktop.org
Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate first_line_bpg_o=
ffset for DSC 1.1


On 8/2/2023 4:45 PM, Kandpal, Suraj wrote:
> 1.1
>> This change is required for DSC 1.1 because the current calculation=20
>> is for DSC
>> 1.2 and may get a calculated value which is not recommended by DSC=20
>> 1.1, for example, the calculated value at 8bpp becomes 15, not the=20
>> value of 12 recommened by DSC 1.1.
>>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
>> Signed-off-by: William Tseng <william.tseng@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 17 ++++++++++++-----
>>   1 file changed, 12 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index bd9116d2cd76..9b350f5f8ebb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -72,11 +72,18 @@ calculate_rc_params(struct drm_dsc_config
>> *vdsc_cfg)
>>   	int qp_bpc_modifier =3D (bpc - 8) * 2;
>>   	u32 res, buf_i, bpp_i;
>>
>> -	if (vdsc_cfg->slice_height >=3D 8)
>> -		vdsc_cfg->first_line_bpg_offset =3D
>> -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-

This seem to be incorrect as per the spec this should have been first_line_=
bpg_offset =3D 12 + floor(0.09 * MIN (34, slice_height - 8))for slice_heigh=
t =99 8

So instead of rounding up we should have just divided.


>>> slice_height - 8)), 100);
>> -	else
>> -		vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg-
>>> slice_height - 1);
>> +	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {
> I think the check here should be for minor version 1 and move the code=20
> in this block to the else block and vice versa as this 8 bpp corner=20
> case is applicable only to DSC 1.1
>  =20
>> +		if (vdsc_cfg->slice_height >=3D 8)
>> +			vdsc_cfg->first_line_bpg_offset =3D
>> +				12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
>>> slice_height - 8)), 100);
>> +		else
>> +			vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg-
>>> slice_height - 1);
>> +	} else {
>> +		if (bpp =3D=3D 8)
>> +			rc->first_line_bpg_offset =3D 12;
>> +		else
>> +			rc->first_line_bpg_offset =3D 15;
>> +	}
> Add the section in DSC spec/ Cmodel from where one can verify this in=20
> comments

I think this is coming from the recommended/ required value from DSC 1.1.


Regards,

Ankit

>
> Regards,
> Suraj Kandpal
>>   	/* Our hw supports only 444 modes as of today */
>>   	if (bpp >=3D 12)
>> --
>> 2.34.1
