Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E83307EA925
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 04:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D84510E3FA;
	Tue, 14 Nov 2023 03:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8338410E1AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 03:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699932581; x=1731468581;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3fINSmlmT4vhvo6Uv2kQcx5MsADUX2ttKZ6MpRS6vEM=;
 b=Ym6nnr1VXpV5CyObMODKlUOselIxPGoZmpnNawju1+waE9iFhgD4oZz8
 bwDk5tB0mLC23xwvXsXaSFuJw7kdTpPcv4L3iTwV/N6ROc0Ctq6ichbXV
 Mpse0utnebFranrL6BodJdlxFyO5OHl4OecOHbkbFsFYtAZ2EVcAarbDq
 ocdo7uEoZDt3gq+Dq4HH1pLlOHg0JirMdjuWj59/aw4b7wkJ7npuBnS+7
 J7QSarqJ02JEsLj7iGFTTKr1mXnsIWLHAJXY35YFJO9Y8YPoYkqSEpKXW
 w//FJfuwSV5GJtMnIsoZN+p9byoBCkS4im+JAofkvnKOdZM/FQKW4Qfva w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="387729378"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="387729378"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 19:29:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="12652677"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2023 19:29:39 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 19:29:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 13 Nov 2023 19:29:38 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 13 Nov 2023 19:29:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezP3kED4d1JUHUb4M/G4NA1VP/lU/5MgIIxe4iPZLXxBYOQ1PxrPryc7Rmplv/YxaQ2jnhYdOmeYyZdVGbzkpU6O6uc7T/qjVcsiCoXRNAdJajBxZDg/I6dtxKgQL37ve4dKAYeBH7pTlnVAcDUpndS7RUG6TrSy/d7I4A62aPdrIgvjcWmFl2Qr5W0gOFhFp2KJAgRyWBsiySl1sYTyyvzyJuNtvbmAEXmB0DSB/xCVAA1ylrsMSbndd2nu/0G0H4P5T/90xYrs6yXIH8D7q3tdswraUMt40NZAgOs/WR2o4h+JBeWlY2P+QXX+M+hz1ykBBhMps8rYhVFoESxZVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MKPyFDc0nm/0qI8rijDCpgXtrYmw/G5cRjdcoZlNIpQ=;
 b=I6weF37tZgrLDGqlTvxRnhnVIC7g5t5cC8aWfE47o1N2ghQ2zVaAeOFIiEKRiDi10sabqOJcGL06p7iWDkRLR4Lxym83FQU3fZQ9hrYXc7gkJX1XMMaKtoPeCFC78e/TmRdkLNsN4q/C6nY2BgyBC9lIvbs8R1mgVxT4+mgxLPK/AT8znZHu9fUhXCmOxdSPrrB8/US4+2iqWzDAnvNdZpXvxA5YL02cVTtUuoAEynuPEAFm6hzb7rdmHw6CvekPzScE73aACmimBYSgYYU+f4SAp/AidVtq5S323ig2LEqGng0pnEngYzSVuMNJGjmcFeQCAoddmZfomkgkCPuU+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 SA1PR11MB6685.namprd11.prod.outlook.com (2603:10b6:806:258::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Tue, 14 Nov
 2023 03:29:36 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 03:29:35 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix UHBR link M/N values
Thread-Index: AQHaFm2cB5E9VXW6jk+MNyKcIqJS17B5F0cw
Date: Tue, 14 Nov 2023 03:29:35 +0000
Message-ID: <DS0PR11MB8740B50F166F066638898018BAB2A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
 <20231113201110.510724-2-imre.deak@intel.com>
In-Reply-To: <20231113201110.510724-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|SA1PR11MB6685:EE_
x-ms-office365-filtering-correlation-id: 4247d102-a2a7-4760-bf39-08dbe4c1eca0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qht66PBkkzbSZ05UoahwfWCYEfsBU2p0C4PGDzPggPvtj3f0j++stanfFE8yUfgHPFr1xxjklYm1HCStR8DVJHJjXzVdWl4olfyzuqCKRz8lRmxWwTVpx62VJqIaPofY288Xv4IA9hBw8112tcU5kNYCPMquH6Tdr90abxNt5F8zOahl7lPO3QtDgGXAw8yMJ/gCdQRMv/oyd+Jo1SO5+mUxpzxecCKTeYT/bcJp6OL5J1b2saUjkIwJQM23lZIhIA8OQH+LvxYFtMSbbtwK3M7xPLcwf9mooKB1KSg8MCX97Yf/9Aoy3FT5IophI2w02CYZ7hQkDOtVgvXwzdnuPmrtOxYG5NJkxpngnn2R50oHQKb6sO/1WPFbyX1nxmz7tuRXizXrBIkj7QIAEO3PZIrw3/Gqnpp9J9doQqhb5FLUnscmsCmuIvRAJrNsG6R/CrkqpbeyzH6C5zjyJ00knTUht6bHH04pwrM9Vlz3EUXjKnoOOUmTUO0ZxBA2pQ/bz5x2z/jEdL0oCmy3N5HNLzFTDl4ESMBh53lWfuQSVAJQIWnaGwTdU7VqeJ6VobVDoo6+98/A18b4kpE9dU7YmhNNuouO2O6KMhbq5wra1cXwYF/yI/ULzK53/+OkwKMP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(396003)(346002)(39860400002)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(26005)(53546011)(6506007)(7696005)(55236004)(71200400001)(9686003)(83380400001)(52536014)(8676002)(8936002)(5660300002)(2906002)(41300700001)(316002)(478600001)(110136005)(76116006)(64756008)(66946007)(66556008)(66476007)(38100700002)(122000001)(66446008)(82960400001)(86362001)(38070700009)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mSV6IBel5f17JyyALBPPLdsceC3JEDEJFaz/1b2ZjmugQyZ3ek8R92dn+6qU?=
 =?us-ascii?Q?mddqJcROYpa0cbQlXZKFTGuBD9bQMaSvkzNN3PMPmXVjfMmAnD+FhxslC+hD?=
 =?us-ascii?Q?wXLNxJB0uAd33Wqd8kK7+sFz47d9x49LtmTK+JNCDPMKtPunfRnavSrEd8TT?=
 =?us-ascii?Q?wOZTl1B5tvPwWK/HDjwruhYGP8zCQEeupkDxYyycQryalQQz5dGMY58JZS5b?=
 =?us-ascii?Q?VPFYBfQeNzycXvd2JPXVgWnyqKrQsXay29RIH/bmMxMtb5Zz9nrnt2kR+um8?=
 =?us-ascii?Q?qaPgJZyrTXuq+rj03FA0zI+Fw0HNNezg5tIyLciD5Sp3nPrdR4qFP147svvZ?=
 =?us-ascii?Q?fWKbWn4BVUTcC5YD3xetTZB/jQsEcv9lYR4l86P4Z+9wGS0V/FTnFqoMkQMB?=
 =?us-ascii?Q?pDw0efsT6wQ0JiQ44vZQLdusffYQQr2fSm6WndqvyU2dzNkRZoBfUubfznN2?=
 =?us-ascii?Q?PTxzDYb9KsYC4GsPIUGeBMB9K7DMi9UZV3/0zdErgv+O7ddVszf57/IpLbjI?=
 =?us-ascii?Q?pIQmgOuIYGrfxgt52SE3uQInHzmvxpzC8ProXjY6WKQRkqzCVyiCH/InEHWu?=
 =?us-ascii?Q?9etaqkz1beDIDndk5dEwi2AF9OT6fLtIDBj8UIQk656iamWkmIpZ2/9+1PS4?=
 =?us-ascii?Q?hcJRbNpTICPOaXTr2YBOF60L7psEJTnLOh1a887vCPgf98wn7xC2EJ3Qg8k6?=
 =?us-ascii?Q?j07Rr/VcSrOBZ9Um+glVTRACwluSl63UgDcqUhYHS9FsU8BVzzQJ/64G7tTR?=
 =?us-ascii?Q?hLW+kHyb/gj8hHQRYNcISQPmOCd8NCeDUl9+b6wsQPb5cBU/OKm0jPlL0lfm?=
 =?us-ascii?Q?heFZtuKfq5wQyIYrvafIOkxPc7QjSwWoqriauXM7OfyN+/OvHj0bXC3V6/Jg?=
 =?us-ascii?Q?svMu0kKryuelvWdatCKB537vay2dirSIiore8uS//xLlEUm0T4yNyMIH3Eb2?=
 =?us-ascii?Q?33zKsq4111S1COo1QVT96MWuCfUON/r22AapKKnmiM4cmZOVEyPAJaTd7aix?=
 =?us-ascii?Q?5vLRjgJ6KVSGLem56ILF+gvRkfEGBNGPMe0SdvXMnSSWWP2Zy4LcPErHYgp/?=
 =?us-ascii?Q?GVPhLec3MnnvrAnPGpDyoiH6/SPus6roEVAcExHo0uX+W/cVRV5JUjt9jJPq?=
 =?us-ascii?Q?qYcMdMHTFIUbsrv4eWnCf5z8JkW3aDP4WJAdD8pGY7kxmQ9xVAalGf0H3jov?=
 =?us-ascii?Q?RPG1+mt/bBJ+WorHXFS7k9B5V/b1rXv6lkDGekIbKKpvCzu6jCtc65A5GMal?=
 =?us-ascii?Q?B12MHa3zq9upwrrCA1hFStg49uao0zkOklSBX4F+eLQu+D0EMw9E9jWDOnWk?=
 =?us-ascii?Q?euJJIytxVEVuifGS4an6wqOgZWNZZbsxo5Hv48u2yhBBMkI9maxM3R4Lm8iu?=
 =?us-ascii?Q?npzOB91IyqtEstmDUKJGca8jGPRWPepaIUKS+7tKfLzOy3Fy2Db7JLS1Hcbo?=
 =?us-ascii?Q?eQN/fGHI7eQtfv/cusjcUzMLhLSlKXxBAGhJ2pFTLyCC90q567KdjE3tB4st?=
 =?us-ascii?Q?cWcT3ZDi0e/2ACoyV+y52RPcKUj14OwQHj2aiweDykb66L+cnT/AIw/3a9xd?=
 =?us-ascii?Q?VcJY1U0pR/Vf2rVhXYPUWHzHQjTzWMBnAfgoS/DO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4247d102-a2a7-4760-bf39-08dbe4c1eca0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 03:29:35.2638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mdjXPBCfBSeyvdu1x57TdBWRv9WBQgIQsUiwShh2qf99uEGJmIa15it5fAlclYZHhheY5Bpk0VVoq+osXCb5dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6685
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix UHBR link M/N values
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Tuesday, November 14, 2023 1:41 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix UHBR link M/N values
>=20
> The link M/N ratio is the data rate / link symbol clock rate, fix things =
up
> accordingly. On DP 1.4 this ratio was correct as the link symbol clock ra=
te in
> that case matched the link data rate (in bytes/sec units, the symbol size=
 being 8
> bits), however it wasn't correct for UHBR rates where the symbol size is =
32 bits.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++-----
>  drivers/gpu/drm/i915/display/intel_dp.c      | 24 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h      |  2 ++
>  3 files changed, 36 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 24aebdb715e7d..c059eb0170a5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2411,6 +2411,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int
> nlanes,
>  		       struct intel_link_m_n *m_n)
>  {
>  	u32 data_clock =3D bits_per_pixel * pixel_clock;
> +	u32 link_symbol_clock =3D intel_dp_link_symbol_clock(link_clock);
>  	u32 data_m;
>  	u32 data_n;
>=20
> @@ -2431,7 +2432,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int
> nlanes,
>  		    0x8000000);
>=20
>  	compute_m_n(&m_n->link_m, &m_n->link_n,
> -		    pixel_clock, link_clock,
> +		    pixel_clock, link_symbol_clock,
>  		    0x80000);
>  }
Better if this can be moved to intel_dp.c
Also per the spec the constant N values is 0x800000
The calculation of data M has dependency with DP symbol
>=20
> @@ -3943,20 +3944,23 @@ int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)  {
>  	/*
> -	 * The calculation for the data clock is:
> +	 * The calculation for the data clock -> pixel clock is:
>  	 * pixel_clock =3D ((m/n)*(link_clock * nr_lanes))/bpp
>  	 * But we want to avoid losing precison if possible, so:
>  	 * pixel_clock =3D ((m * link_clock * nr_lanes)/(n*bpp))
>  	 *
> -	 * and the link clock is simpler:
> -	 * link_clock =3D (m * link_clock) / n
> +	 * and for link freq (10kbs units) -> pixel clock it is:
> +	 * link_symbol_clock =3D link_freq * 10 / link_symbol_size
> +	 * pixel_clock =3D (m * link_symbol_clock) / n
> +	 *    or for more precision:
> +	 * pixel_clock =3D (m * link_freq * 10) / (n * link_symbol_size)
>  	 */
>=20
>  	if (!m_n->link_n)
>  		return 0;
>=20
> -	return DIV_ROUND_UP_ULL(mul_u32_u32(m_n->link_m, link_freq),
> -				m_n->link_n);
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(m_n->link_m, link_freq *
> 10),
> +				m_n->link_n *
> intel_dp_link_symbol_size(link_freq));
>  }
>=20
>  int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config) diff=
 --git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index f662d1ce5f72c..80e1e887432fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -132,6 +132,30 @@ bool intel_dp_is_uhbr(const struct intel_crtc_state
> *crtc_state)
>  	return intel_dp_is_uhbr_rate(crtc_state->port_clock);
>  }
>=20
> +/**
> + * intel_dp_link_symbol_size - get the link symbol size for a given
> +link rate
> + * @rate: link rate in 10kbit/s units
> + *
> + * Returns the link symbol size in bits/symbol units depending on the
> +link
> + * rate -> channel coding.
> + */
> +int intel_dp_link_symbol_size(int rate) {
> +	return intel_dp_is_uhbr_rate(rate) ? 32 : 10; }
As per the spec this DP symbol is 32 for DP2.0 and 8 for DP1.4

Thanks and Regards,
Arun R Murthy
--------------------
> +
> +/**
> + * intel_dp_link_symbol_clock - convert link rate to link symbol clock
> + * @rate: link rate in 10kbit/s units
> + *
> + * Returns the link symbol clock frequency in kHz units depending on
> +the
> + * link rate and channel coding.
> + */
> +int intel_dp_link_symbol_clock(int rate) {
> +	return DIV_ROUND_CLOSEST(rate * 10,
> intel_dp_link_symbol_size(rate));
> +}
> +
>  static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp)  =
{
>  	intel_dp->sink_rates[0] =3D 162000;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index e80da67554196..64dbf8f192708 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -82,6 +82,8 @@ bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
> bool intel_dp_is_edp(struct intel_dp *intel_dp);  bool intel_dp_is_uhbr_r=
ate(int
> rate);  bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
> +int intel_dp_link_symbol_size(int rate); int
> +intel_dp_link_symbol_clock(int rate);
>  bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port
> port);  enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_=
port,
>  				  bool long_hpd);
> --
> 2.39.2

