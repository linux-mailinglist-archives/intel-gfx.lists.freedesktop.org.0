Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7670979A6D5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B06310E208;
	Mon, 11 Sep 2023 09:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ACF010E208
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694425537; x=1725961537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X3MujMCD2sBlr9AeaZorzVZ0vZPGyzbeutj6+CRNsG8=;
 b=Sx2UugJlfEY8UV4nfSjOEEq57lvckYYK9xURgCskDmUGQlnfB52GZgu6
 sPVYyLj2kJ1cWlyAB8pTI1nf7jhv4vF4IeCQf3wtymJbDsGdP9H2Tc++t
 eHnUi+I1WlPRT5wGmhH5fUkw2YZzeoiXONaxjwu+4baCdBhifBidrT0rh
 OM00541tRm7Wvs0XT+jasYvn2LLWzRgXQiDsglZ8ScGgb9bgdQl883VVr
 pU4k1NncUA1SPViKgHezNZ37nrCc7XixYhmd/ZPBOrCV2aOrw63u66+fS
 4o4vhy7YtuIDdt4qWp8UOkW6vFYWoBu4pucSIllpHqKaviXgMeUReUHm8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="444456398"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="444456398"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:45:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="833440903"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="833440903"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 02:45:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 02:45:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 02:45:35 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 02:45:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9uQGulI/COONU/kHWq3pWusNM9Jtb+spB2EVO5xoLrMf7ZDYl3fh0FQeNhS+dO2BX0ArjGYP1TjfLBE+hD0SzhGGmaZ2FSZoRGsii+lWz3HKtW92wHluG6W/5B0BkMfYN4kg6idy3PmdrlYNBDRnKQZs7tD9jah37Ein95+bmupxLRDnNBGYzN9+rr7nHVbH1wpnGDKYwApU3qBltQeRVHPueXA10rlUR0jJlv6lmjcgah7PBkZuKQAtbt8Uz4l6AczTbzMEl2hfMHKRZnC0FBqJ2GTPXKXfNe9xtwrvH3N0b+9lmfErCWi5O9RIqCWUWnJ2/rfGDLUpZhzuSQ3kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tjSeUw8Fraep2QJPfaeYEXZhtS28IbEMheLz+W0QNWw=;
 b=WOIVphKw6h61Zfv769TJT/+fhUdR0eVJderPOkgLprtS6XyKzP4bf2VUKUYbXfViDkdFNO2sbo3slSKYS4Roh35+Op+mVJyFqzSRZ5kSFDiObWQmh+uWDyV3BrFwAqLs24HbcGttLaSDNIrJZmL8ur1b8gFKyQmlbRbYOCS81ZiQ2Q07YC7Z/Xg6Q6qXDLYDkkL0hHFQX3F/CY2ugc0G6Zh2I/dvcThK91JcxbSYGXkCtgjeXB4F5+av+IdedhO4nh6j4jcBeXSDgjXkTnqZQDvVngzgVPNX7iKcs88bWsek5u5+SyJggbxxW4INz+3zC9klf3HUnY9c2O7E91wusQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Mon, 11 Sep
 2023 09:45:33 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 09:45:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 8/8] drm/i915/dsc: Allow DSC only with fractional bpp
 when forced from debugfs
Thread-Index: AQHZ5G51Wx2fmNquE0eLosoIlZZ6PLAVYFqg
Date: Mon, 11 Sep 2023 09:45:33 +0000
Message-ID: <SN7PR11MB6750AF2E150E504B18BF61C4E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-9-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-9-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4837:EE_
x-ms-office365-filtering-correlation-id: e99733a3-988f-423c-25ca-08dbb2abd817
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WmQbyPC//bT6Gp8JbkVsrc5WqT3bReN1EGvaNakBLVWiD5jxrgUJmJiAVBhtfMyeNs05qH1A5LtGwgY/Yawybtl5Sxh5OlcbcGqx43qmpNDzFTjyYyxN1zbrkLQhmfeRWKT47M7mYieG6QG5EJanL8F8jPS6zT0DrCVnNDBQ1WsHs13rX9OHK15CJ+1ly8ti+8BDLIBFwegmi2pWrRS5EPpxg94m5mhWOsuFannR1v9a5b5jTcUzxfM2Ezql/Qf9N1MWzcZtw+lVSeRAqa5t3x7GODOtfGkZo99cYCJvDSvLobahAbiR8H4qywQmj7ILkdbv65JCIfxTznIeUJfwZmENNQTC0ORi1H9h3uMYMy7+2vSPyD3m1xG1TACf4+Icyh+rMpjOMyBrBqgELNRpw+kQy7qfzNYNb2Nya9vevnM+JgBc7pngSxvFw7WkjcIZuXt9D94BLfPBQMcYlFeknD6IGzhEqzpA4EXoNgWpZeKF29oBnz9xLqReqcajTgn2uzhFqlSSdN7jkeVkjJfuoQagl8eNOx4lBQJLUUgs6FnqFZ/p9maccOFWA+/JsBfsr5jo1rr76b+TN0f3Hl14bY1XvicpSKsIz0DGtJrbbXZqxgynv4gSb8a64X0yKX/i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(346002)(136003)(366004)(186009)(1800799009)(451199024)(41300700001)(122000001)(7696005)(6506007)(71200400001)(86362001)(38100700002)(38070700005)(33656002)(55016003)(82960400001)(107886003)(2906002)(9686003)(83380400001)(478600001)(110136005)(52536014)(316002)(76116006)(8936002)(8676002)(4326008)(5660300002)(26005)(66946007)(66556008)(66476007)(66446008)(64756008)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KR50MmBhNGnrtnn/RTB4rSOH0o8+G4kjGtenCwqDTE0+wrS2ZrzW9NGRIem6?=
 =?us-ascii?Q?xJ2n7DWfcxnUyEZgoYVVUUpgnR/NPVUpJ3LbqVIyQPS7EZy/WDivoqo9Zygr?=
 =?us-ascii?Q?UOCrg+XI4YO3sXlkrp+eDO6iGPJ1Z4JzGPrjLXof3g2zBbNx7xBGpoSXQl+1?=
 =?us-ascii?Q?ho8e/dhPMbc14Xs5BqUZZceBO5/7K7ni+8eqe+TpV+Pm3Axgf9qQJy1kObtT?=
 =?us-ascii?Q?UePHLNaWTNMBKjyGLexVpkWAaHtHJVy2lqx7VOoLdTGCVx8d+FDZgC2UW1br?=
 =?us-ascii?Q?DR2vAO9NSr1VHzIQ8nHyicjzxkZ/177ILehXE9jiAI1vWd0BTZxxecVjJqo/?=
 =?us-ascii?Q?k3i2N+Z+nSQhmqVtF2Mvz4B4+Y2wZkxLvEq4zkp03JOmt0MtjN2XRYRc5KSx?=
 =?us-ascii?Q?UUT52iwswCwnjIoFKXMGPxBKaPO1vftx6AsdswQVr7Pcni7b4awstb1cESuI?=
 =?us-ascii?Q?fLXYKzt/ZG7X2QTac29coHfbA1II20VKLXhhyOD2+P+y3nGGfFCnXyQeh/31?=
 =?us-ascii?Q?VVlcnWu97L9eAvLbTINTIyXSkuYaTHbBJJ7e3poU6x0GhA3Pp9nDj7J7b8h6?=
 =?us-ascii?Q?DTpAv/OV6XvpVruD4Qg3O0Xh6mHfKKOFMHl5mjhf43llH7A+aIAnMi7GAPVl?=
 =?us-ascii?Q?p42+43WTBTZMDP82zA8cnTjxmXGCh/ruj/TS3Ty0wKqQUDCbyQKKfXlJgCvX?=
 =?us-ascii?Q?TTLc5M71uYTbbOhZmm0LJMr7il6Fpw71yrBImfWpoDvaRx1ZXJbOt8BXNNab?=
 =?us-ascii?Q?HMm0qDYcSaDZsKFmhRGvzJ7i5RqUYlovYxb7lK4q8BmLyReEwq6DyHowzfjp?=
 =?us-ascii?Q?K/1oOZ0LM5yrJup7t2jRu+jOMmQJ5kGHnRALitMIQMEHQ1NXVwGJhHrOHPMf?=
 =?us-ascii?Q?NoyKJpNzJG/Rz1vR6lkH4jlfXwke5zDH+ifGyqPeJjvST06Xk3jHQ8riqwe0?=
 =?us-ascii?Q?ftrDRcCpHJj9ixoaehPBDx0iTxtc9Htjjs1KfGXmoUolXmgptxAEJ4bLPBwA?=
 =?us-ascii?Q?BGf8drMGVYbh+KhbOZKsLBOwP0FkTcbTAkimbpuoAC/719zLx5uLPYtXSqg+?=
 =?us-ascii?Q?BnUWdHpCsi/fOcl5m9sWaeq0jOJ6R7UbYTlBXFdSfrFTvcr0pcLXe5sbM2jE?=
 =?us-ascii?Q?hQR4YyvAFnWe6T6Q23ASnkNTlEf01su8EnU40RMlQwXL83gX52/QERc7r7n8?=
 =?us-ascii?Q?RgZB9shh88qD5ekBIF3aBeSWn7j5ocTQsmwP2twBiic3ICrluw7SQ3mU75eu?=
 =?us-ascii?Q?MvgUH3IyRyaOo7sZ9K766IKTBDqHVT7FEfEQ5j+kKtmbKugzVw00vETJeTcK?=
 =?us-ascii?Q?HOrXF8S8YzpJ4ycMTV++TPYNR0Ec0x4qdWZFCx4RAcRltSgC2Iui/lTogZyd?=
 =?us-ascii?Q?YXJRcKEWc6nNjHb1TEpjFpWYeKSKFKicpQvJne0CdHUEuHOaeAwAq8YZNPoU?=
 =?us-ascii?Q?J2a+q10c2nZZt3x2V/R6AaoxGEiALWI6V/VnjK97JCVTFJC9zakeMBXRN7su?=
 =?us-ascii?Q?5D22lq5j8aOiHGVE65U/xQDbPfZ1yovGYsZZClCChu/VwvI9xFZy5oZ8sTRv?=
 =?us-ascii?Q?FxLEz3bJqsmGgx33KFepxO5a/mKjw90cUgWbVFSE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e99733a3-988f-423c-25ca-08dbb2abd817
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 09:45:33.7226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nMR3ox8VKdTaHwWxOvp/H2yqAPRBDZ/3tOkzoauvCF/VxfFUYNenP/KO39DnIhM21qSUYIjYFPRRCHw0ExyEkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/dsc: Allow DSC only with
 fractional bpp when forced from debugfs
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

> Subject: [PATCH 8/8] drm/i915/dsc: Allow DSC only with fractional bpp whe=
n
> forced from debugfs
>=20
> From: Swati Sharma <swati2.sharma@intel.com>
>=20
> If force_dsc_fractional_bpp_en is set through debugfs allow DSC iff
> compressed bpp is fractional. Continue if the computed compressed bpp tur=
ns
> out to be a integer.
>=20
> v2:
> -Use helpers for fractional, integral bits of bits_per_pixel. (Suraj) -Fi=
x comment
> (Suraj)
>=20

LGTM.
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 90c92f3dc62a..f6bfbd89bc3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1904,6 +1904,9 @@ xelpd_dsc_compute_link_config(struct intel_dp
> *intel_dp,
>  	for (compressed_bppx16 =3D dsc_max_bpp;
>  	     compressed_bppx16 >=3D dsc_min_bpp;
>  	     compressed_bppx16 -=3D bppx16_step) {
> +		if (intel_dp->force_dsc_fractional_bpp_en &&
> +		    !to_bpp_frac_dec(compressed_bppx16))
> +			continue;
>  		ret =3D dsc_compute_link_config(intel_dp,
>  					      pipe_config,
>  					      limits,
> @@ -1911,6 +1914,10 @@ xelpd_dsc_compute_link_config(struct intel_dp
> *intel_dp,
>  					      timeslots);
>  		if (ret =3D=3D 0) {
>  			pipe_config->dsc.compressed_bpp_x16 =3D
> compressed_bppx16;
> +			if (intel_dp->force_dsc_fractional_bpp_en &&
> +			    to_bpp_frac_dec(compressed_bppx16))
> +				drm_dbg_kms(&i915->drm, "Forcing DSC
> fractional bpp\n");
> +
>  			return 0;
>  		}
>  	}
> --
> 2.25.1

