Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD726498C0
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 06:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08AB10E092;
	Mon, 12 Dec 2022 05:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B4D10E092
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 05:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670824523; x=1702360523;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MFy9dOaFmb6IiQ/YL3O4zgKlbxNImgm1o4mU7zyQ/NQ=;
 b=awh4Ts2YRjrvO2aX8C/sb/4KoFPgnJEXG9zaQmAQPU9coofrDW27UPxN
 0XINe9V3EhRD9nu3A5BDrivgzfq/BtoPvXcDDiPvvXVT9RdCl4nuPHjTq
 s0gWpXae5IHwUilYqUspOOqqeg92z4+vrAeotR8wECFnObnNj4h4qOS19
 i4AAnrr/FmNsQrCQuvBjh603QPAFkrJ1E0LvPMs4T6O2Ie9H2nIfThGJA
 Ja1Xi11qYoyje3kYi1TE0FnsOmAIVDB2f15sVklajn2urgcxGEckxtWRZ
 YGST3bzyP2F43gAqQ1fDGs8pw5KnDkNTrZWoX2P/GpdNvie4V4GrUCHCu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="298119762"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="298119762"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2022 21:55:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="648044379"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="648044379"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2022 21:55:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 11 Dec 2022 21:55:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 11 Dec 2022 21:55:16 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 11 Dec 2022 21:55:16 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 11 Dec 2022 21:55:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BN/cOuQIXxE4T3gaIkRnJjrhC+3cYJLBElWll86O6oKqtGCkQMphRJ9LGf2BlaYaMpG1ngPhA23U1VGHeUN2OinkiXQ+tU8zGPTa7f4z/2g65Bb9NgCl3TL9LfdUMOyMFrSB2rnlBBvmsYSQDUENrENVr6E7DSRxRE3T8FB6xrm6B0R1D7GMwpGG3k7UBVVeJJtnmjDjUsROrwXFxDDOjjc85ULLqTrcBw5VBU4TVxbfCYeZ45hXYne0JGlhtzJH568/1sNGhwWjc8EvUjCakCi5ZShWGLsD0j3i7gG5tsg9RIQ+ok0h1r5J83bMwbPBW0llKVtdwBC2/aq5RFvIQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f5zYRlJATERzKYwQSO1d0RFXHXY8KZN3UyXnmLi/QWQ=;
 b=KDDCyoN7dkSMmnA2/5tNV3USehvPIO0d1ELydbcu3MHlmNzYSh0+WXCmLO81XI8waqckEILJF4o+SbaKv0aUuEts1mP7Snh1t/fSgttD3DvX4GNaUPJUobArG13i+TTQ/8tqvAkHY0NNS+2BpwVfVYuGVXZcxO9PNh19XT+wnMrf8zEFu1fOJLqnvpVhp9RzF328jShrsztF0iWnwlGOH20JBtAmclYQ1TIuqD8l9E2rFdl0RyNZrxm2tbZ11ul7KaI2xPwAZNPZ3F2YoQYqQHTnIPig3/Wn6zLO7E7QbVoEM3XPRZ4KzUXSrqM1dEwqzl0OCfdvjcKt/hWuiLmNlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by DS0PR11MB6400.namprd11.prod.outlook.com (2603:10b6:8:c7::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.19; Mon, 12 Dec 2022 05:55:14 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::4e35:9914:650b:269a]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::4e35:9914:650b:269a%8]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 05:55:14 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 4/4] drm/i915/mtl: Add OA support by
 enabling 32 bit OAG formats for MTL
Thread-Index: AQHZDEPA5p7/9x8DkEKJGWhEVHV9VK5pw4Gw
Date: Mon, 12 Dec 2022 05:55:14 +0000
Message-ID: <SJ1PR11MB620472C3058BCFE33D8ABD6181E29@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
 <20221210030116.1777214-5-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221210030116.1777214-5-umesh.nerlige.ramappa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|DS0PR11MB6400:EE_
x-ms-office365-filtering-correlation-id: d7c2d20a-d744-4021-83d8-08dadc05707c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z8A3RRP3OicNNPPITfSY66d4WbOE9eA6uEZsY77AIqvNO9YTOlmfxD5rNis0BqP1O/esxy41y7Cna9+xbah5yOhGiRVW3r7mPRGnk0vKyi9pyMYXLTzrLhqIQFr9CjeqmYy7BdtuhnKb4KPXAVeFsmuI+UjXAdBcs199k835Tw1hB0GRgMLbZ8cJiZIZHMCY1Nm8pQ1ScjLXc4TFaLlzGbjiHShr74pDSLuk7BlWb2L8pxExUTq6Igc3oAOzJIPMBtdBwqJPorkDurxNI+shKXApACCtjirwssgal4ztxjcMPvsXNfgtR86CFGWK+rWIcTkx4dYRBhAFst51IeYVU9r+fyZSg05tkDh52qfXljHwr9nwPIENZcnekkDjqqi21yibJpsbfechNrD+NHBQUh7ZSCjH7MsZFyjk1yeSzF5cNxxjdUvAO+2kMYet7qbGx4nnVlacmozCCOM/Zg5fb6GDElbVQYvjBSFMjpC/ZNZrBQz+q7qkt8v3+i1byOnf99GWeBdxbWxBOGprX0+WvkOt6X9mXN6TW4cB0YDqtTQhP2hR5sUhzjevMeBTCA9F8ogmGxCNOGIc+O2d0EHVxhJMX6oalIl5+Z3rF+JbSLArkWrHssqXsKOr0Vygqw+URftbZsQdUcS+h55lPap1ug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(136003)(346002)(396003)(39860400002)(451199015)(66556008)(8676002)(66476007)(76116006)(66446008)(64756008)(66946007)(52536014)(5660300002)(966005)(478600001)(41300700001)(186003)(53546011)(7696005)(8936002)(6506007)(26005)(71200400001)(9686003)(86362001)(110136005)(33656002)(83380400001)(316002)(82960400001)(38100700002)(38070700005)(55016003)(122000001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VqdEFMqz+mn8RQv5UNViiHnsEIjIumeDb0SvN1TObsWfedrZeqmv8H5kXUCa?=
 =?us-ascii?Q?c8ioLkhbk03wfNWkVz12gv8FEYA2cnzuejJYQmp5JlE09K3RoIa/VxgE7qGX?=
 =?us-ascii?Q?dtaJ/CL9yRQThHDD/RNHGdwoRYSFLRsQ89qb0UswlLBkvg/FEmhaNPVcGV56?=
 =?us-ascii?Q?aGZRKEPcWCo8Bwou9eNFVQAwMrth6bLMA3Sghk497MU85UhHEKS9yFtYBzlg?=
 =?us-ascii?Q?E707rIFLzqkFetSkWxrelEyGW+vqPlnYIWXn5rARoFIwkOOvec2GwGevWxCF?=
 =?us-ascii?Q?joatZncOokdVQBL/X8NVhKhaufm733rPFHrL8gz18uxpAmpZl7+eP0A6WlPI?=
 =?us-ascii?Q?TiE4RzVydsRVVMNsblT3JZ92/mMcws7q6ivARoecbkG7z9lfdP9OAVY30xN7?=
 =?us-ascii?Q?uvVTOFAZwFwUW9qEtRKVdiogH37XZMQrqXPy7kqM33T6KvKyaDh6Hg3/02VT?=
 =?us-ascii?Q?qJ1NU/4kkrp1AepsI3OHmWQDxgy1H8U0Pb3Es4n8xyphR9A2ALWAHetc8EI6?=
 =?us-ascii?Q?A2FpncmsWFZE7iA6oXUduzgyyCXrtt2GeXYLFH1Jckw5z6g1FsGIHkotpTjV?=
 =?us-ascii?Q?RWMZxUREYpoRs/2lZ4rOYy2OQJ3pePBZi69tRKZZausiBOjqE/l9vLSZm278?=
 =?us-ascii?Q?N2mQvchywWKXuI5Li670DdFCvJLDIPplcInByJzH3C9LxBj22WbpeNm0xMuy?=
 =?us-ascii?Q?09SJbbGAOcll1Eo3qNcV0fCgbCk+7f5H/bGlghA3vAftqSVS5PITMsWb5OnW?=
 =?us-ascii?Q?jSmVxBjqh1lWM+/LhWqZILMGLFn/XvT3z5c43gAOyG5ohUSEc8XIt7W7G3ef?=
 =?us-ascii?Q?Y6vPcym0MUPKWLdi4y0cAaaaeZ0xY4Wrm12Z/e1pZrXOUemd0uKd0tAsD3tT?=
 =?us-ascii?Q?x3bqiypwY13J9iAfKSlxi0gHiDNXHwT9Z5HJ8FwXcDcrkSlqBWOXUYBHZ+MK?=
 =?us-ascii?Q?bYUJCP2Lgadqn5oe7znWnuxlsHrQuXcgpQ+ZsVeYNS9/prkXQsf1bNu+3lIf?=
 =?us-ascii?Q?DwjFU/3WbMfAqXGSHFRzL0H2XZ3AE2Y6h3EgqG7IpuJcRg45jDvv5gIBR3vi?=
 =?us-ascii?Q?uBS/Nwh2J80M3sNaa5bcApFgDE60sxUOLtAyMFH/87MnjCd/blNgRQela/7w?=
 =?us-ascii?Q?LJoGBsQy9SXaGNFn6A+TXAin9Cw+bsXypFhKxtYjFY/XOdM4R7K/j+jeYdtY?=
 =?us-ascii?Q?uerkz1ybU/I6zFnXA5srP7mPJOyVYfoNeciIps/S74HXZ7DUzGrVdeS00YXe?=
 =?us-ascii?Q?bNodJ3opsxYzz3jt4CMvP0+J8dpEhGacX4PBEeRJS0PBlQP02H0w0WKZ+VwA?=
 =?us-ascii?Q?E2qGelY18LKpXxkmEK31bga92ljEr9yTTQuq7MeXKs1se9Ovgw6X/D5biZRP?=
 =?us-ascii?Q?tO7SJAAQblwJAnogqQ1BSWnVe9p8DFHJNVxH2iyImJLgKX8jP2q+O8tnspCE?=
 =?us-ascii?Q?RyRhoIQWOvumThvgXdYyok+mI9dBSz6QkeF4+jtsJccX4bKZhitee0z2qKZN?=
 =?us-ascii?Q?c4a6jqzcSuNUedDacWcMVkUsF0XpJi70PR83rCLLXYvr+jJ/ofWPRDpt7/aj?=
 =?us-ascii?Q?zMbIKz5zjEQ3DMYpSkeHubQxBkuBQv0flNmqVOO0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7c2d20a-d744-4021-83d8-08dadc05707c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2022 05:55:14.6032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TK+1PxSWSILn+7Qtc7J2GAK5fUSwv7XFdFcZZAn19+qGyyxA+nWxwaSuVhyykA7cVVKOOxoEoEKJP5CyQOAZKWrDrgtpbMQlz/XDb4YVDcw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6400
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/mtl: Add OA support by
 enabling 32 bit OAG formats for MTL
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

Thanks for patch, looks like identifying MTL was needed here.
Acked-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Umesh Nerlige Ramappa
> Sent: Saturday, December 10, 2022 8:31 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915/mtl: Add OA support by enabl=
ing
> 32 bit OAG formats for MTL
>=20
> Without an entry in oa_init_supported_formats, OA will not be functional =
in
> MTL. Enable OA support by enabling 32 bit OAG formats for MTL.
>=20
> Mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-
> /merge_requests/20228
>=20
> Signed-off-by: Umesh Nerlige Ramappa
> <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_perf.c
> b/drivers/gpu/drm/i915/i915_perf.c
> index 41f6c0923ba5..824a34ec0b83 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -4776,6 +4776,7 @@ static void oa_init_supported_formats(struct
> i915_perf *perf)
>  		break;
>=20
>  	case INTEL_DG2:
> +	case INTEL_METEORLAKE:
>  		oa_format_add(perf,
> I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
>  		oa_format_add(perf,
> I915_OA_FORMAT_A24u40_A14u32_B8_C8);
>  		break;
> --
> 2.38.1

